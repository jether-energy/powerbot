# OrderBookDepthValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**depth** | **float** |  | [optional] 
**average_bid** | **float** | The average bid price for the given orderbook depth. | [optional] 
**average_ask** | **float** | The average ask price for the given orderbook depth. | [optional] 

## Example

```python
from powerbot_client.models.order_book_depth_value import OrderBookDepthValue

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookDepthValue from a JSON string
order_book_depth_value_instance = OrderBookDepthValue.from_json(json)
# print the JSON string representation of the object
print(OrderBookDepthValue.to_json())

# convert the object into a dict
order_book_depth_value_dict = order_book_depth_value_instance.to_dict()
# create an instance of OrderBookDepthValue from a dict
order_book_depth_value_from_dict = OrderBookDepthValue.from_dict(order_book_depth_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


