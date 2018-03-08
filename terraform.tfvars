aws_region = "eu-west-1"

aws_key_name = ""
aws_key_path = ""

aws_instance_user = ""
aws_instance_type = ""

aws_security_group.sg_count = "2"

aws_security_group.sg_0_name = "ssh"
aws_security_group.sg_0_from_port = "22"
aws_security_group.sg_0_to_port = "22"
aws_security_group.sg_0_protocol = "tcp"

aws_security_group.sg_1_name = "http"
aws_security_group.sg_1_from_port = "80"
aws_security_group.sg_1_to_port = "80"
aws_security_group.sg_1_protocol = "tcp"
