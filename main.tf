# Budget
resource "aws_budgets_budget" "this" {
  account_id = var.aws_account
  name = var.aws_budgets_budget_name
  # name_prefix
  budget_type  = "COST"
  # cost_types
  limit_amount = var.aws_budgets_budget_limit_amount
  limit_unit   = "USD"
  # time_period_end = "2021-01-01_12:00"
  # time_period_start = "2021-01-01_12:00"
  time_unit = "MONTHLY"
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = [var.aws_budgets_budget_subscriber_email_addresses]
  }

  # Tagging
  tags = {
    Name           = var.aws_budgets_budget_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}