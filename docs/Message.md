# Message


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **str** |  | [optional] 
**api_timestamp** | **datetime** |  | [optional] 
**category** | **str** |  | [optional] 
**message_class** | **str** |  | [optional] 
**content_type** | **str** |  | [optional] 
**correlation_id** | **str** |  | [optional] 
**direction** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**group_sequence** | **str** |  | [optional] 
**content** | **object** |  | [optional] 

## Example

```python
from powerbot_client.models.message import Message

# TODO update the JSON string below
json = "{}"
# create an instance of Message from a JSON string
message_instance = Message.from_json(json)
# print the JSON string representation of the object
print(Message.to_json())

# convert the object into a dict
message_dict = message_instance.to_dict()
# create an instance of Message from a dict
message_from_dict = Message.from_dict(message_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


