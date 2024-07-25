# AuctionOrderEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auction_id** | **str** | The ID of the auction. | 
**delivery_area** | **str** | The designated delivery area of the order. | 
**portfolio_id** | **str** | The portfolio ID of the order. | 
**order_data** | [**AuctionOrderData**](AuctionOrderData.md) |  | 

## Example

```python
from powerbot_client.models.auction_order_entry import AuctionOrderEntry

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionOrderEntry from a JSON string
auction_order_entry_instance = AuctionOrderEntry.from_json(json)
# print the JSON string representation of the object
print(AuctionOrderEntry.to_json())

# convert the object into a dict
auction_order_entry_dict = auction_order_entry_instance.to_dict()
# create an instance of AuctionOrderEntry from a dict
auction_order_entry_from_dict = AuctionOrderEntry.from_dict(auction_order_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


