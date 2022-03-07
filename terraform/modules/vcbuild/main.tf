data "template_file" "task" {
  template = file("${path.module}/files/vctemplate.json.tpl")

  vars = {
    esxi_hostname         = var.esxi_hostname
    esxi_username         = var.esxi_username
    esxi_password         = var.esxi_password
    vm_network            = var.vm_network
    esxi_datastore        = var.esxi_datastore
    vcsa_disk_mode        = var.vcsa_disk_mode
    vcsa_size             = var.vcsa_size
    vcsa_vm_name          = var.vcsa_vm_name
    ip_family             = var.ip_family
    ip_configuration_mode = var.ip_configuration_mode
    ip_address            = var.ip_address
    dns_servers           = var.dns_servers
    cidr_prefix           = var.cidr_prefix
    default_gateway_ip    = var.default_gateway_ip
    vcsa_hostname         = var.vcsa_hostname
    vcsa_password         = var.vcsa_password
    enable_ssh            = var.enable_ssh
    sso_password          = var.sso_password
  }
}

resource "local_file" "foo" {
  content  = data.template_file.task.rendered
  filename = "${path.module}/files/vctemplate.json"
}

resource "null_resource" "vc" {
  provisioner "local-exec" {
    command = "/mnt/a/vcsa-cli-installer/lin64/vcsa-deploy.bin install --verbose --accept-eula --acknowledge-ceip --no-ssl-certificate-verification ${path.module}/files/vctemplate.json"
  }
}
