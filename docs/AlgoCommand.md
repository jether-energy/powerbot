# AlgoCommand


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**command** | **str** | The command for the algorithm-instance. | [optional] 

## Example

```python
from powerbot_client.models.algo_command import AlgoCommand

# TODO update the JSON string below
json = "{}"
# create an instance of AlgoCommand from a JSON string
algo_command_instance = AlgoCommand.from_json(json)
# print the JSON string representation of the object
print(AlgoCommand.to_json())

# convert the object into a dict
algo_command_dict = algo_command_instance.to_dict()
# create an instance of AlgoCommand from a dict
algo_command_from_dict = AlgoCommand.from_dict(algo_command_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


