FROM node:14.15.1

# Installs Global NPM modules.

RUN npm i @vue/cli -g
RUN npm i -g firebase-tools

# Installs Google Cloud SDK

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y

# Installs dependencies.

RUN apt-get update && apt-get install -y