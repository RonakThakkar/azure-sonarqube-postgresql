FROM sonarqube:7.0-alpine
COPY root.ca /home/sonarqube/.postgresql/root.crt
ENTRYPOINT ["./bin/run.sh"]
# COPY entrypoint.sh ./bin/
# RUN chmod +x ./bin/entrypoint.sh
# ENTRYPOINT ["./bin/entrypoint.sh"]
