## 1. Git Setup

---

## Situate yourself in the terminal
```bash
pwd
ls
```

**Stop and consider:** Are we in the correct working directory to continue?

---

### Check Git Version
First, check if Git is installed:
```bash
git --version
```

### Configure identity
Configure your identity (required for commits):
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Configure text editor
Configure your text editor (VSCode is much easier to use than command-line editors):
```bash
git config --global core.editor "code --wait"
```

(🍎⚠️ For MacOS users) You may need to enable the VSCode command: [Install the 'code' command for MacOS](https://code.visualstudio.com/docs/setup/mac#_configure-the-path-with-vs-code)

### Connect to GitHub.com
Login to GitHub.com in your command line
```bash
git credential-manager github login
```

Then test your login with
```bash
git credential-manager github list
```


#### Troubleshooting GitHub connection
If the login browser window does not appear, or it doesn't work, try running:
```bash
git credential-manager github login --no-ui --device
```

(🍎⚠️ For MacOS users) If you get this error message: `'credential-manager' is not a git command`
* Make sure Git Credential Manager is installed
* Run `brew install --cask git-credential-manager`
* If this still doesn't work, please follow along using SSH authentication. Note that your Git commands will be different than the instructor's.
    1. https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys
    2. https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
    3. https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
    4. https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection

### Verify configuration
Verify your configuration:
```bash
git config --list
```

