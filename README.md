## Usage

```hcl
module service_role{
    source = "./service-roles"
    for_each       = { for role in local.workspace.service_roles : role.name => role }

    cluster_name = each.value.cluster_name
    service_role_name = each.value.name
    namespace         =  each.value.namespace
    cluster_identity_oidc_issuer = each.value.cluster_oidc_issuer_url
    cluster_identity_oidc_issuer_arn =  each.value.cluster_identity_oidc_issuer_arn
    actions_list                     =  each.value.actions_list
    resources_list                   =  each.value.resources_list
}               
```