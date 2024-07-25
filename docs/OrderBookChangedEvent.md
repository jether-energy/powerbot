# OrderBookChangedEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**portfolio_id** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**contract_type** | [**ContractType**](ContractType.md) |  | [optional] [default to ContractType.PDC]
**delivery_area** | **str** |  | [optional] 
**delivery_start** | **datetime** |  | [optional] 
**delivery_end** | **datetime** |  | [optional] 
**active_since** | **datetime** | The timestamp (UTC) since when the contract has been observed as active for trading in the corresponding delivery area. Is reset to current time after a system or market outage or after the market was hibernated. Can be used to determine potential low liquidity situations after activation of new contracts or market outages. | [optional] 
**revision** | **int** |  | [optional] 
**sequence_number** | **int** | DEPRECATED: use revision instead | [optional] 
**best_price_changed** | **bool** | True if the best ask or best bid order changed. | [optional] 
**best_bid_price_changed** | **bool** | True if the best best bid order changed. | [optional] 
**best_ask_price_changed** | **bool** | True if the best best ask order changed. | [optional] 
**best_bid_quantity_changed** | **bool** | True if the quantity of the best bid order changed. | [optional] 
**best_ask_quantity_changed** | **bool** | True if the quantity of the best ask order changed. | [optional] 

## Example

```python
from powerbot_client.models.order_book_changed_event import OrderBookChangedEvent

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookChangedEvent from a JSON string
order_book_changed_event_instance = OrderBookChangedEvent.from_json(json)
# print the JSON string representation of the object
print(OrderBookChangedEvent.to_json())

# convert the object into a dict
order_book_changed_event_dict = order_book_changed_event_instance.to_dict()
# create an instance of OrderBookChangedEvent from a dict
order_book_changed_event_from_dict = OrderBookChangedEvent.from_dict(order_book_changed_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


