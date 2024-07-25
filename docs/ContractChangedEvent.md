# ContractChangedEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**contract_name** | **str** |  | [optional] 
**contract_type** | [**ContractType**](ContractType.md) |  | [optional] [default to ContractType.PDC]
**delivery_area** | **str** |  | [optional] 
**trading_enabled** | **bool** |  | [optional] 
**delivery_start** | **datetime** |  | [optional] 
**delivery_end** | **datetime** |  | [optional] 

## Example

```python
from powerbot_client.models.contract_changed_event import ContractChangedEvent

# TODO update the JSON string below
json = "{}"
# create an instance of ContractChangedEvent from a JSON string
contract_changed_event_instance = ContractChangedEvent.from_json(json)
# print the JSON string representation of the object
print(ContractChangedEvent.to_json())

# convert the object into a dict
contract_changed_event_dict = contract_changed_event_instance.to_dict()
# create an instance of ContractChangedEvent from a dict
contract_changed_event_from_dict = ContractChangedEvent.from_dict(contract_changed_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


