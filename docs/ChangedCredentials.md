# ChangedCredentials


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_password** | **str** |  | 
**new_password** | **str** |  | 

## Example

```python
from powerbot_client.models.changed_credentials import ChangedCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of ChangedCredentials from a JSON string
changed_credentials_instance = ChangedCredentials.from_json(json)
# print the JSON string representation of the object
print(ChangedCredentials.to_json())

# convert the object into a dict
changed_credentials_dict = changed_credentials_instance.to_dict()
# create an instance of ChangedCredentials from a dict
changed_credentials_from_dict = ChangedCredentials.from_dict(changed_credentials_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


