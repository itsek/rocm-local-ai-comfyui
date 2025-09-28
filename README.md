# rocm-local-ai-comfyui
run rocm container with comfyui, tuned for AMD radeon 9700 16GB

Dockerfile builds a local image, to run with podman/docker:
    podman run --device /dev/kfd --device /dev/dri -v rocm7_and_comfyui:/workload/ComfyUI/ -p 8188:8188 --name rocm7_comfyui --replace --network=local-ai localhost/rocm7_comfyui

