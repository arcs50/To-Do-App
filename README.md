# To-Do-App
Assignment 2 Cloud Computing.  Deploy the to do app using minikube and AWS EKS.

## Files:
#### Part 2: Containerizing the Application on Docker
- **Dockerfile**: contains instructions to build the Docker image for the flask application
- **docker-compose.yml**: defines the services for the flask app and MongoDB container. It specifies the images to use, the ports to expose, and a volume to mount to
 store the database information.

#### Part 3: Deploying the Application on Minikube:
- **flask-deployment.yaml**: creates a Kubernetes deployment for the application by specifiying the Docker image from Docker Hub, the number of replicas, and the
 container port
- **mongo-deployment.yaml**: creates a Kubernetes deployment for the application by specifiying the Docker image from Docker Hub, the number of replicas, and the
 container port
- **flask-service.yaml**: exposes the deployment using a Kubernetes service that exposes the container port and provides load balancing to distribute traffic to the
 replicas.

#### Part 4: Deploying the Application on AWS EKS:
- **deployment.yaml**: creates a Kubernetes deployment for the application in the EKS cluster. It specifies the Docker image to use, the number of replicas of
 the application to run, and the port number that the application listens on. (Altered in steps 6 and 7).
- **service.yaml**: exposes the deployment using a Kubernetes service that provides load balancing for the application and exposes the container port so
 that it can be accessed from outside the EKS cluster

#### Part 5: Replication controller feature:
- **replication-controller.yaml**: creates a replication controller to ensure that a specified number of replicas of the application are always running.

#### Step 8: Alerting:
- **alert-rules-configmap.yaml**: creates a ConfigMap to add custom alerting rules for failing probes
- **alert-manager-config.yaml**: sets up the Slack integration
- **pv.yaml**: creates a persistent volume for prometheus

