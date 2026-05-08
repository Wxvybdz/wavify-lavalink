FROM eclipse-temurin:17-jre

WORKDIR /app

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar

COPY application.yml .

CMD ["java", "-jar", "Lavalink.jar"]