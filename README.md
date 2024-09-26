# Airport API

<!-- My thought process and decisions goes here -->

---
_For tasks, checkout [tasks.md](tasks.md)_

### Task 1: Cloud Storage Bucket Creation Using Terraform

In this task, we will create a Google Cloud Storage bucket using Terraform.

1. **Provider Configuration:**
   - The provider information is defined in the [Task-1/provider.tf](Task-1/provider.tf) file.
   - A service account is required for Terraform to access Google Cloud services.
   - Once the service account is created, download the [Task-1/keys.json](Task-1/keys.json) file.
   - This [Task-1/keys.json](Task-1/keys.json) needs to be referenced in the provider section of Terraform.

2. **Bucket Creation:**
   - The bucket creation code is provided in the [Task-1/main.tf](Task-1/main.tf) file.

3. **Steps to Provision the Bucket:**
   Run the following commands to initialize and apply the Terraform configuration:

   ```bash
   terraform init
   terraform apply
   ```

### Task 2: Make an endpoint /update_airport_image to update an airport’s image.

I just tried to create storage connection as I don't have experience with GO.
I am explaining the steps here:
1. **Include the Google Cloud Storage Client Library**
```bash
go get cloud.google.com/go/storage
```
This will automatically add the cloud.google.com/go/storage package to the go.mod file. For reference, I have manually added it to [go.mod](go.mod)

2. **Initialize the GCS Client**

3. **Provide the Bucket Name**
 Used the bucket name that was created earlier using the Infrastructure as Code (IAC) tool (Terraform). [main.go](main.go)

4. **Create an Object with Airport Name and Image**

5. **Generate the Public URL for the image [main.go](main.go)**


### Task 3: Containerizing the Application with Docker
A Dockerfile has been created to containerize the application in the [Task-3/Dockerfile](Task-3/Dockerfile)

From that, we can create the image using the following command:
```bash
docker build -t GoApplication .
```

We can run the image as a container using the command below:
```bash
docker run -d GoApplication
```

### Task 4: Prepare a deployment and service resource to deploy in Kubernetes
Created deloyment.yaml and service.yaml file in [Task-4](task4) for deploy the application in kubernetes.

### Task 5: Use API gateway Create routing rules to send 20% of traffic to the /airports_v2 endpoint.
For GCP perspective we can use Google Cloud Load Balancer and Traffic Director.
For this we can follow the below step:
1. **Deploy the Services on Google Kubernetes Engine (GKE)**
2. **Setup Load Balancing with Traffic Director**


## Bonus Task
### Task 1: Set up a simple CI/CD pipeline to build and deploy the app to Kubernetes.
We can use Jenkins, github action or any other CI/CD tool for deploy the app to kubernetes
I have just added basic github action CI/CD pipeline in [(.github/workflows/deploy.yaml)](.github/workflows/deploy.yaml) file.

**Note:**
Currently, the pipeline only contains the basic steps for deployment.
Further configurations are needed, such as:
For deploying in our server we need to create self hosted runner in our server.
Also we need to configure some more things in pipeline like login in dockhub, kubernetes access etc. 


### Task 2: Add basic monitoring to track response times for each endpoint
We can set up basic monitoring using Prometheus and Grafana. Configure Prometheus to scrape metrics from the app and use Grafana for visualization.