# liferay7-docker
Docker image for Liferay 7.0 GA3. It uses Tomcat 8 containter and embedded HSQLDB database.

To make the complete image smaller, Alpine Linux is used as a base image. Also, OpenJDK 8 is used, as it is required bz Liferay 7.
# Usage
`docker run -d -p 8080:8080 mnorsic/liferay7`
