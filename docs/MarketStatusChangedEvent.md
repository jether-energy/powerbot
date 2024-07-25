# MarketStatusChangedEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**market_status** | [**MarketStatus**](MarketStatus.md) |  | [optional] 

## Example

```python
from powerbot_client.models.market_status_changed_event import MarketStatusChangedEvent

# TODO update the JSON string below
json = "{}"
# create an instance of MarketStatusChangedEvent from a JSON string
market_status_changed_event_instance = MarketStatusChangedEvent.from_json(json)
# print the JSON string representation of the object
print(MarketStatusChangedEvent.to_json())

# convert the object into a dict
market_status_changed_event_dict = market_status_changed_event_instance.to_dict()
# create an instance of MarketStatusChangedEvent from a dict
market_status_changed_event_from_dict = MarketStatusChangedEvent.from_dict(market_status_changed_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


