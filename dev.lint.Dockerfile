FROM python:3.8-alpine

LABEL maintainer="andrew@nijmeh.xyz"
LABEL description="A library to simulate & visualize proteins, and protein folding."

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN python -m pip install --upgrade pip 
RUN pip install -r requirements.txt

WORKDIR /usr/bin
RUN curl -sL -o hadolint "https://github.com/hadolint/hadolint/releases/download/v1.17.6/hadolint-$(uname -s)-$(uname -m)"

WORKDIR /usr/src/app

CMD ["make", "local-lint"]