FROM node:10

# Set up a user
RUN useradd -ms /bin/bash appuser
USER appuser
WORKDIR /home/appuser

ENV HOME=/home/appuser
ENV PATH=$HOME/.local/bin:$PATH

COPY --chown=appuser . $HOME/

RUN npm install

