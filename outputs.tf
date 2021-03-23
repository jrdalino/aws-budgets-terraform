output "id" {
  value       = aws_budgets_budget.this.id
  description = "id of resource."
}

output "arn" {
  value       = aws_budgets_budget.this.arn
  description = "The ARN of the budget."
}