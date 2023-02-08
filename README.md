# VSCode NDO ROS2 Workspace

Set up NDO development workspace using ROS2 with VSCode as your IDE.

See [how Allison Thackston develop with vscode and ros2](https://www.allisonthackston.com/articles/vscode_docker_ros2.html) for a more in-depth look on how to use this workspace.

## Features

### Style

ROS2-approved formatters are included in the IDE.  

* **c++** uncrustify; config from `ament_uncrustify`
* **python** autopep8; vscode settings consistent with the [style guide](https://index.ros.org/doc/ros2/Contributing/Code-Style-Language-Versions/)

### Tasks

There are many pre-defined tasks, see [`.vscode/tasks.json`](.vscode/tasks.json) for a complete listing. Here are a few useful tasks:

| Task | Description |
| --- | --- |
| new ament_cmake package | Create a new ROS cpp package from a template. |
| new ament_python package | Create a new ROS python package from a template. |
| import from workspace file | Use vcs to import modules specified by a workspace/rosinstall file. |
| update workspace file | Use vcs to update repositories in src to workspace file. |
| install dependencies | Install all dependencies specified in the workspaces package.xml files. |

### Debugging

Debugging for python files and gdb for cpp programs.  See [`.vscode/launch.json`](.vscode/launch.json) for configuration details.

### Continuous Integration

Continuous integration set up. See [`.github/workflows/ros.yaml`](/.github/workflows/ros.yaml).

## Prerequisites

You should already have Docker and VSCode with the remote containers plugin installed on your system.

* [docker](https://docs.docker.com/engine/install/)
* [vscode](https://code.visualstudio.com/)
* [vscode remote containers plugin](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Usage
### Clone repository
Now you can clone your repo as normal

![clone_repo](https://user-images.githubusercontent.com/6098197/91332342-e4e0f680-e780-11ea-9525-49b0afa0e4bb.png)
### Open repository in VSCode
Now that you've cloned this repository onto your computer, you can open it in VSCode (File->Open Folder). 

When you open it for the first time, you should see a little popup that asks you if you would like to open it in a container.  Say yes!

![template_vscode](https://user-images.githubusercontent.com/6098197/91332551-36898100-e781-11ea-9080-729964373719.png)

If you don't see the pop-up, click on the little green square in the bottom left corner, which should bring up the container dialog

![template_vscode_bottom](https://user-images.githubusercontent.com/6098197/91332638-5d47b780-e781-11ea-9fb6-4d134dbfc464.png)

In the dialog, select "Remote Containers: Reopen in container"

VSCode will build the dockerfile inside of `.devcontainer` for you.  If you open a terminal inside VSCode (Terminal->New Terminal), you should see that your username has been changed to `ros`, and the bottom left green corner should say "Dev Container"

![template_container](https://user-images.githubusercontent.com/6098197/91332895-adbf1500-e781-11ea-8afc-7a22a5340d4a.png)
## Troubleshooting

### An error occured setting up the container
This seems to be a bug in new version of Docker Desktop where some settings in `%userprofile%/.docker/contexts/meta/.../meta.json` are NULL. A workaround is to delete the folder `%userprofile%/.docker/contexts` and restart Docker daemon. See [bug report](https://github.com/docker/compose/issues/9956) for more information.
