# AuctionContract

A contract of an auction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** | The ID of the contract. | 
**delivery_start** | **datetime** | The delivery start of the contract. | 
**delivery_end** | **datetime** | The delivery end of the contract. | 
**delivery_areas** | **List[str]** | The delivery areas where the contract is tradeable. | 

## Example

```python
from powerbot_client.models.auction_contract import AuctionContract

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionContract from a JSON string
auction_contract_instance = AuctionContract.from_json(json)
# print the JSON string representation of the object
print(AuctionContract.to_json())

# convert the object into a dict
auction_contract_dict = auction_contract_instance.to_dict()
# create an instance of AuctionContract from a dict
auction_contract_from_dict = AuctionContract.from_dict(auction_contract_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


