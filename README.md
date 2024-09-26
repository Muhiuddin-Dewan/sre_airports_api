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
