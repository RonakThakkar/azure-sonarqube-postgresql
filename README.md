# azure-sonarqube-postgresql
This repository contains dockerfile to create sonarqube docker image that can connect to azure postgresql database using ssl.

Azure postgresql has ssl support enabled by default to provide encryption of client server communication. 

Client Verification of Server Certificate in sonarqube application can be enabled by setting ssl = true in jdbc connection string in sonarqube docker image. In order to successfully validate the postgresql server certificate, sonarqube application requires that one or more root certificates must be placed in the file ~/.postgresql/root.crt in the user's home directory. This is the default location on client side where root ca should be present. More detail in documentation https://www.postgresql.org/docs/current/libpq-ssl.html.

sonarqube docker image in docker hub does not contain root ca of azure postgresql.

This image is derived from sonarqube base docker image and includes postgresql root.ca file in folder /home/sonarqube/.postgresql/root.crt. sonarqube is the default username that is used when deploying application into web app for container as an example. Hence root ca has been placed into sonarqube user location.
