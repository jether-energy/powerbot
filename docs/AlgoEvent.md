# AlgoEvent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**algorithm_id** | **str** |  | [optional] 
**algo_name** | **str** |  | [optional] 
**require_heartbeat_every_seconds** | **int** |  | [optional] 
**instance_id** | **str** |  | [optional] 
**instance_parameters** | **object** |  | [optional] 
**portfolio_id** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**stop_status_text** | **str** |  | [optional] 
**action** | [**AlgoStatus**](AlgoStatus.md) |  | [optional] 

## Example

```python
from powerbot_client.models.algo_event import AlgoEvent

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoEvent from a JSON string
algo_event_instance = AlgoEvent.from_json(json)
# print the JSON string representation of the object
print(AlgoEvent.to_json())

# convert the object into a dict
algo_event_dict = algo_event_instance.to_dict()
# create an instance of AlgoEvent from a dict
algo_event_from_dict = AlgoEvent.from_dict(algo_event_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


