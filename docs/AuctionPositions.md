# AuctionPositions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**net_pos** | **float** |  | [optional] 
**min_net_pos** | **float** |  | [optional] 
**max_net_pos** | **float** |  | [optional] 
**abs_pos** | **float** |  | [optional] 
**net_cash** | **float** |  | [optional] 
**trades_spending** | **float** |  | [optional] 
**trades_earnings** | **float** |  | [optional] 

## Example

```python
from powerbot_client.models.auction_positions import AuctionPositions

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionPositions from a JSON string
auction_positions_instance = AuctionPositions.from_json(json)
# print the JSON string representation of the object
print(AuctionPositions.to_json())

# convert the object into a dict
auction_positions_dict = auction_positions_instance.to_dict()
# create an instance of AuctionPositions from a dict
auction_positions_from_dict = AuctionPositions.from_dict(auction_positions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


