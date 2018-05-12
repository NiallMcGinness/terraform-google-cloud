# terraform-google-cloud
A super simple introduction to orchestrating the google cloud platform ( GCP ) with terraform 

1. download and install terraform from terraform.io/downloads.html

2. install the gcloud SDK from cloud.google.com/sdk/docs/quickstart-linux
  - once you've followed the install steps, run 'gcloud auth application-default login'

3. create a project in your GCP account and replace <project_id> in main.tf with your project id

4. run terraform 
   - terraform init
   - terraform plan
   - terraform apply

5. if this is successful you should get the ip of your instance in the output of your terminal, you can also double check this in your GCP account, you should see one new compute instance running

6. you can shut the instance down from terraform by running 'terraform destroy' or by just shutting off the instance in your GCP account 


