# AuctionExchange


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**status** | **str** | The status of the exchange. | 
**logged_in_username** | **str** | The username of the currently logged in account. | [optional] 

## Example

```python
from powerbot_client.models.auction_exchange import AuctionExchange

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionExchange from a JSON string
auction_exchange_instance = AuctionExchange.from_json(json)
# print the JSON string representation of the object
print(AuctionExchange.to_json())

# convert the object into a dict
auction_exchange_dict = auction_exchange_instance.to_dict()
# create an instance of AuctionExchange from a dict
auction_exchange_from_dict = AuctionExchange.from_dict(auction_exchange_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


