resource random_integer name{
    min = 256
    max = 348

    lifecycle{
        # create_before_destroy = true
        # prevent_destroy = true
        ignore_changes = [min]
    }
}



output name {
  value       = random_integer.name.id
}
