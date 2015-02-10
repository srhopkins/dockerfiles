FROM srhopkins/pyrun

RUN apt-get update && apt-get install -y build-essential

RUN pip install ipython[notebook]

COPY init.sh .
RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
