# resource local_file var_local_name {
#   content = "This is the Variable in the TERRAFORM"
#   filename = "sample-var.txt"
# }

## replaced above with env var below

resource local_file var_local_name {
  filename = var.filename
  content = var.content
}
