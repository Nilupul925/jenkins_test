# new docker image for simple-crud application using openjdk:28-ea-jdk-oracle base image
FROM openjdk:28-ea-jdk-oracle
# Copy the jar file from the target directory to the root of the image
ADD target/demo-docker.jar demo-docker.jar
# Execute the jar file when the container starts
ENTRYPOINT ["java","-jar","/demo-docker.jar"]