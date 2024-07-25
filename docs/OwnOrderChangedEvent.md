# OwnOrderChangedEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**portfolio_id** | **str** |  | [optional] 
**delivery_area** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**state** | [**OrderState**](OrderState.md) |  | [optional] 
**order_id** | **str** |  | [optional] 
**action** | [**OrderAction**](OrderAction.md) |  | [optional] 

## Example

```python
from powerbot_client.models.own_order_changed_event import OwnOrderChangedEvent

# TODO update the JSON string below
json = "{}"
# create an instance of OwnOrderChangedEvent from a JSON string
own_order_changed_event_instance = OwnOrderChangedEvent.from_json(json)
# print the JSON string representation of the object
print(OwnOrderChangedEvent.to_json())

# convert the object into a dict
own_order_changed_event_dict = own_order_changed_event_instance.to_dict()
# create an instance of OwnOrderChangedEvent from a dict
own_order_changed_event_from_dict = OwnOrderChangedEvent.from_dict(own_order_changed_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


