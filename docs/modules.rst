.. _Modules:

Build Concept
=============
The vCenter Server Appliance installer supports an unattended, command-line installation/deployment. This installation option is outlined in detail in VMWare's documentation here:

https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vcenter.install.doc/GUID-C17AFF44-22DE-41F4-B85D-19B7A995E144.html

The core concept is that a template file in .json syntax will define the configuration of the VCSA server installation, allowing for an unattended install of the VCSA appliance.

VC Build Module
===============

The build module will parse user-provided input variables to define the values in the vctemplate.json.tpl file:

vctemplate.json.tpl
###################
```
{
    "__version": "2.13.0",
    "__comments": "Sample template to deploy a vCenter Server Appliance with an embedded Platform Services Controller on an ESXi host.",
    "new_vcsa": {
        "esxi": {
            "hostname": "${esxi_hostname}",
            "username": "${esxi_username}",
            "password": "${esxi_password}",
            "deployment_network": "${vm_network}",
            "datastore": "${esxi_datastore}"
        },
        "appliance": {
            "__comments": [
                "You must provide the 'deployment_option' key with a value, which will affect the VCSA's configuration parameters, such as the VCSA's number of vCPUs, the memory size, the storage size, and the maximum numbers of ESXi hosts and VMs which can be managed. For a list of acceptable values, run the supported deployment sizes help, i.e. vcsa-deploy --supported-deployment-sizes"
            ],
            "thin_disk_mode": ${vcsa_disk_mode},
            "deployment_option": "${vcsa_size}",
            "name": "${vcsa_vm_name}"
        },
        "network": {
            "ip_family": "${ip_family}",
            "mode": "${ip_configuration_mode}",
            "ip": "${ip_address}",
            "dns_servers": [
                "${dns_servers}"
            ],
            "prefix": "${cidr_prefix}",
            "gateway": "${default_gateway_ip}",
            "system_name": "${vcsa_hostname}"
            },
        "os": {
            "password": "${vcsa_password}",
            "ntp_servers": "time.nist.gov",
            "ssh_enable": ${enable_ssh}
        },
        "sso": {
            "password": "${sso_password}",
            "domain_name": "vsphere.local"
        }
    },
    "ceip": {
        "settings": {
            "ceip_enabled": true
        }
    }
}

```
