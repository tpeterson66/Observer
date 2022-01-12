# Docker Image for Azure DevOps Private Build Agents

Azure supports private build agents which can be used to gain access to private resources. This can be used if the environment is using private endpoint and you need a solution to run Terraform from the local vNet. This can also be used to eliminate the need to purchase additional public build agents.

## Docker Image Build

Commands and steps required to build the image locally

```bash
docker build -t dockeragent:latest .
```

## Docker Image Run

Commands and steps to start the image locally

```bash
docker run -e AZP_URL=<Azure DevOps instance> -e AZP_TOKEN=<PAT token> -e AZP_AGENT_NAME=mydockeragent --name agent01 dockeragent:latest
docker run -e AZP_URL=https://dev.azure.com/CoretekCloud/ -e AZP_TOKEN=<PAT TOKEN> -e AZP_AGENT_NAME=docker-agent-01 -e AZP_POOL=docker-build-agents --name agent01 dockeragent:latest
```
