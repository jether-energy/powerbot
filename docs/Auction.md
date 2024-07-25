# Auction

The auction object.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auction_id** | **str** | The ID of the auction. | 
**name** | **str** | The name of the auction. | 
**delivery_start** | **datetime** | The first delivery start of the auction. | 
**delivery_end** | **datetime** | The last delivery end of the auction. | 
**delivery_areas** | **List[str]** | The delivery areas where the auction takes place. | 
**contracts** | [**List[AuctionContract]**](AuctionContract.md) |  | 
**order_entry_start** | **datetime** | The time after which orders can be started to be placed. | [optional] 
**order_entry_end** | **datetime** | The time after which order placement is closed. | 
**state** | [**AuctionState**](AuctionState.md) |  | 

## Example

```python
from powerbot_client.models.auction import Auction

# TODO update the JSON string below
json = "{}"
# create an instance of Auction from a JSON string
auction_instance = Auction.from_json(json)
# print the JSON string representation of the object
print(Auction.to_json())

# convert the object into a dict
auction_dict = auction_instance.to_dict()
# create an instance of Auction from a dict
auction_from_dict = Auction.from_dict(auction_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


