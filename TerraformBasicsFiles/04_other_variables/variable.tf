variable "filename" {
    type = string
    default = "other-var-file.txt"
}

# variable content {
#   type        = string
#   default     = "This is the sample string + other variables sample testing"
# }

# variable content {
#   type        = number
#   default     = 23
# }

# variable content{
#   type = bool
#   default = true
# }

# variable content {
#   type        = list(string) ## while calling in main.tf put --> var.content[1]
#   default     = ["red", "green", "blue"]
# }


# variable content {
#   type        = tuple([string,bool,number]) ## while calling in main.tf put --> var.content[1]
#   default     = ["red", true, 23]
# }


variable content {
  type        = map ## #   while calling in main.tf put --> content = var.content["name"] --double quotes with wrapped square brackets [""]
  default     = {name= "HELLO TERRAFOMR", age=23}
}
