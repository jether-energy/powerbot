# OrderBook


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product** | **str** | The orderbook&#39;s product | [optional] 
**product_details** | **object** | The product&#39;s details (as delivered by the backend) | [optional] 
**delivery_area** | **str** | The EIC of the delivery area of the order book | [optional] 
**price_currency** | **str** | the price currency of the underlying contracts | [optional] 
**quantity_unit** | **str** | the quantity unit of the underlying contracts | [optional] 
**contracts** | [**List[Contract]**](Contract.md) | The contracts of the orderbook | [optional] 

## Example

```python
from powerbot_client.models.order_book import OrderBook

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBook from a JSON string
order_book_instance = OrderBook.from_json(json)
# print the JSON string representation of the object
print(OrderBook.to_json())

# convert the object into a dict
order_book_dict = order_book_instance.to_dict()
# create an instance of OrderBook from a dict
order_book_from_dict = OrderBook.from_dict(order_book_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


