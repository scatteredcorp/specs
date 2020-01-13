# Start from the latest golang base image
FROM thomasweise/docker-texlive-full

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y rubber texlive-lang-french texlive-latex-recommended texlive-latex-extra texlive-fonts-extra fonts-roboto nodejs npm
RUN chmod +x /app/compile.sh
RUN /app/compile.sh

RUN npm install -g serve

EXPOSE 80
CMD ["serve", "-s", "docs", "-p", "80"]