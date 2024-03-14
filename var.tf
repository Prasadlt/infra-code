variable "subscription_id" {
    description = "The subscription ID to be used to connect to Azure"
    type = string
}
variable "client_id" {
    description = "The client ID to be used to connect to Azure"
    type = string
}
variable "client_secret" {
    description = "The client secret to be used to connect to Azure"
    type = string
}
variable "tenant_id" {
    description = "The tenant ID to be used to connect to Azure"
    type = string
}
variable "reg_url" {
    description = "The ACR url"
    type = string
}
variable "reg_user" {
    description = "The ACR user"
    type = string
}
variable "reg_pwd" {
    description = "The ACR password"
    type = string
}