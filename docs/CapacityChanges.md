# CapacityChanges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**changes** | [**List[Capacity]**](Capacity.md) |  | [optional] 

## Example

```python
from powerbot_client.models.capacity_changes import CapacityChanges

# TODO update the JSON string below
json = "{}"
# create an instance of CapacityChanges from a JSON string
capacity_changes_instance = CapacityChanges.from_json(json)
# print the JSON string representation of the object
print(CapacityChanges.to_json())

# convert the object into a dict
capacity_changes_dict = capacity_changes_instance.to_dict()
# create an instance of CapacityChanges from a dict
capacity_changes_from_dict = CapacityChanges.from_dict(capacity_changes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


