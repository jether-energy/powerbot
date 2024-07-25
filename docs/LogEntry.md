# LogEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique id of the log entry | [optional] [readonly] 
**received** | **datetime** | The timestamp when the trading API has received the log entry. UTC timezone is used. | [optional] [readonly] 
**text** | **str** | The content of your log entry | 
**as_of** | **datetime** | Should be set to the time (UTC) when the log entry was emitted by your system | 
**category** | **str** | An optional category of the log entry | [optional] 
**severity** | [**Severity**](Severity.md) |  | [optional] [default to Severity.MED]
**portfolio_id** | **str** | The portfolio for which the log entry is applicable | [optional] 

## Example

```python
from powerbot_client.models.log_entry import LogEntry

# TODO update the JSON string below
json = "{}"
# create an instance of LogEntry from a JSON string
log_entry_instance = LogEntry.from_json(json)
# print the JSON string representation of the object
print(LogEntry.to_json())

# convert the object into a dict
log_entry_dict = log_entry_instance.to_dict()
# create an instance of LogEntry from a dict
log_entry_from_dict = LogEntry.from_dict(log_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


