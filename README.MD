This is a collection of useful bash scripts.

# Installation

First, clone this repository inside your home directory (`~/bash_scripts`). Then, place the lines below inside your `.bashrc` file.

It will recursively read all scripts inside your bash_scripts folder and run them.

```bash
# Automatically execute scripts in bash_scripts directory and subdirectories
find ~/bash_scripts -type f -name '*.sh' -exec chmod +x {} +  # Ensure all .sh files are executable
while IFS= read -r script; do
    if [ -x "$script" ]; then
        . "$script"
    fi
done < <(find ~/bash_scripts -type f -name '*.sh')
```
