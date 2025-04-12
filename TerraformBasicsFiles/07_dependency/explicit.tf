resource "local_file" "local_explicit" {
  filename   = "explicit.txt"
  content    = "This is EXPLICIT file and random string: ${random_string.random_explicit.id}"
  depends_on = [random_string.random_explicit]
}


resource "random_string" "random_explicit" {
  length = 10
}
