# AuctionOrderData

The order data of the order. Either curves or blocks, but not both.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blocks** | [**List[Block]**](Block.md) |  | [optional] 
**curves** | [**List[Curve]**](Curve.md) |  | [optional] 

## Example

```python
from powerbot_client.models.auction_order_data import AuctionOrderData

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionOrderData from a JSON string
auction_order_data_instance = AuctionOrderData.from_json(json)
# print the JSON string representation of the object
print(AuctionOrderData.to_json())

# convert the object into a dict
auction_order_data_dict = auction_order_data_instance.to_dict()
# create an instance of AuctionOrderData from a dict
auction_order_data_from_dict = AuctionOrderData.from_dict(auction_order_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


