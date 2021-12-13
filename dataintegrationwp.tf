# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# dataintegrationwp.tf
#
# Purpose: The following script defines the creation of a data integration workspace
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/dataintegration_workspace
#           

resource "oci_dataintegration_workspace" "Workspace" {
  #Required
  compartment_id = local.compartment_id
  display_name   = var.integration_workspace_display_name

  #Optional
  description = var.integration_workspace_description
  is_private_network_enabled = var.workspace_is_private_network_enabled
  subnet_id                  = local.subnet_ocid
  vcn_id                     = local.vcn_ocid
}