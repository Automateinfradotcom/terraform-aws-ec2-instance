output "ec2_id" {
   value = "${aws_instance.web1.*.id}"
}