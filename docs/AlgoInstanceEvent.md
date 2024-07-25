# AlgoInstanceEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**algorithm** | [**AlgoDetails**](AlgoDetails.md) |  | 
**emitted_at** | **datetime** |  | 
**change** | [**AlgoInstanceChange**](AlgoInstanceChange.md) |  | 

## Example

```python
from powerbot_client.models.algo_instance_event import AlgoInstanceEvent

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoInstanceEvent from a JSON string
algo_instance_event_instance = AlgoInstanceEvent.from_json(json)
# print the JSON string representation of the object
print(AlgoInstanceEvent.to_json())

# convert the object into a dict
algo_instance_event_dict = algo_instance_event_instance.to_dict()
# create an instance of AlgoInstanceEvent from a dict
algo_instance_event_from_dict = AlgoInstanceEvent.from_dict(algo_instance_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


