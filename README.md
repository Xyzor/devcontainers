# Devcontainer for Node.js

## Outcome

After playing with it for a while, one issue prevented me from committing to this tool.  
Mounting a Windows folder onto a Linux container results in a terrible reading speed (git status ~10 seconds on a medium-sized repo).  
The recommendation was to have the source in a folder that's "Linux compatible" by either using WSL or adjusting the mounting method in the docker-compose.  
For me, that's too much trouble.

It also seems that Webpack's hot-module-replacement feature doesn't work in a devcontainer out of the box.

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
