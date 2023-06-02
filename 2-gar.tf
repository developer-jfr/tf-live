resource "google_artifact_registry_repository" "private_repo" {
  location      = var.region
  repository_id = local.private_repo.repository_id
  description   = local.private_repo.description
  format        = local.private_repo.format
}