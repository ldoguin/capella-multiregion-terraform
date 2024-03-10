cluster = {
  name               = "New Terraform Cluster"
  cidr               = "10.0.0.0/20"
  node_count         = 3
  couchbase_services = ["data", "index", "query"]
  availability_zone  = "multi"
}

compute = {
  cpu = 4
  ram = 16
}

disk = {
  size = 50
  type = "io2"
  iops = 5000
}

support = {
  plan     = "developer pro"
  timezone = "PT"
}
