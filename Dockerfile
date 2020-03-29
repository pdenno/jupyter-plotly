FROM dclong/jupyterlab 

LABEL maintainer="https://github.com/pdenno"

ENV NODE_OPTIONS="--max-old-space-size=4096"
RUN jupyter labextension install plotlywidget --no-build
RUN jupyter labextension install jupyterlab-plotly --no-build
RUN jupyter lab build
