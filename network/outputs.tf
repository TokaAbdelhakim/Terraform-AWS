output "public_subnet_id_1"{
	value = aws_subnet.public1.id
}

output "public_subnet_id_2"{
	value = aws_subnet.public2.id
}

output "private_subnet_id_1"{
	value = aws_subnet.private1.id
}

output "private_subnet_id_2"{
	value = aws_subnet.private2.id
}

output "public_sec"{
	value = aws_security_group.public_sec.id
}

output "private_sec"{
	value = aws_security_group.private_sec.id
}
