resource random_id rand_id {
  byte_length = 10
}
resource random_integer rand_int {
  min = 80
  max = 150
}

resource random_string rand_str {
  length  = 15
}

output id_print {
  value       = random_id.rand_id.b64_url
}

output int_print{
  value = random_integer.rand_int.result
}

output str_print{
  value = random_string.rand_str.result
}
