# Start from the latest golang base image
FROM aureleoules/latextra

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN chmod +x /app/compile.sh
RUN /app/compile.sh

RUN npm install -g serve

EXPOSE 80
CMD ["serve", "-s", "docs", "-p", "80"]