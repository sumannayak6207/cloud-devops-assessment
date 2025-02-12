 # Cloud & DevOps Engineer Assessment

  ## Steps to Deploy

  1. **Provision Infrastructure:**
     ```bash
     cd terraform && terraform init && terraform apply -auto-approve
     ```
  
  2. **Build & Push Docker Image:**
     ```bash
     cd app && ./scripts/build.sh
     ```
  
  3. **Deploy to Kubernetes:**
     ```bash
     ./scripts/deploy.sh
     ```
  
  4. **Check Deployed Services:**
     ```bash
     kubectl get pods,svc,ingress
     ```
  
  5. **Access Monitoring Tools:**
     - **Prometheus:** `kubectl port-forward svc/prometheus 9090:9090`
     - **Grafana:** `kubectl port-forward svc/grafana 3000:3000`
  
  6. **Cleanup:**
     ```bash
     ./scripts/destroy.sh