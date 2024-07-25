# AlgoHeartbeat


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**InstanceHeartbeatStatus**](InstanceHeartbeatStatus.md) |  | [optional] 
**status_text** | **str** | Detail information about the status | [optional] 

## Example

```python
from powerbot_client.models.algo_heartbeat import AlgoHeartbeat

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoHeartbeat from a JSON string
algo_heartbeat_instance = AlgoHeartbeat.from_json(json)
# print the JSON string representation of the object
print(AlgoHeartbeat.to_json())

# convert the object into a dict
algo_heartbeat_dict = algo_heartbeat_instance.to_dict()
# create an instance of AlgoHeartbeat from a dict
algo_heartbeat_from_dict = AlgoHeartbeat.from_dict(algo_heartbeat_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


