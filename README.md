Usage:
1. Clone this repo and put it under openshift-test-private directly (i.e. at openshift-test-private/Linux-On-ARM-Mac-4-Test-Case-Automation)
2. (docker login registry.ci.openshift.org)
3. docker compose -f ./Linux-On-ARM-Mac-4-Test-Case-Automation/docker-compose.yaml up --build -d; docker compose -f ./Linux-On-ARM-Mac-4-Test-Case-Automation/docker-compose.yaml exec linux bash

4. Make changes to openshift-test-private
5. Outside the container: 
GOOS=linux GOARCH=amd64 make build
6. In the container: 
./bin/extended-platform-tests run all --dry-run | grep -i "hive-dummy" | ./bin/extended-platform-tests run --timeout 35m --include-success -o result.txt -f -

7. Repeat step 4-6
8. Outside the container: 
docker compose -f ./Linux-On-ARM-Mac-4-Test-Case-Automation/docker-compose.yaml down