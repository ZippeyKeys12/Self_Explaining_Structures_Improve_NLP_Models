FROM nvcr.io/nvidia/pytorch:22.02-py3

COPY ./ /opt/app/

WORKDIR /opt/app

RUN sed -i -e 's/torch == 1.6.0//g' requirements.txt && \
    pip --no-cache-dir install -r requirements.txt

RUN apt-get update && \
    apt-get install -y --no-install-recommends git-lfs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git lfs install && \
    git clone https://huggingface.co/roberta-base && \
    cd roberta-base && \
    git reset --hard 2ecd732fb792ee9de217a2f7a7154e044cf3d782 && \
    sed -i -e 's/"num_labels": 2/"num_labels": 5/g' config.json

RUN wget https://nlp.stanford.edu/projects/snli/snli_1.0.zip && \
    unzip snli_1.0.zip

RUN mv explain/trainer.py trainer.py && \
    mkdir checkpoints span
