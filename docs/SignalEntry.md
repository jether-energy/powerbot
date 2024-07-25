# SignalEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** | The identifier of the system which emitted the signal. | 
**delivery_area** | **str** | The EIC of the delivery area for which the signal is applicable. | 
**portfolio_id** | **str** | The portfolio for which the signal is applicable. | 
**delivery_start** | **datetime** | The parameters delivery_start together with delivery_end define the contracts for which the signal is valid for. | 
**delivery_end** | **datetime** | The parameters delivery_start together with delivery_end define the contracts for which the signal is valid for. | 
**time_slices** | [**List[TimeSliceEntry]**](TimeSliceEntry.md) | The list of time slices. The creation of multiple time slices allows you to pre-schedule updates to the signal based on the time to delivery start of a contract. | [optional] 

## Example

```python
from powerbot_client.models.signal_entry import SignalEntry

# TODO update the JSON string below
json = "{}"
# create an instance of SignalEntry from a JSON string
signal_entry_instance = SignalEntry.from_json(json)
# print the JSON string representation of the object
print(SignalEntry.to_json())

# convert the object into a dict
signal_entry_dict = signal_entry_instance.to_dict()
# create an instance of SignalEntry from a dict
signal_entry_from_dict = SignalEntry.from_dict(signal_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


