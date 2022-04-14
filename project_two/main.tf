data "terraform_remote_state" "one" {
    backend = "gcs"
    config = {
        bucket = "INSERT_THE_BUCKET_NAME_HERE"
    }
}

output "all" {
  value = data.terraform_remote_state.one
}
