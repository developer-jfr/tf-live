resource "google_service_account" "sa-name" {
  account_id   = local.service_account.account_id
  display_name = local.service_account.display_name
}

resource "google_project_iam_member" "artificatory_admin_role" {
  project = var.project_id
  role    = local.artifactregistry_admin.role
  member = "serviceAccount:${google_service_account.sa-name.email}"
}

resource "google_artifact_registry_repository" "private_repo" {
  location      = var.region
  repository_id = local.private_repo.repository_id
  description   = local.private_repo.description
  format        = local.private_repo.format
}