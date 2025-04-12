resource random_string output_rand_string {
  length  = 20
}

output random_output_string {
  value       = random_string.output_rand_string.id
}