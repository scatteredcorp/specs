# Start from the latest golang base image
FROM node:12.13.0

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y rubber texlive-lang-french
RUN yarn global add serve
RUN /app/compile.sh

EXPOSE 80
CMD ["serve", "-s", "output", "-p", "80"]