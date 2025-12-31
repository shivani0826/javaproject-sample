FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/*.jar app.jar
<<<<<<< HEAD
CMD ["java","-jar","app.jar"]
=======
CMD ["java", "-jar", "app.jar"]

>>>>>>> 2acd55238bf28190644b832d75f6469d701c428a
