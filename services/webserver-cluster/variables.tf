variable "server_port" {
  description = "The port the server will use for http requests"
  type        = number

  default = 8080
}

variable "ami" {
  type        = string
  description = "The AMI to run in the cluster"
  default     = "ami-053b0d53c279acc90"
}

variable "server_text" {
  description = "The text the web server should return"
  type        = string
  default     = "Hello, World!"
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the s3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of the EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 instances in the ASG"
  type        = number
}

variable "custom_tags" {
  description = "Custom tags for the ASG instances"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling" {
  description = "If set to true, auto scaling is enabled"
  type        = bool

  default = false
}
