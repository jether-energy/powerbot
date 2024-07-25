# AuctionExchangePortfolioCurrency


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_portfolio_name** | **str** |  | [optional] 
**currency** | **str** |  | [optional] 

## Example

```python
from powerbot_client.models.auction_exchange_portfolio_currency import AuctionExchangePortfolioCurrency

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionExchangePortfolioCurrency from a JSON string
auction_exchange_portfolio_currency_instance = AuctionExchangePortfolioCurrency.from_json(json)
# print the JSON string representation of the object
print(AuctionExchangePortfolioCurrency.to_json())

# convert the object into a dict
auction_exchange_portfolio_currency_dict = auction_exchange_portfolio_currency_instance.to_dict()
# create an instance of AuctionExchangePortfolioCurrency from a dict
auction_exchange_portfolio_currency_from_dict = AuctionExchangePortfolioCurrency.from_dict(auction_exchange_portfolio_currency_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


