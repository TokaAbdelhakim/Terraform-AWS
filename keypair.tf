resource "aws_key_pair" "terraform-key" {
  key_name = "terraform-key"
  public_key = "/root/terraform-key.pub"
}