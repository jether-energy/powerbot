# AlgoInstanceParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instance_id** | **str** | Unique id which needs to be provided to identify the algorithm instance. | 
**tenant_id** | **str** | master-API-key needs to specify a tenant on creation. For tenant-master-API-keys this field is optional, as the tenant is already specified via the key. | [optional] 
**portfolio_ids** | **List[str]** | Specify the portfolios the algorithm should run in. | [optional] 
**parameters** | **object** | A freely defined JSON object with key/value pairs. | [optional] 
**resources** | [**Resources**](Resources.md) |  | [optional] 

## Example

```python
from powerbot_client.models.algo_instance_parameters import AlgoInstanceParameters

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoInstanceParameters from a JSON string
algo_instance_parameters_instance = AlgoInstanceParameters.from_json(json)
# print the JSON string representation of the object
print(AlgoInstanceParameters.to_json())

# convert the object into a dict
algo_instance_parameters_dict = algo_instance_parameters_instance.to_dict()
# create an instance of AlgoInstanceParameters from a dict
algo_instance_parameters_from_dict = AlgoInstanceParameters.from_dict(algo_instance_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


