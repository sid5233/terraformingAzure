<blockType> <blockLable><blockLable> {
    identifier = expression
}

#Arguments, Meta Arguments and Attributes

1. Arguments -> In Terraform's configuration language: a syntax construct that assigns a value to a name. Arguments have the form <IDENTIFIER> = <EXPRESSION>, and they appear within blocks.
An argument assigns a value to a particular name: image_id = "abc123"
The identifier before the equals sign is the argument name, and the expression after the equals sign is the argument's value.
https://developer.hashicorp.com/terraform/language/syntax/configuration#arguments-and-blocks

2. Meta-Arguments
In Terraform, meta-arguments are special configuration options that can be applied to resources and modules to control their behavior within a Terraform configuration. These meta-arguments provide additional functionality and customization options beyond the basic configuration of a resource or module. Meta-arguments are -> depends_on,count,for_each,provider

3. Attributes
In Terraform, attributes refer to the values that you can retrieve from a resource or data source after it has been created. These values provide information about the resource’s current state or properties. For example, if you create an AWS EC2 instance, you can retrieve attributes such as its public IP address, private DNS name, or instance type.
id: The unique identifier for the EC2 instance.
public_ip: The public IP address assigned to the instance (if it’s associated with a public subnet).
private_ip: The private IP address of the instance.
availability_zone: The availability zone where the instance is located.

##TF Top Level Blocks
most of terraform's features are implemented as top level blocks.
1. Fundamental Block -> Terraform Block, Provider Block, Resource Block
2. Variable Block -> Input Variable Block, Output Variable BLock, Local Values Block
3. Calling/refferencing blcok -> Data Source Block, Modules Block.