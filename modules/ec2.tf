resource "aws_instance" "myec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.micro"
  security_groups             = ["${aws_security_group.ssh-security-group.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  key_name = "terraform-key"

 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./terraform-key.pem")
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1",
      "sudo systemctl start nginx"
    ]
  }

  tags = {
    Name = "omen"
  }
}