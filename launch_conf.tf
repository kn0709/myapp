resource "aws_launch_configuration" "as_conf" {
  name          = "web_config"
  image_id      = "ami-04bfee437f38a691e"
  instance_type = "t2.micro"
  root_block_device {
    volume_type = "standard"
    volume_size = "10"
}
  security_groups = ["${aws_security_group.allow_tls.id}"]
}
