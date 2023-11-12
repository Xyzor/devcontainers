# Personal devcontainers

## How to use with VSCode

1. Install & start Docker
2. Install [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) extension
3. Copy `.env.schema`'s content into `.env` and replace the dummy env variables
4. Set the `workspaceFolder` value in `devcontainer.json` to the same as `CONTAINER_WORKSPACE_FOLDER` in `.env`
5. Run `Dev Containers: Reopen in Container` VSCode command
