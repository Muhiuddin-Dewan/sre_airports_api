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
