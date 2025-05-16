# /bin/bash

# Install Ollama (if you haven’t already):
curl -fsSL https://ollama.com/install.sh | sh

# Ensure Ollama is installed by checking:
ollama --version

# Pull the smallest model available:
ollama pull tinyllama

# Verify it’s ready:
ollama list

# Set the environment variables:
export KUBECTL_AI_ENDPOINT="http://localhost:11434/api/chat"
export KUBECTL_AI_PROVIDER="ollama"

echo $KUBECTL_AI_ENDPOINT
echo $KUBECTL_AI_MODEL
echo $KUBECTL_AI_PROVIDER


# Run Ollama so it listens for requests:
ollama serve


kubectl ai "Explain this Kubernetes deployment"


ollama pull mistral-small
ollama list
ollama run mistral-small "Hello!"
export KUBECTL_AI_MODEL="mistral-small"
kubectl-ai --llm-provider=ollama --model=mistral-small "Explain this Kubernetes deployment"





