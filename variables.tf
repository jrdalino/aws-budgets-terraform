# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# Budget
variable "aws_budgets_budget_name" {
  type        = string
  description = "(Optional) The name of a budget. Unique within accounts."
}

variable "aws_budgets_budget_limit_amount" {
  type        = string
  description = "(Required) The amount of cost or usage being measured for a budget."
}

variable "aws_budgets_budget_time_period_start" {
  type        = string
  description = "(Required) The start of the time period covered by the budget. The start date must come before the end date. Format: 2017-01-01_12:00."
}

variable "aws_budgets_budget_subscriber_email_addresses" {
  type        = string
  description = "(Optional) E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
}