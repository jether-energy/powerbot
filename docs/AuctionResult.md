# AuctionResult

The result of an auction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auction_id** | **str** | The ID of the auction. | 
**delivery_start** | **datetime** | The first delivery start of the auction. | 
**delivery_end** | **datetime** | The last delivery end of the auction. | 
**state** | [**AuctionResultState**](AuctionResultState.md) |  | [optional] 
**contract_results** | [**List[AuctionContractResult]**](AuctionContractResult.md) | The contracts of the auction. | [optional] 

## Example

```python
from powerbot_client.models.auction_result import AuctionResult

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionResult from a JSON string
auction_result_instance = AuctionResult.from_json(json)
# print the JSON string representation of the object
print(AuctionResult.to_json())

# convert the object into a dict
auction_result_dict = auction_result_instance.to_dict()
# create an instance of AuctionResult from a dict
auction_result_from_dict = AuctionResult.from_dict(auction_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


