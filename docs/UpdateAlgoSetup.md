# UpdateAlgoSetup


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the algorithm | [optional] 
**description** | **str** | A short description of the algorithm | [optional] 
**require_heartbeat_every_seconds** | **int** | Specifies how often the algorithm requires a heartbeat via POST/.../heartbeat. Must be &gt; 0 | [optional] 
**on_missing_heartbeat** | [**OnMissingHeartbeat**](OnMissingHeartbeat.md) |  | [optional] 
**image** | **str** | The image of the algorithm, this can be any valid docker image name with a tag. The tag can not be \&quot;latest\&quot; to avoid accidental upgrades. | [optional] 
**parameter_schema_name** | **str** | The JSON schema name for the payload of object parameters required by the algo. | [optional] 
**parameter_schema_version** | **str** | The JSON schema version for the payload of object parameters required by the algo. | [optional] 
**signal_schema_name** | **str** | The JSON schema name for the payload of object parameters required by signals. | [optional] 
**signal_schema_version** | **str** | The JSON schema version for the payload of object parameters required by the signals. | [optional] 
**resources** | [**Resources**](Resources.md) |  | [optional] 

## Example

```python
from powerbot_client.models.update_algo_setup import UpdateAlgoSetup

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAlgoSetup from a JSON string
update_algo_setup_instance = UpdateAlgoSetup.from_json(json)
# print the JSON string representation of the object
print(UpdateAlgoSetup.to_json())

# convert the object into a dict
update_algo_setup_dict = update_algo_setup_instance.to_dict()
# create an instance of UpdateAlgoSetup from a dict
update_algo_setup_from_dict = UpdateAlgoSetup.from_dict(update_algo_setup_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


