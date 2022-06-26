# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "your-vm" {
    
    # VM General Settings
    target_node = "powerhouse"
    vmid = "167"
    name = "test"
    desc = "Description"

    # VM Advanced General Settings
    onboot = true 

    # VM OS Settings
    clone = "ubuntu-cloud-22.04"

    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"    
    
    # VM Memory Settings
    memory = 1024

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=10.27.27.124/24,gw=10.27.27.1"
    
    # (Optional) Default User
    ciuser = "sysadmin"
    
    # (Optional) Add your SSH KEY
    sshkeys = <<EOF
    ssh-rsa 
    AAAAB3NzaC1yc2EAAAADAQABAAACAQDIM3h+ZZcEOyV/gASzwUbTglBKppMbNQWdsYjnEgTf/HnpucEMYKUd6m1QizDXu+lpvsJfsQnR8bZN3MKFIPbsNJkDt762pmq2tggE40W8n2ba0YjVPe4WshVuA7HTyJ/BYmAO1A+c/OYaJPAhboOz2L2BnRYdyuyWWfzvu9RIfB3hqQg1ugCv1br2bWkv/RSRBQwv/k3C9gyRf2LiRxcXwDp/qqIol4Akqkofxsrs9hQYUdXBwh6KRcFlNyQPTtzOCxszDUMEtSVfQE0B2m37HD1vnKDYF0UpeQUradvaiD/nRyG2QrfSLLl7CRuuXfu7dh6cLTL1pJydsYfxnPOphJtD+ro6Q6htPcXz1nP7OyMPq7lF0niHl/+6FZaJHkJOGXg1bHsX1D7DYK+IRWh6AnGYc9Kry+NlfA8+d1ynIPRofwyT+eRAciD6a0i0sl6RTPqKvfFIb3T1vGEhi46Tni/D1MrF9WR7PuV7Rius+lHr7whhHEvJa2pXP0btm7xxm4YTKmA6468FrFWYT20pYEiIgDMPP+Nel4bjIFgad+hP1X9WF7eNp7XjGwycE5+XwMJLUsjr3ZE+TM/kPNtSZJqt1T9gl62hz9QANe6T6FKlEdKg9veaPalfbM/xT/jQeliLw+EpoL8T9uv8ezIH8NG2RkaESxRymCT1J/ym2w== 
    emon5@DESKTOP-ISTIAK-HASSAN-EMON
    EOF
}