<!-- BEGIN_TF_DOCS -->
# Public IP Module

## What is a Public IP?
A public IP address is a unique IP address assigned to your Azure resource that allows it to communicate with other resources over the Internet. Public IPs are used for communication between Azure resources and the external world, enabling scenarios such as web hosting, VPN connections, and API services. This module facilitates the creation and management of public IP addresses in Azure.

```hcl
resource "azurerm_public_ip" "pubip" {
  name = var.publicip_name
  resource_group_name = var.resourcegroup_name
  location = var.location
  allocation_method = var.allocation_method
  tags = var.tags
}
```

<!-- markdownlint-disable MD033 -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Resources

The following resources are used by this module:

- [azurerm_public_ip.pubip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) (resource)

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method)

Description: Defines the allocation method for this IP address (Static or Dynamic)

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: The location/region where the public IP is created

Type: `string`

### <a name="input_publicip_name"></a> [publicip\_name](#input\_publicip\_name)

Description: The name of the publicip

Type: `string`

### <a name="input_resourcegroup_name"></a> [resourcegroup\_name](#input\_resourcegroup\_name)

Description: The name of the resource group

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_tags"></a> [tags](#input\_tags)

Description: A map of tags to assign to the resource

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address)

Description: The allocated public IP address

### <a name="output_public_ip_id"></a> [public\_ip\_id](#output\_public\_ip\_id)

Description: The ID of the public IP

## Modules

No modules.

## Support and Documentation
For assistance or further information on using this module, please consult the relevant cloud provider's documentation or community resources.

## About
This module is provided as-is under the MIT License. You are welcome to contribute or report issues on the GitHub repository.
<!-- END_TF_DOCS -->