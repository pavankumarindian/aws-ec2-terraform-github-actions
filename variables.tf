variable "ami" {
  description = "EC2 instance AMI ID"
  default     = "ami-05c0f5389589545b7"  # Update with a valid AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"  # Update with a valid instance type
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instance."
  type        = string
  default     = "ap-south-1a"  # Replace with your desired availability zone
}

variable "iam_instance_profile" {
  description = "EC2 instance IAM instance profile name"
  default     = "pavan"  # Update with a valid instance profile name
}

variable "key_name" {
  description = "EC2 instance key pair name"
  default     = "demo-key"  # Update with a valid key name
}

variable "security_groups" {
  description = "Security group for the EC2 instance"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  default     = "subnet-0e41453c9b1028803"  # Update with a valid subnet ID
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "TF-Instance"
    Environment = "Dev"
  }
}
