FROM srhopkins/pyrun

EXPOSE 8888

RUN apt-get update && apt-get install -y build-essential pandoc

RUN pip install ipython[notebook]

COPY init.sh /
RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
