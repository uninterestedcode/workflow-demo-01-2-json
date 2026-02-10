# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown_registry custom node 'Note' because no aux_id (GitHub repo) or registry id was provided.
# Skipping installation for this node. If you have a GitHub repo for this node, add a line like:
# RUN git clone https://github.com/<owner>/<repo> /comfyui/custom_nodes/<repo>

# download models into comfyui
# No models specified in the workflow
# RUN # Could not find URL for <model-name>

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
