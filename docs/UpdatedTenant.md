# UpdatedTenant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the tenant | 

## Example

```python
from powerbot_client.models.updated_tenant import UpdatedTenant

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatedTenant from a JSON string
updated_tenant_instance = UpdatedTenant.from_json(json)
# print the JSON string representation of the object
print(UpdatedTenant.to_json())

# convert the object into a dict
updated_tenant_dict = updated_tenant_instance.to_dict()
# create an instance of UpdatedTenant from a dict
updated_tenant_from_dict = UpdatedTenant.from_dict(updated_tenant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


