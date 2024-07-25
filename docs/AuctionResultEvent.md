# AuctionResultEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**exchange** | [**Exchange**](Exchange.md) |  | [optional] 
**auction_id** | **str** |  | [optional] 
**state** | [**AuctionResultState**](AuctionResultState.md) |  | [optional] 

## Example

```python
from powerbot_client.models.auction_result_event import AuctionResultEvent

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionResultEvent from a JSON string
auction_result_event_instance = AuctionResultEvent.from_json(json)
# print the JSON string representation of the object
print(AuctionResultEvent.to_json())

# convert the object into a dict
auction_result_event_dict = auction_result_event_instance.to_dict()
# create an instance of AuctionResultEvent from a dict
auction_result_event_from_dict = AuctionResultEvent.from_dict(auction_result_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


