FROM gcr.io/kaniko-project/executor:debug

ADD executor.sh /executor

ENTRYPOINT ["ash"]
