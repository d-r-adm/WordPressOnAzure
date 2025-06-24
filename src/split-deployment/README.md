# WordPress on Azure App Service split deployment

## Bootstrap deployment required before deploying Foundation

## Deployment

### 1. Deploy the Foundation

modify the foundation.tfvars file and use that to deploy the foundational elements

foundation.tfvars

location="location"
environment="environment"
secret_expiration_date_seed="yyyy-mm-ddThh:mm:ssZ"
subscription_id="subscription_id"
workload_name="workload_name"
naming_convention="{resourceType}-{environment}-{workloadName}-{region}-{instance}"
instance=1

### 2. Deploy one or more sites

See the [site README](./Site/README.md)
