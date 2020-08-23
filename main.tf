module "budget_ec2" {
  source               = "./aws-budget-module"
  service_name         = "ec2"
  service_slug         = "Amazon Elastic Compute Cloud - Compute"
  service_limit_amount = "100.0"
  service_threshold    = "90"
}

module "budget_cloudwatch" {
  source               = "./aws-budget-module"
  service_name         = "cloudwatch"
  service_slug         = "Amazon CloudWatch"
  service_limit_amount = "100.0"
  service_threshold    = "90"
}
