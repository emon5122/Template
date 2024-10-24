terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "6.15.0"
    }
  }
}

provider "oci" {
  user_ocid= ""
  private_key = "~/.ssh/id_rsa"
}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Autonomous Linux"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "OS Management Service Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "MpHP:AP-SINGAPORE-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaabnaxyjkyhd4ahjjyvvfwlfp7sbw73rr75cxtdnf6q5o5waig7b6q"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-singapore-1.aaaaaaaadtamykq7twzss4mpiuq3tse7rjosvs4xafkeqmuewktyhpeknlma"
	}
	display_name = "VPN"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIPfU5xe+qiaCR+H/WaLO+u9syvzxX8UG3xa/BkUsH5c hridoy@nexisltd.com"
	}
	shape = "VM.Standard.E2.1.Micro"
	source_details {
		source_id = "ocid1.image.oc1.ap-singapore-1.aaaaaaaaclzjhmw5i6d3i76m32yxntvhzd3hztlt4ywi2vtwm62ajivketlq"
		source_type = "image"
	}
}
