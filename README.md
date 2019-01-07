# HAPI-FHIR Server Proof of Concept

This project is build upon the hapi starter project. Some branding customization and docker build and compose added.

# Prerequisites

In order to use this sample, you should have:

* This project checked out. You may wish to create a GitHub Fork of the project and check that out instead so that you can customize the project and save the results to GitHub.
* Docker installed

# Running Locally

The easiest way to run this server is to run it with docker compose. To do this, execute the following command:

```
docker-compose up --build
```

Then, browse to the following link to use the server:

[http://localhost:8080/](http://localhost:8080/)

# Build

To build the project you could also use docker:

```
docker run -it --rm --name my-maven-project -v C:\Dev\Platform\repos\hapi-fhir-jpaserver:/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install
```

or maven (if maven and jdk 8 are installed.)
```
mvn clean install
```

This will create a file called `philips-vitalhealth-fhir-server.war` in your `target` directory. This can be hosted by for example jetty or tomcat.