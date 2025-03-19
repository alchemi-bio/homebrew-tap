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
    # Read the formula file
    with open('supabase.rb', 'r') as f:
        lines = f.readlines()
    
    # Process each line
    i=0
    while i<len(lines):
        # Update version
        if 'version "' in lines[i]:
            lines[i] = re.sub(r'version "[\d.]+"', f'version "{version}"', lines[i])
        
        # Update URL and extract platform
        elif 'url "https://github.com/supabase/cli/releases/download/' in lines[i]:
            # Extract platform from current URL
            url_match = re.search(r'supabase_([\w_]+)\.tar\.gz', lines[i])
            if url_match:
                platform = url_match.group(1)
                filename = f"supabase_{platform}.tar.gz"
                
                # Update URL with new version
                lines[i] = re.sub(
                    r'url "https://github.com/supabase/cli/releases/download/v[^/]+/[^"]+"',
                    f'url "https://github.com/supabase/cli/releases/download/v{version}/{filename}"',
                    lines[i]
                )
                
                # Update the corresponding checksum (next line)
                if i+1 < len(lines) and 'sha256 "' in lines[i+1] and filename in checksums:
                    lines[i+1] = re.sub(
                        r'sha256 "[^"]+"',
                        f'sha256 "{checksums[filename]}"',
                        lines[i+1]
                    )
                    i+=1 # skip next line
        i+=1
    # Write the updated formula file
    with open('supabase.rb', 'w') as f:
        f.writelines(lines)

def main():
    if len(sys.argv) != 2:
        print("Usage: python change_version.py <version>")
        print("Example: python change_version.py 2.15.1")
        sys.exit(1)
    
    version = sys.argv[1]
    print(f"Updating to version {version}...")
    
    checksums = get_checksums(version)
    update_formula(version, checksums)
    print("Update completed successfully!")

if __name__ == "__main__":
    main()