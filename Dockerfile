FROM docker.io/rocm/pytorch:rocm7.0_ubuntu24.04_py3.12_pytorch_release_2.8.0

ENV COMFYUI_PATH=/workload/ComfyUI

#git clone comfyui current version
RUN git clone https://github.com/comfyanonymous/ComfyUI.git $COMFYUI_PATH && \
    git clone https://github.com/ltdrdata/ComfyUI-Manager $COMFYUI_PATH/custom_nodes/comfyui-manager

#update pip
RUN pip install --upgrade pip

#install requirements for comfyui and comfyui manager
RUN pip install -r $COMFYUI_PATH/requirements.txt && pip install -r $COMFYUI_PATH/custom_nodes/comfyui-manager/requirements.txt

# vae fix
ENV MIOPEN_FIND_MODE=2
# set to RX 9700
ENV HSA_OVERRIDE_GFX_VERSION=12.0.1

#run, with tweaks to optimize VRAM usage
CMD python $COMFYUI_PATH/main.py --listen 0.0.0.0 --lowvram --use-split-cross-attention --disable-smart-memory
