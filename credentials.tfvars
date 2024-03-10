database_credential = {
  database_credential_name = "test_db_user"
  password                 = "Secret12$#"
}

access = [
  {
    privileges = ["data_writer"]
    resources = {
      buckets = [{
        name = "default"
        scopes = [
          {
            name        = "_default"
            collections = ["_default"]
          }
        ]
      }]
    }
  },
  {
    privileges = ["data_reader"]
  }
]
