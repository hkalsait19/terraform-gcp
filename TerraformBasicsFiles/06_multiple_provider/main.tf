resource local_file name {
  content = "This is HCL"
  filename             = "sample-multiple-provider.txt"
}

resource random_string name {
  length  = 10
}