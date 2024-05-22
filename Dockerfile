FROM node:20-alpine
ARG VER=4.3.3
RUN npm install -g typescript typescript-language-server@${VER}
CMD ["typescript-language-server", "--stdio"]
