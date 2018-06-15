data "aws_availability_zones" "all" {}


resource "aws_autoscaling_group" "ec2-autoscaling" {
name = "ec2-autoscaling"

launch_configuration = "${aws_launch_configuration.ec2-launchconfig.name}"
availability_zones = ["${data.aws_availability_zones.all.names}"]

min_size = 3
max_size = 5

load_balancers = ["${aws_elb.my-elb.name}"]

health_check_type = "ELB"
health_check_grace_period = 180
force_delete = true
tag {
key = "Name"
value = "ec2 instance"
propagate_at_launch = true
}
}
