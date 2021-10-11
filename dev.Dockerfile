FROM python:3.8-alpine

LABEL maintainer="andrew@nijmeh.xyz"
LABEL description="A library to simulate & visualize proteins, and protein folding."

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN python -m pip install --upgrade pip

CMD ["make", "local-test"]