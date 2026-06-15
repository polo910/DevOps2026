variable "prefix" {
  type        = string
  description = "Unikalny prefiks studenta (male litery i cyfry, np. dev422367)"
}

variable "location" {
  type        = string
  default     = "polandcentral"
  description = "Region dedykowany dla subskrypcji akademickiej AGH"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "ssh_public_key" {
  type        = string
  description = "Zawartosc klucza publicznego SSH studenta"
}
