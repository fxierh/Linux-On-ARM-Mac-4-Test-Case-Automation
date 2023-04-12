1. (docker login registry.ci.openshift.org)
2. docker compose -f ./Linux/docker-compose.yaml up --build -d; docker compose -f ./Linux/docker-compose.yaml exec linux bash

3. Make changes in code
4. Outside the container: 
GOOS=linux GOARCH=amd64 make build
5. In the container: 
./bin/extended-platform-tests run all --dry-run | grep -i "hive-dummy" | ./bin/extended-platform-tests run --timeout 35m --include-success -o result.txt -f -

6. Repeat step 4-6
7. Outside the container: 
docker compose -f ./Linux/docker-compose.yaml down