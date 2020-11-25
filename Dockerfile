FROM swift:latest

RUN git clone https://github.com/vapor/toolbox.git && \
    cd toolbox && \
    git checkout tags/18.3.0 -b 18.3.0 && \
    swift build -c release --disable-sandbox --enable-test-discovery && \
    mv .build/release/vapor /usr/local/bin;

ENTRYPOINT [ "vapor" ]