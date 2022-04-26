resource "azurerm_kubernetes_cluster" "cluster" {
  name                 = var.kubernetes_cluster_name
  location             = azurerm_resource_group.diplomado.location
  resource_group_name  = azurerm_resource_group.diplomado.name
  dns_prefix           = "aks1"
  kubernetes_version   = "1.22.6"
  azure_policy_enabled = true
 
  azure_active_directory_role_based_access_control {
    azure_rbac_enabled = true
    managed            = true
  } 

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  } 

  default_node_pool {
    name                = "default"
    node_count          = 1
    vm_size             = "Standard_D4ads_v5"
    enable_auto_scaling = true
    min_count           = 1 
    max_count           = 3
    max_pods            = 80
    node_labels = {
      "Adicional" = "Equipo5"
    }
    
  }

  service_principal {
    client_id     = "ed588096-60ed-47fa-8ce5-ab245a80c908"
    client_secret = "BY58Q~IKs2~4utYXqS~OeLjRqPAOp5_tHgTH1cSZ"
  }
}
