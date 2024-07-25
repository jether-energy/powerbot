# OrderBookEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **str** |  | [optional] 
**delivery_area** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**order_entry_time** | **datetime** |  | [optional] 
**price** | **float** |  | [optional] 
**quantity** | **float** |  | [optional] 
**exe_restriction** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**own_order** | **bool** | True if the order belongs to the active exchange user. Only present for active orders. | [optional] 

## Example

```python
from powerbot_client.models.order_book_entry import OrderBookEntry

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookEntry from a JSON string
order_book_entry_instance = OrderBookEntry.from_json(json)
# print the JSON string representation of the object
print(OrderBookEntry.to_json())

# convert the object into a dict
order_book_entry_dict = order_book_entry_instance.to_dict()
# create an instance of OrderBookEntry from a dict
order_book_entry_from_dict = OrderBookEntry.from_dict(order_book_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


