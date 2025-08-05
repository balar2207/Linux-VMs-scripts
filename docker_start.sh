docker run -d --rm --name sonarqube -p 9000:9000 -v sonar-data:/opt/sonarqube/conf -v sonar-data:/opt/sonarqube/data -v sonar-data:/opt/sonarqube/logs -v sonar-data:/opt/sonarqube/extensions sonarqube
docker run -d --rm -p 8081:8081 --name nexus -v local-nexus-data:/nexus-data sonatype/nexus3
