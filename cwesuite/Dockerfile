FROM ubuntu AS builder

RUN apt update -y && apt install -y libc6-dbg gcc make

RUN mkdir /workspace
COPY . /workspace
WORKDIR /workspace

RUN make basic advanced all

FROM ubuntu
RUN mkdir /workspace
COPY --from=builder /workspace/all /workspace/basic /workspace/advanced /
COPY ./testsuite /testsuite
