data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "bastion" {
  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.terraform-key./root/terraform-key.pub
  instance_type = "t2.micro"
  vpc_security_group_ids = [module.my_first_module.public_sec]
  subnet_id = module.my_first_module.public_subnet_id_1
  
  provisioner "local-exec"{
  	command = "touch ${self.id} > bastion_ip " 
  }
 }
 
 resource "aws_instance" "application" {
  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.terraform-key./root/terraform-key.pub
  instance_type = "t2.micro"
  vpc_security_group_ids = []
  subnet_id = module.my_first_module.public_subnet_id_2
 }
 
