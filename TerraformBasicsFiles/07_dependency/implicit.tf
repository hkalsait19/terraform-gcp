resource "local_file" "implicit_local" {
  filename = "implicit.txt"
  content  = "This is random string from IMPLICIT Random Provider: ${random_string.implicit_random.id}"
}

resource "random_string" "implicit_random" {
  length = 10
}