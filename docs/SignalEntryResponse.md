# SignalEntryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SignalEntryResult]**](SignalEntryResult.md) | Contains an entry for each signal that was applied (modified/created) or had an error. Signals without changes are omitted. | [optional] 

## Example

```python
from powerbot_client.models.signal_entry_response import SignalEntryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SignalEntryResponse from a JSON string
signal_entry_response_instance = SignalEntryResponse.from_json(json)
# print the JSON string representation of the object
print(SignalEntryResponse.to_json())

# convert the object into a dict
signal_entry_response_dict = signal_entry_response_instance.to_dict()
# create an instance of SignalEntryResponse from a dict
signal_entry_response_from_dict = SignalEntryResponse.from_dict(signal_entry_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


