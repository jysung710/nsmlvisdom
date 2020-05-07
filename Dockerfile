FROM nvcr.io/nvidia/pytorch:20.03-py3
MAINTAINER Jinyoung Sung <jysung710@kaist.ac.kr>

RUN pip install --upgrade pip
RUN pip install torchvision visdom

RUN python -c "from visdom.server import download_scripts; download_scripts()"

ENV PORT=8097 \
    ENV_PATH="~/.visdom/" \
    LOGGING_LEVEL=INFO

EXPOSE $PORT

CMD python -m visdom.server -port ${PORT} -env_path ${ENV_PATH} -logging_level ${LOGGING_LEVEL}
