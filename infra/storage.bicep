param storageAccountName string = 'stpsruledemo001'
param location string = resourceGroup().location

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    // Intentionally weak settings for Phase 2 to catch:
    publicNetworkAccess: 'Enabled'
    minimumTlsVersion: 'TLS1_0'
    supportsHttpsTrafficOnly: false
  }
}