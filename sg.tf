
resource "aws_security_group" "allow-80and443" {
name = "allow-80and443"
description = "security group to allow ingress traffic on 80 and 443 ; all egress traffic"

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

tags {
Name = "allow-80and443"
}

}

/*
resource "aws_security_group" "allow-ssh" {
name = "allow-ssh"
description = "security group that allows ssh and all egress traffic"
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

tags {
Name = "allow-ssh"
}

}
*/
