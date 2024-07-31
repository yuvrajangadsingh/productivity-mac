# Git Utility Scripts and Zsh Configuration

This repository contains a collection of Git utility scripts and a customized Zsh configuration file to enhance your development workflow.

## Contents

1. [Scripts](#scripts)
2. [Zsh Configuration](#zsh-configuration)
3. [Setup](#setup)
4. [Usage](#usage)
5. [Dependencies](#dependencies)
6. [Customization](#customization)

## Scripts

### Git Scripts

- `git_clone_without_ssl.sh`: Clones a repository without SSL verification.
- `git_pull.sh`: Fetches and pulls changes from the current branch.
- `git_master.sh`: Switches to the master branch, fetches, and pulls changes.
- `git_main.sh`: Switches to the main branch, fetches, and pulls changes.
- `git_fetch_pull.sh`: Fetches and pulls changes.
- `git_push.sh`: Adds all changes, commits with a message, and pushes to the current branch.

## Zsh Configuration

The `.zshrc` file includes:

- Powerlevel10k prompt configuration
- Custom PATH modifications
- Environment variable setup for various development tools
- Git branch display in terminal prompt
- Numerous aliases for common development tasks
- NVM (Node Version Manager) setup
- Google Cloud SDK configuration
- Bun and Docker path additions

### Key Aliases

- Git operations (e.g., `gpom`, `gco`, `ga`)
- Node.js and npm commands (e.g., `nnrd`, `nl`, `nrt`)
- Yarn commands (e.g., `yyd`, `yb`)
- Maven and Spring Boot commands (e.g., `s`, `mcp`, `mt`)
- Python commands (e.g., `pi`, `pap`)

## Setup

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/your-repo-name.git
   ```
2. Copy the scripts to your `~/scripts/` directory:
   ```
   cp your-repo-name/scripts/* ~/scripts/
   ```
3. Copy the `.zshrc` file to your home directory or merge its contents with your existing `.zshrc`:
   ```
   cp your-repo-name/.zshrc ~/.zshrc
   ```
4. Restart your terminal or run:
   ```
   source ~/.zshrc
   ```

## Usage

### Git Scripts

- Clone without SSL:
  ```
  sh ~/scripts/git_clone_without_ssl.sh <repository_url>
  ```
- Pull changes:
  ```
  sh ~/scripts/git_pull.sh
  ```
- Switch to master and pull:
  ```
  sh ~/scripts/git_master.sh
  ```
- Switch to main and pull:
  ```
  sh ~/scripts/git_main.sh
  ```
- Fetch and pull:
  ```
  sh ~/scripts/git_fetch_pull.sh
  ```
- Push changes:
  ```
  sh ~/scripts/git_push.sh "Commit message"
  ```

### Zsh Aliases

Use the aliases defined in the `.zshrc` file for quick access to common commands. For example:

- `gpom`: Git pull origin master
- `gco`: Git checkout
- `ga`: Git add, commit, and push
- `s`: Run Spring Boot application
- `pi`: pip3 install

## Dependencies

- Zsh
- Git
- Node.js and npm
- Java and Maven
- Python
- Powerlevel10k (for prompt customization)
- Various development tools (as referenced in the `.zshrc` file)

Ensure you have the necessary tools installed for all features to work correctly.

## Customization

Feel free to modify the scripts and `.zshrc` file to suit your specific needs. You can add new aliases, adjust PATH variables, or include additional configurations as required.

To customize:

1. Open the `.zshrc` file in your preferred text editor.
2. Modify existing aliases or add new ones.
3. Adjust PATH variables or add new environment variables as needed.
4. Save the file and run `source ~/.zshrc` to apply changes.

## Contributing

If you have suggestions for improvements or bug fixes, please feel free to open an issue or submit a pull request.

## License

This project is open-source and available under the [MIT License](LICENSE).
sad
