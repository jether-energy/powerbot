# OrderBookGroup


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**best_price_changed** | **bool** | True if the best ask or best bid order changed. | [optional] 
**best_bid_price_changed** | **bool** | True if the best best bid order changed. | [optional] 
**best_ask_price_changed** | **bool** | True if the best best ask order changed. | [optional] 
**best_bid_quantity_changed** | **bool** | True if the quantity of the best bid order changed. | [optional] 
**best_ask_quantity_changed** | **bool** | True if the quantity of the best ask order changed. | [optional] 
**changed_contract** | [**RelatedContract**](RelatedContract.md) |  | [optional] 
**related_contracts** | [**List[RelatedContract]**](RelatedContract.md) |  | [optional] 

## Example

```python
from powerbot_client.models.order_book_group import OrderBookGroup

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookGroup from a JSON string
order_book_group_instance = OrderBookGroup.from_json(json)
# print the JSON string representation of the object
print(OrderBookGroup.to_json())

# convert the object into a dict
order_book_group_dict = order_book_group_instance.to_dict()
# create an instance of OrderBookGroup from a dict
order_book_group_from_dict = OrderBookGroup.from_dict(order_book_group_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


