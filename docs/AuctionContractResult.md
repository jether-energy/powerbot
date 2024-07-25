# AuctionContractResult

The result of a contract of an auction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract** | [**AuctionContract**](AuctionContract.md) |  | 
**delivery_areas** | [**List[AuctionAreaResult]**](AuctionAreaResult.md) | The delivery areas of the contract | 

## Example

```python
from powerbot_client.models.auction_contract_result import AuctionContractResult

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionContractResult from a JSON string
auction_contract_result_instance = AuctionContractResult.from_json(json)
# print the JSON string representation of the object
print(AuctionContractResult.to_json())

# convert the object into a dict
auction_contract_result_dict = auction_contract_result_instance.to_dict()
# create an instance of AuctionContractResult from a dict
auction_contract_result_from_dict = AuctionContractResult.from_dict(auction_contract_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


