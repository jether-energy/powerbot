# AuctionOrder

The order of an auction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **str** | The ID of the current order revision. | 
**auction_id** | **str** | The ID of the auction. | 
**delivery_area** | **str** | The delivery area of the order. | 
**portfolio_id** | **str** | The ID of the portfolio. | 
**currency** | **str** | The currency of the order. | [optional] 
**modified_at** | **datetime** | The timestamp of the last order modification. | 
**revision** | **int** |  | 
**state** | [**AuctionOrderState**](AuctionOrderState.md) |  | 
**type** | [**AuctionOrderType**](AuctionOrderType.md) |  | [optional] 
**order_data** | [**AuctionOrderData**](AuctionOrderData.md) |  | 

## Example

```python
from powerbot_client.models.auction_order import AuctionOrder

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionOrder from a JSON string
auction_order_instance = AuctionOrder.from_json(json)
# print the JSON string representation of the object
print(AuctionOrder.to_json())

# convert the object into a dict
auction_order_dict = auction_order_instance.to_dict()
# create an instance of AuctionOrder from a dict
auction_order_from_dict = AuctionOrder.from_dict(auction_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


