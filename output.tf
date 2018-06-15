output "ELB_PUBLIC_DNS" {
  value = "${aws_elb.my-elb.dns_name}"
}
