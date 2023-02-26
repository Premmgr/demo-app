# demo-app
-------------------------------------
# Jenkins-pipeline requirements
* docker installed on node
* docker-compose installed on node 

--------------------------------------

# Note
> Jenkins pipeline will fail on master node if master jenskins node is running as docker container 

* Tested on jenkins slave node: ubuntu 22.04
* grovy.script can be used as jenkins script in jenkins
* SCM poll (auto build) is not supported without SSH verification on the jenskins master node

# local webserver test steps :
- $ cd demo-app
- $ docker-compose up -d
- $ curl -l localhost:90 (open localhost:90 on webbrowser)
