# README
This repository provides an example of Terraform code to deploy an autoscaling cluster of Wallarm WAF nodes in GCP.
Based on: https://docs.wallarm.com/admin-en/installation-gcp-en/
## topology

```WIP````
## terraform.tfvars

```
# Required variables
gcp_project = "smarunic"
gcp_region = "us-west1"
az_count = "2"
name_prefix = "test"
wallarm_deploy_username = "test"
wallarm_deploy_password = "test"
# Optional variables, for more options/variables please refer to variables.tf
# wallarm_user_domain = "protectme.example.com"
# wallarm_api_domain = "us1.api.wallarm.com"
```
## Assumptions and further improvements

* wallarm google image requires cloud-init support, the current workaround is leveraging startup scripts to initialize cloud-init, user-data runcmd aka /opt/bootstrap.sh needs to be converted to Ansible playbook for cross-platform portability
* wallarm fine-tunning can be enhanced further via user-data framework, such as memory allocation for Tarantool, etc
* az_count variable addem, no hard-coded zones, however network allocation/references across modules can be improved
* timers across different modules are purely demo ones and do require futher improvements for the production purposes
* health checks across different modules are purely demo ones, not granular, for example don't leverage exact path such as /healthcheck for backend services
* autoscaler requires further improvements such as scale-in controls to be added, futher metrics to be expanded
* wordpress app is deployed using global resources
* wallarm waf is deployed using reguional resources
* Demo DNS zone can be used, the user_domain can be specified or wordpress lb ip will be used by default, as result IP in Host Header will be expected, which won't make Demo shiny :)
* Demo App such as wordpress image needs to be incorporated, to keep it simple current wordpress returns "Welcome to nginx!" page
