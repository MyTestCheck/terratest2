project_id = "terraform-only-2"
region     = "europe-west2"

# Use the below code to create buckets
buckets = [
#     {
#         name = "bucket-testone-60"
#         location = "us"
#     }
]


# Use the below code to create datasets
datasets = [
    {
        dataset_id= "dataset11"
        description = "This is description"
    }
]

# Use the below code to create tables
tables = [
#     {
#         table_id = "table11"
#         dataset_id= "dataset11"
#     }
]

# Use the below code to create db instances

db_instances = [
#     {
#         name = "pgtestone"
#         region = "us-central1"
#         database_version = "POSTGRES_12"
#         tier  = "db-f1-micro"
#         deletion_protection  = "true"
#     }
]

# Refer example below

# db_instances = [
#      {
#          name = "my-database-instance"
#          region = "us-central1"
#          database_version = "POSTGRES_12"
#          tier  = "db-f1-micro"
#          deletion_protection  = "true"
#      }
#  ]

# Use the below code to create database in any instance

databases = [
    
]

# Refer example below

# databases = [
#      {
#          name     = "my-database"
#          instance = "my-database-instance"
#      }
#  ]

# Use the below code to create VMs

vm_instance = [
    
]

# Refer example below

#  vm_instances = [ 
#      {
#          name = "testsun"
#          machine_type = "e2-medium"
#          zone = "us-central1-a"
#          image = "debian-cloud/debian-9"
#          network = "default"
#      }
#  ]
