# Personal devcontainers

## How to use with VSCode

1. Install & start Docker
2. Install [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) extension
3. Copy `.env.schema`'s content into `.env` and replace the dummy env variables
4. Copy `devcontainer.schema.json`'s content into `devcontainer.json` and replace the dummy values
5. Set the `workspaceFolder` value in `devcontainer.json` to the same as `CONTAINER_WORKSPACE_FOLDER` in `.env`
6. Disable git's filemode-change tracking to make life easier when working on both Windows and Unix systems

   `git config --add core.filemode false`
7. Clone the repo into a `.devcontainers` folder at the root of your project
8. Copy `.gitattributes` to the root folder
9. Run `Dev Containers: Reopen in Container` VSCode command
