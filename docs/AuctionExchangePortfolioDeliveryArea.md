# AuctionExchangePortfolioDeliveryArea

The delivery areas of the exchange portfolio, grouped by currency.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** |  | 
**delivery_area** | **str** |  | 
**powerbot_portfolio_id** | **str** | The powerbot portfolio ID to which the delivery area + exchange portfolio is mapped. | [optional] 

## Example

```python
from powerbot_client.models.auction_exchange_portfolio_delivery_area import AuctionExchangePortfolioDeliveryArea

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionExchangePortfolioDeliveryArea from a JSON string
auction_exchange_portfolio_delivery_area_instance = AuctionExchangePortfolioDeliveryArea.from_json(json)
# print the JSON string representation of the object
print(AuctionExchangePortfolioDeliveryArea.to_json())

# convert the object into a dict
auction_exchange_portfolio_delivery_area_dict = auction_exchange_portfolio_delivery_area_instance.to_dict()
# create an instance of AuctionExchangePortfolioDeliveryArea from a dict
auction_exchange_portfolio_delivery_area_from_dict = AuctionExchangePortfolioDeliveryArea.from_dict(auction_exchange_portfolio_delivery_area_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


