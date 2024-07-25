# AuctionAreaResult

The results of a contract in one delivery area

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_area** | **str** | The delivery area of the result. | 
**clearing_prices** | [**List[CurrencyPrice]**](CurrencyPrice.md) | The prices at which the auction was cleared for each currency. | [optional] 
**total_quantity** | **float** | The total quantity traded for the contract in this delivery area. | [optional] 

## Example

```python
from powerbot_client.models.auction_area_result import AuctionAreaResult

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionAreaResult from a JSON string
auction_area_result_instance = AuctionAreaResult.from_json(json)
# print the JSON string representation of the object
print(AuctionAreaResult.to_json())

# convert the object into a dict
auction_area_result_dict = auction_area_result_instance.to_dict()
# create an instance of AuctionAreaResult from a dict
auction_area_result_from_dict = AuctionAreaResult.from_dict(auction_area_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


