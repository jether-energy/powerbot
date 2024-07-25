# TimeSliceEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**minutes_to_delivery** | **int** | The offset in minutes until delivery start, after which the signal becomes active. This is used to pre-schedule signal that should become active at some point after being posted. Set it to a fixed constant (e.g. 2880 for 48 hours) if you don&#39;t intend on using pre-scheduled signals. | 
**locked** | **bool** | Setting this value to &#x60;true&#x60; marks this signal as locked. Locked signals can&#39;t be modified, unless the &#x60;ignore_lock&#x60; parameter is set to &#x60;true&#x60;. This can be useful if a signal needs to be manually adjusted and you don&#39;t want automated signal posting programs to overwrite it again. | [optional] 
**parameters** | **object** | The content of the signal. This can be any JSON object. If the top level fields &#x60;position_long&#x60; and &#x60;position_short&#x60; are present, they will be factored into the position calculation. | 

## Example

```python
from powerbot_client.models.time_slice_entry import TimeSliceEntry

# TODO update the JSON string below
json = "{}"
# create an instance of TimeSliceEntry from a JSON string
time_slice_entry_instance = TimeSliceEntry.from_json(json)
# print the JSON string representation of the object
print(TimeSliceEntry.to_json())

# convert the object into a dict
time_slice_entry_dict = time_slice_entry_instance.to_dict()
# create an instance of TimeSliceEntry from a dict
time_slice_entry_from_dict = TimeSliceEntry.from_dict(time_slice_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


