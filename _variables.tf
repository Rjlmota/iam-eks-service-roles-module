variable actions_list{
    type    = any
    default = []
    description = "List of Actions for IAM Role"
}

variable resources_list{
    type    = any
    default = []
    description = "List of Actions for IAM Role"
}

variable service_role_name {
    type    = string
    description = "Kubernetes ServiceRole name"
}

variable namespace {
    type    = string
    description = "Namespace in the Kubernetes cluster"
}

variable "cluster_identity_oidc_issuer_arn" {
  type        = string
  description = "OIDC issuer ARN for the EKS cluster"
}

variable "cluster_identity_oidc_issuer" {
  type        = string
  description = "OIDC issuer for the EKS cluster"
}

variable "cluster_name" {
    type    = string
    description = "Name of the Kubernetes Cluster"
}



