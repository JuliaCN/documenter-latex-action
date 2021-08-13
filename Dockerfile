# adapted from https://github.com/JuliaDocs/DocumenterLaTeX.jl/blob/master/docker/Dockerfile
FROM juliadocs/documenter-latex:0.1

RUN apt-get update && \
    apt-get install --no-install-recommends -qy \
    texlive-full \
    texlive-xetex \
    texlive-lang-chinese && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install --no-install-recommends -qy \
    python3-pip python3-setuptools gnupg wget && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --no-cache-dir jill && jill install --confirm --upstream Official


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
