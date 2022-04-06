terraform {
  backend "gcs"{
    bucket      = "terraform-state-qsnger"
  }
}

resource "local_file" "foo" {
    content  = "foo!"
    filename = "${path.module}/foo.bar"
}
