# AuctionExchangePortfolio

A exchange portfolio that the currently logged in user has access to. If a exchange portfolio is mapped to a PowerBot portfolio, the ID of the PowerBot portfolio is provided for respective areas. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_portfolio_name** | **str** | The name of the portfolio. Unique across portfolios. | [optional] 
**delivery_areas** | [**List[AuctionExchangePortfolioDeliveryArea]**](AuctionExchangePortfolioDeliveryArea.md) |  | 

## Example

```python
from powerbot_client.models.auction_exchange_portfolio import AuctionExchangePortfolio

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionExchangePortfolio from a JSON string
auction_exchange_portfolio_instance = AuctionExchangePortfolio.from_json(json)
# print the JSON string representation of the object
print(AuctionExchangePortfolio.to_json())

# convert the object into a dict
auction_exchange_portfolio_dict = auction_exchange_portfolio_instance.to_dict()
# create an instance of AuctionExchangePortfolio from a dict
auction_exchange_portfolio_from_dict = AuctionExchangePortfolio.from_dict(auction_exchange_portfolio_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


