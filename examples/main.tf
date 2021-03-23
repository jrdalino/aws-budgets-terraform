module "budget" {
  source = "git::https://github.com/jrdalino/aws-budgets-terraform.git?ref=main"
  # General
  aws_region  = var.aws_region
  aws_account = var.aws_account
  aws_role    = var.aws_role

  # Tagging
  namespace       = var.namespace
  bounded_context = var.bounded_context
  environment     = var.environment

  # Budget
  aws_budgets_budget_name                       = var.aws_budgets_budget_name
  aws_budgets_budget_limit_amount               = var.aws_budgets_budget_limit_amount
  aws_budgets_budget_time_period_start          = var.aws_budgets_budget_time_period_start
  aws_budgets_budget_subscriber_email_addresses = var.aws_budgets_budget_subscriber_email_addresses
}