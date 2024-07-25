# OwnTradeChanges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**trades** | [**List[Trade]**](Trade.md) |  | [optional] 
**internal_trades** | [**List[InternalTrade]**](InternalTrade.md) |  | [optional] 

## Example

```python
from powerbot_client.models.own_trade_changes import OwnTradeChanges

# TODO update the JSON string below
json = "{}"
# create an instance of OwnTradeChanges from a JSON string
own_trade_changes_instance = OwnTradeChanges.from_json(json)
# print the JSON string representation of the object
print(OwnTradeChanges.to_json())

# convert the object into a dict
own_trade_changes_dict = own_trade_changes_instance.to_dict()
# create an instance of OwnTradeChanges from a dict
own_trade_changes_from_dict = OwnTradeChanges.from_dict(own_trade_changes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


