# SignalChanges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**portfolio_id** | **str** |  | [optional] 
**signals** | [**List[Signal]**](Signal.md) |  | [optional] 

## Example

```python
from powerbot_client.models.signal_changes import SignalChanges

# TODO update the JSON string below
json = "{}"
# create an instance of SignalChanges from a JSON string
signal_changes_instance = SignalChanges.from_json(json)
# print the JSON string representation of the object
print(SignalChanges.to_json())

# convert the object into a dict
signal_changes_dict = signal_changes_instance.to_dict()
# create an instance of SignalChanges from a dict
signal_changes_from_dict = SignalChanges.from_dict(signal_changes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


