FROM paperist/alpine-texlive-ja:2022

ENV PATH /usr/local/texlive/2022/bin/x86_64-linuxmusl:$PATH

COPY ./fonts/ /usr/local/texlive/texmf-local/fonts/

RUN /usr/local/texlive/2022/bin/x86_64-linuxmusl/mktexlsr

WORKDIR /workdir

CMD ["sh"]
