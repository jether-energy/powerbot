# AuctionConstraints

Constraints of an auction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_price** | **float** |  | 
**max_price** | **float** |  | 
**price_tick** | **float** |  | [optional] 

## Example

```python
from powerbot_client.models.auction_constraints import AuctionConstraints

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionConstraints from a JSON string
auction_constraints_instance = AuctionConstraints.from_json(json)
# print the JSON string representation of the object
print(AuctionConstraints.to_json())

# convert the object into a dict
auction_constraints_dict = auction_constraints_instance.to_dict()
# create an instance of AuctionConstraints from a dict
auction_constraints_from_dict = AuctionConstraints.from_dict(auction_constraints_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


