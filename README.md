<!-- markdownlint-disable-file MD013-->
# RoboTF AI Suite

![RoboTF AI Suite](images/robotf-suite.jpg)

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started-🧹)
  - [LocalAI with Docker Compose](#local-ai-with-docker-compose-🖤)
- [Contact](#contact)
- [Contributing](#contributing-👥)
- [License](#license-📜)
- [Acknowledgements](#acknowledgments-🏆)

## Description

Welcome to RoboTF's AI Suite of tools for running Large Language Models (LLM's) locally or self-hosted. This will be a collection of Docker Compose and other such resources for helping people get start running such tools as LocalAI, ComfyUI, and more!

## Getting Started 🧹

Choose your path to horror story glory with one of these three enchanting options:

### Local AI with Docker Compose 🖤

Clone the Repo:

```bash
git clone https://github.com/kkacsh321/robotf-ai-suite.git

cd robotf-ai-suite
```

Edit the `LocalAI/localai-compose.yaml` to your liking and match the volume mount, and environment variables you want to use. See the docs at ![localai](https://localai.io)
Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make localai-up
```

**Warning LocalAI with download several models on it's first startup to handle Chat, Image Generation, etc, etc as this calls the AIO image. See more info at ![localai](https://localai.io)

This calls docker-compose under the hood with the Makefile, to see more commands type

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
  help        show this usage
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

## License 📜

This project is licensed under the MIT License - see the LICENSE file for details, but be warned: using this software may result in unintended consequences.

## Acknowledgments 🏆

Shoutout to LocalAI for powering my Local LLM's [localai](https://localai.io)


