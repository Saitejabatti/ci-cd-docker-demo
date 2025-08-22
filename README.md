# CI/CD Pipeline with GitHub Actions & Docker

## Project Overview
This project demonstrates a **full CI/CD pipeline** for a Node.js application using **GitHub Actions** and **Docker**.  
Whenever code is pushed to the `main` branch, the pipeline automatically:
- Installs dependencies
- Runs tests
- Builds a Docker image
- Pushes the image to Docker Hub

The containerized app can then be run locally or deployed elsewhere seamlessly.

---

## Tools & Technologies
- **Node.js 18** – Backend application runtime
- **Docker** – Containerization
- **GitHub Actions** – CI/CD automation
- **Docker Hub** – Container registry
- **npm** – Package management

---

## Project Structure
ci-cd-docker-demo/
├── Dockerfile
├── docker-compose.yml
├── index.js
├── package.json
├── package-lock.json
└── .github/workflows/ci-cd.yml

---

## Steps to Run Locally
1. Clone the repository:
git clone https://github.com/<your-username>/ci-cd-docker-demo.git
cd ci-cd-docker-demo

2. Build the Docker image:
docker build -t <your-dockerhub-username>/ci-cd-docker-demo-app:latest .

3. Run the container:
docker run -d -p 3000:3000 <your-dockerhub-username>/ci-cd-docker-demo-app:latest

4. Access the app at: http://localhost:3000

GitHub Actions Workflow

Workflow file: .github/workflows/ci-cd.yml

Trigger: push or pull_request to main branch

Steps:

Checkout code

Setup Node.js

Install dependencies

Run tests

Log in to Docker Hub

Build & push Docker image

Docker Hub Image

Image name: <your-dockerhub-username>/ci-cd-docker-demo-app:latest

Pull the image:

docker pull <your-dockerhub-username>/ci-cd-docker-demo-app:latest

Conclusion
This project successfully implements a CI/CD pipeline with GitHub Actions and Docker.
It ensures automated build, test, and deployment of a Node.js app, demonstrating modern DevOps practices.
