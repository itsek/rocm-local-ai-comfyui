# rocm-local-ai-comfyui
run rocm container with comfyui, tuned for AMD radeon 9700 16GB

Dockerfile builds a local image, to run with podman/docker:
    
`podman run --device /dev/kfd --device /dev/dri -v rocm7_and_comfyui:/workload/ComfyUI/ -p 8188:8188 --name rocm7_comfyui --replace --network=local-ai localhost/rocm7_comfyui`

<img width="1024" height="1024" alt="ComfyUI_00031_" src="https://github.com/user-attachments/assets/7f60cf12-9460-4928-b695-cda13a4bee92" />

Tutorial on How to use ComfyUI from this Dude:
https://www.youtube.com/watch?v=NhGtBL4fi0c
