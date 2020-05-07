FROM nvcr.io/nvidia/pytorch:20.03-py3
MAINTAINER Jinyoung Sung <jysung710@kaist.ac.kr>

RUN pip install --upgrade pip
RUN pip install torchvision visdom
CMD ["python", "-m", "visdom.server"]
