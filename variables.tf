variable "aws_region" {
  default = "eu-west-1"
}

variable "prefix" {
  default = "sdg"
}

variable "aws_access_key" {
  type        = string
  sensitive   = true
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
  description = "AWS Secret Key"
}

variable "az1" {
  description = "First availability zone"
  default     = "eu-west-1a"
}

variable "az2" {
  description = "Second availability zone"
  default     = "eu-west-1b"
}

variable "public_key_path" {
  description = "Path to the SSH public key file"
  type        = string
  default     = "./terraform_key.pub"
}