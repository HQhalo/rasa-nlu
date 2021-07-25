FROM rasa/rasa
WORKDIR /app
COPY ./ ./
USER root
RUN chmod -R 777 /app
RUN rasa train nlu
EXPOSE 5005
ENTRYPOINT rasa run --enable-api --port 5005
