resource "local_file" "foo" {
  count    = 4
  content  = "foo!"
  filename = "${path.module}/foo-${count.index}.bar"
}
