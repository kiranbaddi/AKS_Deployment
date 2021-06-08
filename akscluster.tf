resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "${var.prefix}-k8s"
  location            = azurerm_resource_group.k8s.location
  resource_group_name = azurerm_resource_group.k8s.name
  dns_prefix          = var.prefix

  default_node_pool {
    name       = "default"
    node_count = var.workers
    vm_size    = var.worker_size
  }

  identity {
    type = "SystemAssigned"
  }
  tags = {
    CostCenter = var.CostCenter
    Environment = var.Environment
    DeployMode = "Terraform"
  }
}


