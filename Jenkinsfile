pipeline {
    agent any
    
    environment {
      TF_VAR_region = 'us-east-1'
    }
    
    stages {
      stage('Checkout') {
        steps {
          git 'https://github.com/your-repo/cloud-devops-assessment.git'
        }
      }
      
      stage('Terraform Init') {
        steps {
          sh 'cd terraform && terraform init'
        }
      }
      
      stage('Terraform Plan') {
        steps {
          sh 'cd terraform && terraform plan'
        }
      }
      
      stage('Terraform Apply') {
        steps {
          sh 'cd terraform && terraform apply -auto-approve'
        }
      }
      
      stage('Build Docker Image') {
        steps {
          sh './scripts/build.sh'
        }
      }
      
      stage('Deploy to Kubernetes') {
        steps {
          sh './scripts/deploy.sh'
        }
      }
      
      stage('Post Deployment Check') {
        steps {
          sh 'kubectl get pods,svc,ingress'
        }
      }
    }
  }
