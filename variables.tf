# Don't make any changes in this file
# To create anything, go to terraform.tfvars file

variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "buckets" {
  type = list(object({
    name = string
    location = string
  }))
  default = []
}

variable "datasets" {
  type = list(object({
    dataset_id = string
    description = string
  }))
  default = []
}

variable "tables" {
  type = list(object({
    dataset_id = string
    table_id   = string
  }))
  default = []
}

variable "db_instances" {
  type = list(object({
    name = string
    region = string
    database_version = string
    tier = string
    deletion_protection = string
  }))
  default = []
}

variable "databases" {
  type = list(object({
    name = string
    instance = string
  }))
}

variable "users" {
  type = list(object({
    name = string
    instance = string
  }))
}

variable "vm_instances" {
  type = list(object({
    name = string
    machine_type = string
    zone = string
    image = string
    network = string
  }))
  default = []
}

