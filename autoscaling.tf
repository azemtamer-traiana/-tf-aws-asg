resource "aws_autoscaling_group" "nagios-asg" {
  name = "${var.asg-name}"
  launch_template {
    id      = "${data.aws_launch_template.nagios-template-1.id}"
    version = "$Latest"
  }
  availability_zones = ["${var.availability-zone}"]
  vpc_zone_identifier = ["${data.aws_subnet.default.id}"]

  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  health_check_type = "${var.health-check-type}"
  health_check_grace_period = 300

}