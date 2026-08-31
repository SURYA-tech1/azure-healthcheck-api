variable "project_name" {
  type        = string
  description = "Base name for resources"
  default     = "healthcheck-api"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "Azure region for deployment"
  default     = "eastus"
}

variable "container_image" {
  type        = string
  description = "Container image to deploy"
  default     = "ghcr.io/surya-tech1/azure-healthcheck-api:latest"
}
