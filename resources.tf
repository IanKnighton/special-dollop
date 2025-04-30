ephemeral "random_password" "password_update" {
  length  = 16
  special = false
  upper   = true
  lower   = true
  numeric = true
}

resource "google_secret_manager_secret" "ephemeral_secret" {
  secret_id = "my-secret-id" // Replace with your secret ID
  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "ephemeral_secret_version" {
  secret         = google_secret_manager_secret.ephemeral_secret.id
  secret_data_wo = ephemeral.random_password.password_update.result
}
