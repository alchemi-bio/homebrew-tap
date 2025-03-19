# Homebrew Tap for Version-Controlled CLI Tools

This repository contains a Homebrew tap that provides version-controlled installations of various CLI tools. Currently, it includes the Supabase CLI, with plans to add more tools in the future.

## Purpose

The main purpose of this tap is to ensure consistent versions of CLI tools across our team and projects. By pinning specific versions, we can:

- Maintain consistency across development environments
- Prevent unexpected issues from version mismatches
- Have better control over tool updates
- Ensure reproducible builds and development workflows

## Current Tools

### Supabase CLI

Currently supports version 2.12.1 of the Supabase CLI, with support for:
- macOS (arm64 and amd64)
- Linux (arm64 and amd64)

## Usage

To use this tap, you can add it to your Homebrew installation:


Then install the Supabase CLI:

```bash
brew install alchemi-bio/tap/supabase
```

## Version Management

The repository includes a Python script (`change_supabase_version.py`) to help manage version updates. To update the version of any tool:

```bash
python change_supabase_version.py <version>
```

For example, to update Supabase CLI to version 2.15.1:
```bash
python change_supabase_version.py 2.15.1
```

The script will automatically update the formula file with the new version



