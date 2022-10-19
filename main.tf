# Don't make any changes in this file
# To create anything, go to terraform.tfvars file

resource "google_storage_bucket" "buckets" {
  for_each = {for bucket in var.buckets : bucket.name => bucket}
  name = each.value.name
  location = each.value.location
}

resource "google_bigquery_dataset" "datasets" {
   for_each   = {for dataset in var.datasets : dataset.dataset_id => dataset}
   dataset_id = each.value.dataset_id
   description = each.value.description
}

resource "google_bigquery_table" "tables" {
   for_each = {for table in var.tables : table.table_id => table}
   dataset_id = each.value.dataset_id
   table_id   = each.value.table_id
}

resource "google_sql_database_instance" "db_instances" {
   for_each = {for db_instance in var.db_instances : db_instance.name => db_instance}
   name             = each.value.name
   region           = each.value.region
   database_version = each.value.database_version

   settings {
    tier = each.value.tier
    maintenance_window {
      day  = "1"
      hour = "4"
    }
   }

   deletion_protection  = each.value.deletion_protection
}

resource "google_sql_database" "databases" {
   for_each = {for database in var.databases : database.name => database}
   name     = each.value.name
   instance = each.value.instance
}

resource "google_compute_instance" "vm_instances" {
   for_each = {for vm_instance in var.vm_instances : vm_instance.name=> vm_instance}
   name         = each.value.name
   machine_type = each.value.machine_type
   zone = each.value.zone

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  network_interface {
    network = each.value.network
    access_config {
    }
  }
}
