# DefaultAccountMapping

Default exchange account mapping by exchange and delivery area.  This mapping will be used to determine what exchange account gets used for orders if none is explicitly specified.  Possible values for account IDs can be found with `GET /market` in `available_account_ids`

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**mapping** | **Dict[str, str]** | A 1:1 map of delivery areas codes to account IDs | 

## Example

```python
from powerbot_client.models.default_account_mapping import DefaultAccountMapping

# TODO update the JSON string below
json = "{}"
# create an instance of DefaultAccountMapping from a JSON string
default_account_mapping_instance = DefaultAccountMapping.from_json(json)
# print the JSON string representation of the object
print(DefaultAccountMapping.to_json())

# convert the object into a dict
default_account_mapping_dict = default_account_mapping_instance.to_dict()
# create an instance of DefaultAccountMapping from a dict
default_account_mapping_from_dict = DefaultAccountMapping.from_dict(default_account_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


