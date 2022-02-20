resource "aws_ssm_parameter" "p_store" {

  for_each = var.parameter_store_names
  name = each.value
  type = "String"
  value = var.parameter_store_value_default

}
