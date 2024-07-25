# LogEntryAdded


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**log_entry** | [**LogEntry**](LogEntry.md) |  | [optional] 

## Example

```python
from powerbot_client.models.log_entry_added import LogEntryAdded

# TODO update the JSON string below
json = "{}"
# create an instance of LogEntryAdded from a JSON string
log_entry_added_instance = LogEntryAdded.from_json(json)
# print the JSON string representation of the object
print(LogEntryAdded.to_json())

# convert the object into a dict
log_entry_added_dict = log_entry_added_instance.to_dict()
# create an instance of LogEntryAdded from a dict
log_entry_added_from_dict = LogEntryAdded.from_dict(log_entry_added_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


