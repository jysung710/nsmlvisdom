FROM nsml/default_ml:latest
MAINTAINER Jinyoung Sung <jysung710@kaist.ac.kr>

RUN pip install torchvision visdom
RUN python -m visdom.server
