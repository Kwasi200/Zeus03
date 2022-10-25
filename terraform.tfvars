/* variable "region_name" {
  description = "name of region"
  default     = "eu-west-2"
  type        = string
} */

/* resource "aws_vpc" "vpc-main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default" */
/* variable "cidr_block" {
  description = "Cidr block for vpc"
  default     = "10.0.0.0/16"
  type        = string
} */


/* resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = "10.0.1.0/24" */
/* variable "public-sub1" {
  description = "public subnet_1"
  default     = "10.0.100.0/24"
  type        = string
} */

/* variable "public-sub2" {
  description = "public subnet_2"
  default     = "10.0.101.0/24"
  type        = string
}

variable "priv-sub1" {
  description = "private_subnet_1"
  default     = "10.0.102.0/24"
  type        = string
}

variable "priv-sub2" {
  description = "private_subnet_2"
  default     = "10.0.103.0/24"
  type        = string
} */

/* variable "AZ-1" {
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
} */

/* variable "key_name" {
  description = "Key pair name"
  default     = "fuentes"
  type        = string
} */

public-sub1 = "10.0.101.0/24"
public-sub2 = "10.0.102.0/24"
priv-sub1   = "10.0.103.0/24"
priv-sub2   = "10.0.104.0/24"

access_key  = "AKIATCPYFB5ZDB5UTQAV"
secret_key  = "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"

# database details
