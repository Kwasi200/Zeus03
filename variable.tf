
variable "region_name" {
  description = "name of region"
  default     = "eu-west-2"
  type        = string
}

/* resource "aws_vpc" "vpc-main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default" */
variable "cidr_block" {
  description = "Cidr block for vpc"
  default     = "10.0.0.0/16"
  type        = string
}



variable "public-sub1" {
  description = "public subnet_1"
  default     = "10.0.1.0/24"
  type        = string
}

variable "public-sub2" {
  description = "public subnet_2"
  default     = "10.0.2.0/24"
  type        = string
}

variable "priv-sub1" {
  description = "private_subnet_1"
  default     = "10.0.3.0/24"
  type        = string
}

variable "priv-sub2" {
  description = "private_subnet_2"
  default     = "10.0.4.0/24"
  type        = string
}

variable "AZ-1" {
  description = "availability Zone"
  default     = "eu-west-2a"
  type        = string
}

variable "AZ-2" {
  description = "availability Zone"
  default     = "eu-west-2b"
  type        = string
}

variable "destination_cidr_block" {
  description = "destination cidr block"
  default     = "0.0.0.0/0"
  type        = string
}


variable "amazon_linux" {
  description = "amazon machine image"
  default     = "ami-00785f4835c6acf64"
  type        = string
}

variable "amazon_ubuntu" {
  description = "amazon machine image"
  default     = "ami-05a8c865b4de3b127"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance"
  default     = "t2.micro"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  default     = "fuentes"
  type        = string
}

# database variables

variable "instance_class" { 
    description = "db instance"  
     default     = "db.t3.micro"  
      type        = string
}


variable "engine" { 
   description = "database engine type" 
    default     = "mysql" 
     type       = string
}

variable "engine_version" { 
   description = "db engine version"
     default     = "5.7" 
      type        = string
}

variable "allocated_storage" { 
   description = "db physical storage"
     default     = 10  
     type        = number
}

variable "parameter_group_name" {
   description = "parameter group name"
     default    = "default.mysql5.7"
     type       = string
}
