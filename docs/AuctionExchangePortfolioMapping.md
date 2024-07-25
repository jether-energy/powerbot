# AuctionExchangePortfolioMapping


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**powerbot_portfolio_id** | **str** | The ID of the PowerBot portfolio. | [optional] 
**exchange_portfolio_name** | **str** | The ID of the exchange portfolio. | [optional] 
**currency_mapping** | [**List[DeliveryAreaCurrencyMapping]**](DeliveryAreaCurrencyMapping.md) |  | [optional] 
**delivery_areas** | **List[str]** | A subset of delivery areas the exchange portfolio has access to, to which the mapping should be applied. | [optional] 

## Example

```python
from powerbot_client.models.auction_exchange_portfolio_mapping import AuctionExchangePortfolioMapping

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionExchangePortfolioMapping from a JSON string
auction_exchange_portfolio_mapping_instance = AuctionExchangePortfolioMapping.from_json(json)
# print the JSON string representation of the object
print(AuctionExchangePortfolioMapping.to_json())

# convert the object into a dict
auction_exchange_portfolio_mapping_dict = auction_exchange_portfolio_mapping_instance.to_dict()
# create an instance of AuctionExchangePortfolioMapping from a dict
auction_exchange_portfolio_mapping_from_dict = AuctionExchangePortfolioMapping.from_dict(auction_exchange_portfolio_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


