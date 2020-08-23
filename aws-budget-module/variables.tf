variable "service_name" {
  description = "Service name, eg: Cloudwatch."
  type        = string
}

variable "service_slug" {
  description = "Service slug, eg: Amazon CloudWatch."
  type        = string
}

variable "service_limit_amount" {
  description = "Service amount (USD)."
  type        = string
}

variable "service_threshold" {
  description = "Service threshold (%)."
  type        = string
}
