# AlgoDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algo_id** | **str** | The id of the algorithm | [optional] 
**algo_name** | **str** | The name of the algorithm | [optional] 
**algo_description** | **str** | The description of the algorithm | [optional] 
**require_heartbeat_every_seconds** | **int** | Information on how often the heartbeat requires a heartbeat | [optional] 
**on_missing_heartbeat** | [**OnMissingHeartbeat**](OnMissingHeartbeat.md) |  | [optional] 
**image** | **str** | The image of the algorithm, this can be any valid docker image name with a tag. The tag can not be \&quot;latest\&quot; to avoid accidental upgrades. | [optional] 
**instances** | [**List[AlgoInstance]**](AlgoInstance.md) | Returns the running and recently exited / stale instances | [optional] 
**parameter_schema_name** | **str** | The JSON schema name for the payload of object parameters required by the algo. | [optional] 
**parameter_schema_version** | **str** | The JSON schema version for the payload of object parameters required by the algo. | [optional] 
**signal_schema_name** | **str** | The JSON schema name for the payload of object parameters required by signals. | [optional] 
**signal_schema_version** | **str** | The JSON schema version for the payload of object parameters required by signals. | [optional] 
**resources** | [**Resources**](Resources.md) |  | [optional] 

## Example

```python
from powerbot_client.models.algo_details import AlgoDetails

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoDetails from a JSON string
algo_details_instance = AlgoDetails.from_json(json)
# print the JSON string representation of the object
print(AlgoDetails.to_json())

# convert the object into a dict
algo_details_dict = algo_details_instance.to_dict()
# create an instance of AlgoDetails from a dict
algo_details_from_dict = AlgoDetails.from_dict(algo_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


