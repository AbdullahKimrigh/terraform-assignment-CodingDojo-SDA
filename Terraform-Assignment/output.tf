output "Sample_Public_IP" {
  value = aws_instance.SampleEC2.public_ip
}

output "Sample_Availability_Zone" {
  value = aws_instance.SampleEC2.availability_zone
}

output "Sample_Public_DNS" {
  value = aws_instance.SampleEC2.public_dns
}

output "Sample_Instance_ID" {
  value = aws_instance.SampleEC2.id
}



output "Test_Public_IP" {
  value = aws_instance.TestEC2.public_ip
}

output "Test_Availability_Zone" {
  value = aws_instance.TestEC2.availability_zone
}

output "Test_Public_DNS" {
  value = aws_instance.TestEC2.public_dns
}

output "Test_Instance_ID" {
  value = aws_instance.TestEC2.id
}