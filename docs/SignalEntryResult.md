# SignalEntryResult

The object containing information regarding the result of an trading signal insertion request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** |  | [optional] 
**delivery_area** | **str** |  | [optional] 
**portfolio_id** | **str** |  | [optional] 
**delivery_start** | **datetime** |  | [optional] 
**delivery_end** | **datetime** |  | [optional] 
**minutes_to_delivery** | **int** |  | [optional] 
**status** | **str** |  | [optional] 
**status_text** | **str** |  | [optional] 

## Example

```python
from powerbot_client.models.signal_entry_result import SignalEntryResult

# TODO update the JSON string below
json = "{}"
# create an instance of SignalEntryResult from a JSON string
signal_entry_result_instance = SignalEntryResult.from_json(json)
# print the JSON string representation of the object
print(SignalEntryResult.to_json())

# convert the object into a dict
signal_entry_result_dict = signal_entry_result_instance.to_dict()
# create an instance of SignalEntryResult from a dict
signal_entry_result_from_dict = SignalEntryResult.from_dict(signal_entry_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


