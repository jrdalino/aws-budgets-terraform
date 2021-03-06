# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "shared"
environment     = "production"

# Budgets
aws_budgets_budget_name                       = "default"
aws_budgets_budget_limit_amount               = "100"
aws_budgets_budget_time_period_start          = "2021-03-01_12:00"
aws_budgets_budget_subscriber_email_addresses = "jrdalino@u.nus.edu"