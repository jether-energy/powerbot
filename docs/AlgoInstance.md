# AlgoInstance


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instance_id** | **str** | Unique id of the instance | [optional] 
**exchange** | **str** | Specifies the exchange from which the instance has been created. | [optional] 
**tenant_id** | **str** | The tenant for this instance. | [optional] 
**portfolio_ids** | **List[str]** | The configured portfolios for this instance. | [optional] 
**parameters** | **object** | A freely defined JSON object with key/value pairs. | [optional] 
**status** | [**AlgoStatus**](AlgoStatus.md) |  | [optional] 
**started_at** | **datetime** | A timestamp containing information on when the alogrithm-instance was started. | [optional] 
**stopped_at** | **datetime** | A timestamp containing information on when the alogrithm-instance was stopped. | [optional] 
**stop_status_text** | **str** | A message containing detail information on why the algorithm-instance was stopped. | [optional] 
**last_heartbeat_at** | **datetime** | A timestamp containing information on when the last heartbeat was received. | [optional] 
**resources** | [**Resources**](Resources.md) |  | [optional] 
**heartbeat** | [**AlgoHeartbeat**](AlgoHeartbeat.md) |  | [optional] 

## Example

```python
from powerbot_client.models.algo_instance import AlgoInstance

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoInstance from a JSON string
algo_instance_instance = AlgoInstance.from_json(json)
# print the JSON string representation of the object
print(AlgoInstance.to_json())

# convert the object into a dict
algo_instance_dict = algo_instance_instance.to_dict()
# create an instance of AlgoInstance from a dict
algo_instance_from_dict = AlgoInstance.from_dict(algo_instance_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


