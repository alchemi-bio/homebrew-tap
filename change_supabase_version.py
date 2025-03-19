#!/usr/bin/env python3

import sys
import re
import requests

def get_checksums(version):
    """Fetch checksums from GitHub release."""
    checksums_url = f"https://github.com/supabase/cli/releases/download/v{version}/supabase_{version}_checksums.txt"
    response = requests.get(checksums_url)
    if response.status_code != 200:
        print(f"Error: Could not fetch checksums for version {version}")
        sys.exit(1)
    
    checksums = {}
    for line in response.text.splitlines():
        if line.strip():
            parts = line.split()
            if len(parts) >= 2:
                sha256, filename = parts[0], parts[1]
                checksums[filename] = sha256
    
    return checksums

def update_formula(version, checksums):
    """Update the supabase.rb formula with new version and checksums."""
    with open('supabase.rb', 'r') as f:
        content = f.read()
    
    # Update version
    content = re.sub(r'version "[\d.]+"', f'version "{version}"', content)
    
    # Find all platforms in the file
    platforms = re.findall(r'supabase_([\w_]+)\.tar\.gz', content)
    
    # Update all URLs and their checksums
    for platform in platforms:
        filename = f"supabase_{platform}.tar.gz"
        if filename in checksums:
            # Update URL with new version
            content = re.sub(
                rf'(url "https://github\.com/supabase/cli/releases/download/)v[\d.]+(/supabase_{platform}\.tar\.gz")',
                f'\\1v{version}\\2',
                content
            )
            
            # Update SHA256 for this platform
            content = re.sub(
                rf'url "https://github\.com/supabase/cli/releases/download/v{version}/supabase_{platform}\.tar\.gz"\s+sha256 "[^"]+"',
                f'url "https://github.com/supabase/cli/releases/download/v{version}/supabase_{platform}.tar.gz"\n      sha256 "{checksums[filename]}"',
                content
            )
    
    with open('supabase.rb', 'w') as f:
        f.write(content)

def main():
    if len(sys.argv) != 2:
        print("Usage: python update_version.py <version>")
        print("Example: python update_version.py 2.19.0")
        sys.exit(1)
    
    version = sys.argv[1]
    print(f"Updating to version {version}...")
    
    checksums = get_checksums(version)
    update_formula(version, checksums)
    print("Update completed successfully!")

if __name__ == "__main__":
    main()