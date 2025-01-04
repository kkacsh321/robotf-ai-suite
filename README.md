<!-- markdownlint-disable-file MD013-->
# RoboTF AI Suite

![RoboTF AI Suite](images/robotf-suite.jpg)

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started-🧹)
  - [LocalAI with Docker Compose](#localai-with-docker-compose-🖤)
  - [ComfyUI with Docker Compose](#comfyui-with-docker-compose-🏞️)
  - [Open WebUI with Docker Compose](#open-webui-with-docker-compose-🏞️)
- [Contact](#contact)
- [Contributing](#contributing-👥)
- [To-Do](#to-do-️☑️)
- [License](#license-📜)
- [Acknowledgements](#acknowledgments-🏆)

## Description

Welcome to RoboTF's AI Suite of tools for running Large Language Models (LLM's) locally or self-hosted. This will be a collection of Docker Compose and other such resources for helping people get start running such tools as LocalAI, ComfyUI, Open WebUI, and more!

Check out the Youtube series for Build an Ubuntu AI/LLM Server from scratch here: [https://www.youtube.com/@RoboTFAI](https://www.youtube.com/@RoboTFAI)

## Getting Started 🧹

Clone the Repo:

```bash
git clone https://github.com/kkacsh321/robotf-ai-suite.git

cd robotf-ai-suite
```

```bash
make help
```

```bash
Usage:
  make <target>

Targets:
  localai-up  Start LocalAI in the background
  localai-down  Stop the LocalAI
  localai-restart  Restart LocalAI container
  localai-exec  Exec into the LocalAI container
  localai-logs  Get logs from LocalAI container
  comfyui-up  Start ComfyUI in the background
  comfyui-down  Stop the ComfyUI stack
  comfyui-restart  Restart ComfyUI container
  comfyui-exec  Exec into the ComfyUI container
  comfyui-logs  Get logs from ComfyUI container
  openwebui-up  Start Open-WebUI in the background
  openwebui-down  Stop the Open-WebUI stack
  openwebui-restart  Restart Open-WebUI container
  openwebui-exec  Exec into the Open-WebUI container
  openwebui-logs  Get logs from Open-WebUI container
  help        show this usage
```

### LocalAI with Docker Compose 🖤

Edit the `LocalAI/localai-compose.yaml` to your liking and match the volume mount, and environment variables you want to use. See the docs at [localai](https://localai.io)

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make localai-up
```

To stop it

```bash
make localai-down
```

**Warning LocalAI will download several models on it's first startup to handle Chat, Image Generation, etc, etc as this calls the AIO image. See more info at [localai](https://localai.io)

This calls docker-compose under the hood with the Makefile, to see more commands type

```bash
make help
```

### ComfyUI with Docker Compose 🖤

Edit the `ComfyUI/comfyui-compose.yaml` to your liking and match the volume mount, and environment variables you want to use. See the docs at [comfyui](https://github.com/comfyanonymous/ComfyUI) and [YanWenKun](https://github.com/YanWenKun/ComfyUI-Docker) for docs on the container.

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make comfyui-up
```

To stop it

```bash
make comfyui-down
```

**Warning ComfyUI will download several models on it's first startup to support Image Generation See more info at [YanWenKun](https://github.com/YanWenKun/ComfyUI-Docker)

This calls docker-compose under the hood with the Makefile, to see more commands type

```bash
make help
```

Visit http://<your server ip>:8188 to see the ComfyUI UI

### Open WebUI with Docker Compose 🖤

Edit the `Open-WebUI/openwebui-compose.yaml` to your liking and match the volume mount, and environment variables you want to use. See the docs at [openwebui](https://github.com/open-webui)

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make openwebui-up
```

To stop it

```bash
make openwebui-down
```

This calls docker-compose under the hood with the Makefile, to see more commands type

```bash
make help
```

## Contact

<robot@robotf.ai>

## Contributing 👥

Want to add your own compose stack or adjustments to these files:

Fork the repository.
Create a new branch

```bash
git checkout -b feature/your-awesome-feature

# Make your changes.

# Commit your changes 
git commit -m 'My awesome feature does X'

# Push to the branch 
git push origin feature/your-awesome-feature

# Open a pull request and prepare to share your changes with the world after approval from codeowners.
```

## To-Do ☑️

Lots better docs
More services such as Flowise, n8n, etc

## License 📜

This project is licensed under the MIT License - see the LICENSE file for details, but be warned: using this software may result in unintended consequences.

## Acknowledgments 🏆

Shoutout to LocalAI for powering my Local LLM's [localai](https://localai.io)

Thanks to [openwebui](https://github.com/open-webui)

We love [comfyui](https://github.com/comfyanonymous/ComfyUI) and [YanWenKun](https://github.com/YanWenKun/ComfyUI-Docker) for maintaining the docker images.

Shoutout to [j4ys0n](https://github.com/j4ys0n/local-ai-stack) Who gave some original inspiration for this. See his repo in link.