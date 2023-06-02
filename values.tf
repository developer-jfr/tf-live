variable "project_id" {
  type    = string
  default = "vaulted-epigram-382702"
}

variable "region" {
  type    = string
  default = "us-central1"
}

locals {
  service_account = {
    account_id   = "sa-name"
    display_name = "SA"
  }

  artifactregistry_admin = {
    role   = "roles/artifactregistry.createOnPushRepoAdmin"
  }

  private_repo = {
    repository_id = "my-repository"
    description   = "example docker repository"
    format        = "DOCKER"
  }
}


