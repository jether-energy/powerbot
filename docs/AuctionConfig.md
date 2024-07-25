# AuctionConfig

The configuration of the auction module for an exchange.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portfolios** | [**List[AuctionExchangePortfolio]**](AuctionExchangePortfolio.md) |  | 

## Example

```python
from powerbot_client.models.auction_config import AuctionConfig

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionConfig from a JSON string
auction_config_instance = AuctionConfig.from_json(json)
# print the JSON string representation of the object
print(AuctionConfig.to_json())

# convert the object into a dict
auction_config_dict = auction_config_instance.to_dict()
# create an instance of AuctionConfig from a dict
auction_config_from_dict = AuctionConfig.from_dict(auction_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


