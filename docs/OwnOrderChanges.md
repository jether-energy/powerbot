# OwnOrderChanges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**orders** | [**List[OwnOrder]**](OwnOrder.md) |  | [optional] 

## Example

```python
from powerbot_client.models.own_order_changes import OwnOrderChanges

# TODO update the JSON string below
json = "{}"
# create an instance of OwnOrderChanges from a JSON string
own_order_changes_instance = OwnOrderChanges.from_json(json)
# print the JSON string representation of the object
print(OwnOrderChanges.to_json())

# convert the object into a dict
own_order_changes_dict = own_order_changes_instance.to_dict()
# create an instance of OwnOrderChanges from a dict
own_order_changes_from_dict = OwnOrderChanges.from_dict(own_order_changes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


