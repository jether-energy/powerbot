# AuctionAreaResultTrade

The trade of an auction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The ID of the trade, provided by the exchange. | 
**price** | **float** | The price of the trade. | 
**quantity** | **float** | The quantity of the trade. | 
**state** | [**TradeState**](TradeState.md) |  | [default to TradeState.ACTI]

## Example

```python
from powerbot_client.models.auction_area_result_trade import AuctionAreaResultTrade

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionAreaResultTrade from a JSON string
auction_area_result_trade_instance = AuctionAreaResultTrade.from_json(json)
# print the JSON string representation of the object
print(AuctionAreaResultTrade.to_json())

# convert the object into a dict
auction_area_result_trade_dict = auction_area_result_trade_instance.to_dict()
# create an instance of AuctionAreaResultTrade from a dict
auction_area_result_trade_from_dict = AuctionAreaResultTrade.from_dict(auction_area_result_trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


