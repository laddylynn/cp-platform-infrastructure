variable "ports" {
  type = list(string)
}

variable "terms" {
  description = "collect resource key terms in a object"
  type = map(list(string))
}

variable "region" {
  type = string
}

variable "range_name" {
  type = string
}

