# IPAllowlistEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **str** | IP or IP/mask | 
**description** | **str** | description for the IP address | [optional] 

## Example

```python
from powerbot_client.models.ip_allowlist_entry import IPAllowlistEntry

# TODO update the JSON string below
json = "{}"
# create an instance of IPAllowlistEntry from a JSON string
ip_allowlist_entry_instance = IPAllowlistEntry.from_json(json)
# print the JSON string representation of the object
print(IPAllowlistEntry.to_json())

# convert the object into a dict
ip_allowlist_entry_dict = ip_allowlist_entry_instance.to_dict()
# create an instance of IPAllowlistEntry from a dict
ip_allowlist_entry_from_dict = IPAllowlistEntry.from_dict(ip_allowlist_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


