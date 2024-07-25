# DeliveryAreaState


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_area** | **str** |  | [optional] 
**state** | **str** | State of the delivery area | [optional] 
**trading_start** | **datetime** | The trading start time of the contract (only available when the contract is active) | [optional] 
**trading_end** | **datetime** | The trading end time of the contract (only available when the contract is active) | [optional] 

## Example

```python
from powerbot_client.models.delivery_area_state import DeliveryAreaState

# TODO update the JSON string below
json = "{}"
# create an instance of DeliveryAreaState from a JSON string
delivery_area_state_instance = DeliveryAreaState.from_json(json)
# print the JSON string representation of the object
print(DeliveryAreaState.to_json())

# convert the object into a dict
delivery_area_state_dict = delivery_area_state_instance.to_dict()
# create an instance of DeliveryAreaState from a dict
delivery_area_state_from_dict = DeliveryAreaState.from_dict(delivery_area_state_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


