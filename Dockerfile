FROM podenno/jupyterlab 

LABEL maintainer="https://github.com/pdenno"

ENV NODE_OPTIONS=--max-old-space-size=4096

RUN  NODE_OPTIONS="--max_old_space_size=4096" jupyter labextension install plotlywidget \
  && NODE_OPTIONS="--max_old_space_size=4096" jupyter labextension install jupyterlab-plotly 

COPY scripts /scripts
COPY settings /settings


