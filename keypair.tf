resource "aws_key_pair" "terraform-key" {
  key_name = "terraform-key"
  public_key = "${file("${path.root}/terraform-key.pub")}"
}