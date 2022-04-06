data "terraform_remote_state" "one" {
    backend = "gcs"
    config = {
        bucket = "terraform-state-qsnger"
    }
}

output "all" {
  value = data.terraform_remote_state.one
}
