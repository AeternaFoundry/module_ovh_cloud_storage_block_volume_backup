resource "ovh_cloud_storage_block_volume_backup" "cloud_storage_block_volume_backups" {
  for_each = var.cloud_storage_block_volume_backups

  name         = each.value.name
  region       = each.value.region
  volume_id    = each.value.volume_id
  description  = each.value.description
  service_name = each.value.service_name
}

