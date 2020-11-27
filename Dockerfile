FROM gcr.io/kaniko-project/executor:debug

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
