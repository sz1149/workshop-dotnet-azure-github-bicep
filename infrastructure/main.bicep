param location string = 'centralus'
@allowed(['dev', 'qa', 'uat', 'prod'])
param environment string

targetScope = 'resourceGroup'

module app './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-stuartz'
    environment: environment
    location: location
  }
}
