FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    texlive-science \
    biber \
    latexmk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/project

COPY . .

RUN chmod +x reproduce.sh

CMD ["bash", "reproduce.sh"]
