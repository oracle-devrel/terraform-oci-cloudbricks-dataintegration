# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf 
#
# Purpose: The following file declares all variables used in this backend repository

/********** Provider Variables NOT OVERLOADABLE **********/

variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy."
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"

}

/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

variable "integration_workspace_instance_compartment_name" {
  description = "Compartment name where the integration workspace instance will be created"

}

variable "integration_workspace_network_compartment_name" {
  description = "Compartment name where the integration workspace network will be created"

}

variable "integration_workspace_display_name" {
  description = "Display name of the integration workspace"

}

variable "integration_workspace_description" {
  description = "Description of the integration workspace"

}

variable "workspace_is_private_network_enabled" {
  description = "Enable/Disable private network for the integration workspace"
  default     = false
}

variable "vcn_display_name" {
  description = "Display name of the VCN"

}

variable "network_subnet_name" {
  description = "Display name of the subnet"

}
/********** Brick Variables **********/