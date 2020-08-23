resource "aws_budgets_budget" "template" {
  name              = "budget-${var.service_name}-monthly"
  budget_type       = "COST"
  limit_amount      = var.service_limit_amount
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2020-01-01_00:00"

  cost_filters = {
    Service = var.service_slug
  }

  notification {
    comparison_operator = "GREATER_THAN"
    threshold           = var.service_threshold
    threshold_type      = "PERCENTAGE"
    notification_type   = "FORECASTED"
  }
}
