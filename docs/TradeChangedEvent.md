# TradeChangedEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**delivery_area** | **str** |  | [optional] 
**sell_portfolio_id** | **str** |  | [optional] 
**buy_portfolio_id** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**trade_id** | **str** |  | [optional] 
**trade_type** | **str** |  | [optional] 
**state** | [**TradeState**](TradeState.md) |  | [optional] [default to TradeState.ACTI]
**delivery_start** | **datetime** | Time when the delivery of this trade starts (UTC timezone) | [optional] 
**delivery_end** | **datetime** | Time when the delivery of this trade ends (UTC timezone) | [optional] 

## Example

```python
from powerbot_client.models.trade_changed_event import TradeChangedEvent

# TODO update the JSON string below
json = "{}"
# create an instance of TradeChangedEvent from a JSON string
trade_changed_event_instance = TradeChangedEvent.from_json(json)
# print the JSON string representation of the object
print(TradeChangedEvent.to_json())

# convert the object into a dict
trade_changed_event_dict = trade_changed_event_instance.to_dict()
# create an instance of TradeChangedEvent from a dict
trade_changed_event_from_dict = TradeChangedEvent.from_dict(trade_changed_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


