
#### Project #####
variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
}

#### VPC ####
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map
    default = {}
}

#### IGW ###
variable "igw_tags" {
    type = map
    default = {}
}

### public subnet ##
variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please provide 2 valid public subnet CIDR"
        
    }
}

variable "public_subnet_cidrs_tags" {
    type = map
    default = {}
}

### private subnet ##
variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please provide 2 valid private subnet CIDR"
        
    }
}

variable "private_subnet_cidrs_tags" {
    type = map
    default = {}
}

### database subnet ##
variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please provide 2 valid database subnet CIDR"
        
    }
}

variable "database_subnet_cidrs_tags" {
    type = map
    default = {}
}

## NAT Gateway ###

variable "nat_gateway_tags" {
    type = map
    default = {}
}


### public route table ###
variable "public_route_table_tags" {
    type = map
    default = {}
}

### private route table ###
variable "private_route_table_tags" {
    type = map
    default = {}
}

### database route table ###
variable "database_route_table_tags" {
    type = map
    default = {}
}

#### Peering ####
variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  type = map
  default = {}
}