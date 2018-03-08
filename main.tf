provider "aws" {
    region = "${var.aws_region}"
}

resource "aws_security_group" "default" {
    count = "${var.aws_security_group.sg_count}"

    name = "terraform_security_group_${lookup(var.aws_security_group, concat("sg_", count.index, "_name"))}"
    description = "SG-TERRAFORM"

    ingress {
        from_port   = "${lookup(var.aws_security_group, concat("sg_", count.index, "_from_port"))}"
        to_port     = "${lookup(var.aws_security_group, concat("sg_", count.index, "_to_port"))}"
        protocol    = "${lookup(var.aws_security_group, concat("sg_", count.index, "_protocol"))}"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags {
        Name = "SG-TERRAFORM"
    }
}
