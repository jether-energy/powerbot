# NewTenant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | A unique id (max 5 alphanumeric characters) of the tenant | 
**name** | **str** | The name of the tenant | 
**risk_management** | [**RiskManagementSettings**](RiskManagementSettings.md) |  | 

## Example

```python
from powerbot_client.models.new_tenant import NewTenant

# TODO update the JSON string below
json = "{}"
# create an instance of NewTenant from a JSON string
new_tenant_instance = NewTenant.from_json(json)
# print the JSON string representation of the object
print(NewTenant.to_json())

# convert the object into a dict
new_tenant_dict = new_tenant_instance.to_dict()
# create an instance of NewTenant from a dict
new_tenant_from_dict = NewTenant.from_dict(new_tenant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


