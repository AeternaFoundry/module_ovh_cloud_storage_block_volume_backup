variable "cloud_storage_block_volume_backups" {
  description = <<EOT
Map of cloud_storage_block_volume_backups, attributes below
Required:
    - name
    - region
    - volume_id
Optional:
    - description
    - service_name
EOT

  type = map(object({
    name         = string
    region       = string
    volume_id    = string
    description  = optional(string)
    service_name = optional(string)
  }))
}

