# SignalSourceDurations


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** | The unique signal source | [optional] 
**durations** | **List[int]** | The durations of the source with their respective delivery period. | [optional] 

## Example

```python
from powerbot_client.models.signal_source_durations import SignalSourceDurations

# TODO update the JSON string below
json = "{}"
# create an instance of SignalSourceDurations from a JSON string
signal_source_durations_instance = SignalSourceDurations.from_json(json)
# print the JSON string representation of the object
print(SignalSourceDurations.to_json())

# convert the object into a dict
signal_source_durations_dict = signal_source_durations_instance.to_dict()
# create an instance of SignalSourceDurations from a dict
signal_source_durations_from_dict = SignalSourceDurations.from_dict(signal_source_durations_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


