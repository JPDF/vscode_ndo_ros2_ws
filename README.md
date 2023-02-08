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

## Troubleshooting

### An error occured setting up the container
This seems to be a bug in new version of Docker Desktop where some settings in `%userprofile%/.docker/contexts/meta/.../meta.json` are NULL. A workaround is to delete the folder `%userprofile%/.docker/contexts` and restart Docker daemon. See [bug report](https://github.com/docker/compose/issues/9956) for more information.
