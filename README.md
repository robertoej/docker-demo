# Docker Demo
A really simple Spring Boot App built as a docker image and run in a docker container.
## Requirements
* [JDK 8](https://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
* [Maven 3.x](https://archive.apache.org/dist/maven/maven-3/3.6.0/binaries/)
* [Docker](https://www.docker.com/get-started)
### Building Project
In the root directory, run the following command:
```
mvn package
``` 
This will compile the project and generate the application jar file.
### Building Docker Image
Also in the root directory, run the following command:
```
docker build -t $USER/simple-docker-demo .
```
This will create an image tagged via flag `-t` as `$USER/simple-docker-demo` based on the content of the current directory (`.`).

The following command lists information on the image created int he previous step:
```
docker images $USER/simple-docker-demo
```
### Running Image
The following command runs the image in a docker container:
```
docker run --rm -p 8080:8080 $USER/simple-docker-demo
```
 As mentioned, the command `docker run` creates a docker container; the flag `--rm` determines the exclusion of such container as soon as the it exits; the option `-p 8080:8080` maps port 8080 of the container to respond in port 8080 from the local machine; `$USER/simple-docker-demo` represents the name/repository of the image used to build de container.  
### Accessing Container
In a browser, or any other HTTP client, access the URL [http://localhost:8080](http://localhost:8080). As a result, you should get back the following message:
```
Just a docker demo. 
```