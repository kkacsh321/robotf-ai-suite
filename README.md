<!-- markdownlint-disable-file MD013-->
# RoboTF AI Suite

![RoboTF AI Suite](images/robotf-suite.jpg)

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started-🧹)
  - [Ubuntu Server 24.04 Bootstrap Guide](#ubuntu-server-2404-bootstrap-guide)
  - [LocalAI with Docker Compose](#localai-with-docker-compose)
  - [ComfyUI with Docker Compose](#comfyui-with-docker-compose)
  - [Open WebUI with Docker Compose](#open-webui-with-docker-compose)
  - [Flowise with Docker Compose](#flowise-with-docker-compose)
  - [Postgres with Docker Compose](#postgres-with-docker-compose)
  - [n8n with Docker Compose](#n8n-with-docker-compose)
  - [ChromaDB with Docker Compose](#chromadb-with-docker-compose)
  - [Unstructured API with Docker Compose](#untructured-api-with-docker-compose)
- [Contact](#contact)
- [Contributing](#contributing-👥)
- [To-Do](#to-do-️☑️)
- [License](#license-📜)
- [Acknowledgements](#acknowledgments-🏆)

## Description

Welcome to RoboTF's AI Suite of tools for running Large Language Models (LLM's) locally or self-hosted. This will be a collection of Docker Compose and other such resources for helping people get start running such tools as LocalAI, ComfyUI, Open WebUI, n8ns, Chromadb, postgres, Unstructured API, and more for full stack of AI/LLM related tools.

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
  flowise-up  Start Flowise in the background
  flowise-down  Stop the Flowise stack
  flowise-restart  Restart Flowise container
  flowise-exec  Exec into the Flowise container
  flowise-logs  Get logs from Flowise container
  postgres-up  Start Postgres in the background
  postgres-down  Stop the Postgres stack
  postgres-restart  Restart Postgres container
  postgres-exec  Exec into the Postgres container
  postgres-logs  Get logs from Postgres container
  chroma-up   Start ChromaDB in the background
  chroma-down  Stop the ChromaDB stack
  chroma-restart  Restart ChromaDB container
  chroma-exec  Exec into the ChromaDB container
  chroma-logs  Get logs from ChromaDB container
  unstructured-up  Start Unstructured-API in the background
  unstructured-down  Stop the Unstructured-API stack
  unstructured-restart  Restart Unstructured-API container
  unstructured-exec  Exec into the Unstructured-API container
  unstructured-logs  Get logs from Unstructured-API container
  all-up      Turns on all stacks
  all-down    Turns off all stacks
  help        show this usage
```

Application URLs:

LocalAI `http://<your server ip>:8080`

ComfyUI `http://<your server ip>:8188`

Open WebUI `http://<your server ip>:3000`

Flowise `http://<your server ip>:3001`

n8n `http://<your server ip>:5678`


Postgres on `<your-server-ip>:5432`

ChromaDB on `<your-server-ip>:8000`

Unstructured API on `<your-server-ip>:8003`

### Ubuntu Server 24.04 Bootstrap Guide

See the guide on setting up a fresh Ubuntu server 24.04 with all Nvidia drivers, cuda, toolkit, etc, etc at [Bootstrap Guide](/Ubuntu-bootstrap/Bootstrap.md)

Once you have your server up with all dependencies move on to the LocalAI with Docker Compose below.

### LocalAI with Docker Compose

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

Visit `http://<your server ip>:8080` to see the LocalAI UI

### ComfyUI with Docker Compose

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

Visit `http://<your server ip>:8188` to see the ComfyUI Application

```bash
make help
```

Visit http://<your server ip>:8188 to see the ComfyUI UI

### Open WebUI with Docker Compose

Edit the `Open-WebUI/openwebui-compose.yaml` to your liking and match the volume mount, and environment variables you want to use. See the docs at [openwebui](https://github.com/open-webui)

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make openwebui-up
```

To stop it

```bash
make openwebui-down
```

Visit `http://<your server ip>:3000` to see the Open WebUI

### Flowise with Docker Compose

Edit the `Flowise/flowise-compose.yaml` to your liking and match the volume mount, and environment variables you want to use. See the docs at [Flowise](https://github.com/FlowiseAI/Flowise)

Flowise requires a local postgres instance for this run, therefore there is Postgres Docker-compose stack that will start-up first, along with LocalAI before Flowise starts.

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make flowise-up
```

To stop it

```bash
make flowise-down
```

Visit http://<your server ip>:3001 to see the Flowise UI

### Postgres with Docker Compose

Edit the `Postgres/postgres-compose.yaml` to your liking and match the volume mount, and environment variables you want to use.

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make postgres-up
```

To stop it

```bash
make postgres-down
```

Postgres on `<your-server-ip>:5432`

### n8n with Docker Compose

Edit the `n8n/n8n-compose.yaml` to your liking and match the volume mount, and environment variables you want to use.

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make n8n-up
```

To stop it

```bash
make n8n-down
```

Visit `http://<your server ip>:5678` to see the n8n UI

### ChromaDB with Docker Compose

Edit the `ChromaDB/chromadb-compose.yaml` to your liking and match the volume mount, and environment variables you want to use.

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make chroma-up
```

To stop it

```bash
make chroma-down
```
ChromaDB available on `<your-server-ip>:8000`

### Untructured API with Docker Compose

Edit the `Unstructured-API/unstructuredapi-compose.yaml` to your liking and match the volume mount, and environment variables you want to use.

Set Up Docker Compose: Ensure you have Docker and Docker Compose installed, then run:

```bash
make unstructured-up
```

To stop it

```bash
make unstructured-down
```

Unstructured API available on `<your-server-ip>:8003`

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

More services such as prometheus, grafana, robotf testing, etc

## License 📜

This project is licensed under the MIT License - see the LICENSE file for details, but be warned: using this software may result in unintended consequences.

## Acknowledgments 🏆

Shoutout to LocalAI for powering my Local LLM's [localai](https://localai.io)

Thanks to [openwebui](https://github.com/open-webui) for providing a great AI/LLM chat interface

[flowise](https://github.com/FlowiseAI/Flowise) is a great project for building AI/LLM workflows and agents!

We love [comfyui](https://github.com/comfyanonymous/ComfyUI) and [YanWenKun](https://github.com/YanWenKun/ComfyUI-Docker) for maintaining the docker images.

[n8n](https://docs.n8n.io/) is fun and awesome to work with

[chroma](https://docs.trychroma.com/docs/overview/introduction) is a fast and easy to use AI application database for embedding, vector, and much more!

[unstructured-api](https://docs.unstructured.io/welcome) is great at ingesting and processing unstructured documents for Retrieval Augmented Generation (RAG)

Shoutout to [j4ys0n](https://github.com/j4ys0n/local-ai-stack) Who gave some original inspiration for this. See his repo in link.