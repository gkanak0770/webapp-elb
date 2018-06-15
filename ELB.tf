resource "aws_elb" "my-elb" {
  name = "terraform-ELB"
  security_groups = ["${aws_security_group.my-elb-sg.id}"]

  availability_zones = ["us-east-1a", "us-east-1d", "us-east-1c", "us-east-1e"]

  health_check {
    healthy_threshold = 3
    unhealthy_threshold = 3
    timeout = 3
    interval = 30
    target = "HTTP:80/"
  }

  listener {
    lb_port = 80
    lb_protocol = "http"
    instance_port = "80"
    instance_protocol = "http"
  }

  listener {
    lb_port = 80
    lb_protocol = "http"
    instance_port = "80"
    instance_protocol = "http"
  }

}
