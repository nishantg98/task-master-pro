# Ultimate DevOps Monitoring Project 🚀

I am thrilled to share that I have successfully implemented The Ultimate Corporate Pipeline With GitHub Actions! This project involved deploying a task master website using an Amazon EKS cluster provisioned through Terraform, with a robust CI/CD pipeline managed by GitHub Actions. It also included using Prometheus to collect rich metrics and Grafana to transform those metrics into visualizations.

![Untitled Diagram](https://github.com/user-attachments/assets/9daa162f-deca-4dd5-8899-0d7e5e204f6c)


## Project Phases

### Phase 1: Setup Repository
1. **Fork the Repository**
   - Fork the repository to your own GitHub account.
   - Clone the forked repository to your local machine.


### Phase 2: Infrastructure Setup
1. **Set Up Amazon EKS Cluster on AWS EC2 Instances through Terraform**
   - Provisioned an EKS cluster using Terraform.
   - Created necessary IAM roles and service accounts.
   - Generated a token for the service account.

   ![Screenshot from 2024-07-24 12-55-11](https://github.com/user-attachments/assets/58269144-7c5f-4d61-90d2-d20cd39fa827)

   ![Screenshot from 2024-07-24 12-55-40](https://github.com/user-attachments/assets/287f9336-da69-4c9f-8983-3ae183d9f28d)

   ![Screenshot from 2024-07-24 12-55-25](https://github.com/user-attachments/assets/6d89d23c-1f33-4dc5-b89c-a7c6c13be65f)



3. **Setup SonarQube**
   - Installed and configured SonarQube for code quality analysis.
   - Configured SonarQube with the necessary project settings.


4. **Set Up GitHub Actions Self-hosted Runner on VM**
   - Configured a self-hosted runner for GitHub Actions to manage CI/CD workflows.
   - Registered the runner with the GitHub repository.

   ![Screenshot from 2024-07-24 15-33-11](https://github.com/user-attachments/assets/17e5d306-d665-4d15-becc-b0b025e76594)


### Phase 3: CI/CD Pipeline using GitHub Actions
#### Pipeline Overview
1. **Java Build and Package**
   - Set up JDK 17 using Temurin distribution.
   - Built the Java project using Maven.
   - Uploaded the generated JAR artifact as a GitHub Action artifact.


2. **Security Scans**
   - Performed file system scan using Trivy.
   - Ran SonarQube scan for code quality analysis.

![Screenshot from 2024-07-24 15-34-27](https://github.com/user-attachments/assets/15bb5f3a-db80-428c-a906-8552764749b1)

![Screenshot from 2024-07-24 12-56-58](https://github.com/user-attachments/assets/69484172-028b-414d-80ba-434339404ff7)



3. **Docker Build and Scan**
   - Set up QEMU and Docker Buildx.
   - Built Docker image for the Java application.
   - Scanned Docker image using Trivy.
   - Logged in to Docker Hub using provided credentials.
   - Pushed the Docker image to Docker Hub.

![Screenshot from 2024-07-24 15-35-15](https://github.com/user-attachments/assets/a23e0bc1-f610-488a-9758-5db67fd7f2a7)

![Screenshot from 2024-07-24 12-57-58](https://github.com/user-attachments/assets/b2ff3335-8ab1-46bd-9732-5be317818fe0)




4. **Kubernetes Deployment**
   - Used Kubectl Action to interact with the Kubernetes cluster.
   - Applied deployment and service configuration from `deployment-service.yaml` file to deploy the application to Kubernetes namespace `webapps`.

   ![Screenshot from 2024-07-24 12-49-54](https://github.com/user-attachments/assets/43a9e3ab-61a6-4704-84ad-b2a6329341b0)

   ![Screenshot from 2024-07-24 13-00-04](https://github.com/user-attachments/assets/04916d28-c977-4895-9a46-ada2ccee5b7c)



#### Secrets Configuration
Ensure that the following secrets are configured in the GitHub repository:
- **SONAR_TOKEN:** The token for authenticating SonarQube scan.
- **SONAR_HOST_URL:** URL of the SonarQube instance.
- **DOCKERHUB_USERNAME:** Username for Docker Hub authentication.
- **DOCKERHUB_TOKEN:** Token for Docker Hub authentication.
- **KUBE_CONFIG:** Base64 encoded Kubernetes configuration file (kubeconfig) for accessing the Kubernetes cluster.

### Phase 4: Monitoring
- **System-level Monitoring**
  - CPU and RAM monitoring using `node_exporter`.
  - Configured Prometheus to scrape metrics from `node_exporter`.

  ![Screenshot from 2024-07-24 13-09-35](https://github.com/user-attachments/assets/a19fa3d3-bb53-481f-bc23-04180ff3f930)


- **Website Monitoring**
  - Website uptime and performance monitoring using `blackbox_exporter`.
  - Configured Prometheus to scrape metrics from `blackbox_exporter`.

   ![Screenshot from 2024-07-24 15-38-15](https://github.com/user-attachments/assets/7d003716-c861-4605-952b-c65267e325ea)


- **Visualization and Analysis**
  - Leveraged Prometheus and Grafana for effective visualization and analysis of metrics.
  - Created Grafana dashboards to display the collected metrics.

  ![Screenshot from 2024-07-24 13-12-36](https://github.com/user-attachments/assets/bc584181-490f-4ef4-af42-dc60f1a1d6e5)
  
  ![Screenshot from 2024-07-24 13-13-17](https://github.com/user-attachments/assets/bd923b88-cf82-4fe5-86df-bb35cd1eebd9)


## Conclusion
This project successfully demonstrates the implementation of a comprehensive DevOps monitoring solution, showcasing the power of GitHub Actions, Terraform, Amazon EKS, Prometheus, and Grafana in creating a robust and efficient CI/CD pipeline.

Feel free to fork this repository and explore the implementation details!

---

For any questions or contributions, please open an issue or submit a pull request. Happy coding! 🚀

---

