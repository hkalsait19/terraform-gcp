resource local_file o_var_file {
  filename = var.filename
  content = var.content["age"]
}
