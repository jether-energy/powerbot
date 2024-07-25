# AuctionTrade

todo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The ID of the trade, provided by the exchange. | 
**auction_id** | **str** | The ID of the auction the trade belongs to. | 
**contract_id** | **str** | The ID of the contract the trade belongs to. | 
**delivery_start** | **datetime** | The delivery start of the trade. | [optional] 
**delivery_end** | **datetime** | The delivery end of the trade. | [optional] 
**order_id** | **str** | The ID of the order the trade belongs to. | 
**delivery_area** | **str** | The delivery area of the trade. | 
**price** | **float** | The price of the trade. | 
**currency** | **str** |  | [optional] 
**quantity** | **float** | The quantity of the trade. | 
**state** | [**AuctionTradeState**](AuctionTradeState.md) |  | 
**user_id** | **str** | The exchange user that was used to place the order | 

## Example

```python
from powerbot_client.models.auction_trade import AuctionTrade

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionTrade from a JSON string
auction_trade_instance = AuctionTrade.from_json(json)
# print the JSON string representation of the object
print(AuctionTrade.to_json())

# convert the object into a dict
auction_trade_dict = auction_trade_instance.to_dict()
# create an instance of AuctionTrade from a dict
auction_trade_from_dict = AuctionTrade.from_dict(auction_trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


