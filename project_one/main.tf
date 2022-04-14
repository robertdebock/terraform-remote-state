terraform {
  backend "gcs"{
    bucket      = "INSERT_THE_BUCKET_NAME_HERE"
  }
}

resource "local_file" "foo" {
  count    = 4
  content  = "foo!"
  filename = "${path.module}/foo-${count.index}.bar"
}
