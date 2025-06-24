# WordPress Foundation Deployment

This Terraform code will deploy the foundation for deploying multiple instances of WordPress in multiple App Services that share an App Service Plan, Storage Account, and Azure Database for MySQL Flexible Server.

modify the foundation.tfvars file and use that to deploy the foundational elements

## foundation.tfvars

location="location"  
environment="environment"  
secret_expiration_date_seed="yyyy-mm-ddThh:mm:ssZ"  
subscription_id="subscription_id"  
workload_name="workload_name"  
naming_convention="{resourceType}-{environment}-{workloadName}-{region}-{instance}"  
instance=1  


After deploying the foundation, you can deploy one or more site deployments (from /src/split-deployment/site) to deploy the instance-specific resources, such as the App Service, file share, and database.
