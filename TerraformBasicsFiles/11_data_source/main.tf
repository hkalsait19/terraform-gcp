data local_file local_data_file {
  filename = "sample-data-source.txt"
}

output name {
  value       = data.local_file.local_data_file.content
}
