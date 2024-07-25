# SignalTimeSlice


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Indicates that this time slice is currently active. | [optional] 
**historic** | **bool** | Indicates that the time slice has been overwritten by a newer revision. | [optional] 
**deleted** | **bool** | Indicates that the time slice was deleted. | [optional] 
**received_at** | **datetime** | The timestamp when the signal was received. | [optional] 
**updated_at** | **datetime** | The timestamp when the signal was last updated. If an identical signal is received, this value will be updated without increasing the revision. | [optional] 
**minutes_to_delivery** | **int** | The offset in minutes until delivery start, after which the signal becomes valid. | [optional] 
**revision** | **int** | The number of times the trading signal has been updated. If the signal has never received any updates, then revision is 0. | [optional] 
**locked** | **bool** | Locked signals can not be modified, unless the &#x60;ignore_lock&#x60; parameter is set to &#x60;true&#x60;. | [optional] 
**parameters** | **object** | The content of the signal, as key/value pairs. | [optional] 

## Example

```python
from powerbot_client.models.signal_time_slice import SignalTimeSlice

# TODO update the JSON string below
json = "{}"
# create an instance of SignalTimeSlice from a JSON string
signal_time_slice_instance = SignalTimeSlice.from_json(json)
# print the JSON string representation of the object
print(SignalTimeSlice.to_json())

# convert the object into a dict
signal_time_slice_dict = signal_time_slice_instance.to_dict()
# create an instance of SignalTimeSlice from a dict
signal_time_slice_from_dict = SignalTimeSlice.from_dict(signal_time_slice_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


