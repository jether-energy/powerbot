# Requests

Specifies the amount of resources an algorithm receives.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **str** | The number of CPU cores that will be assigned to the algorithm provided as a decimal number, e.g. \&quot;0.5\&quot;, or \&quot;millicpus\&quot;, e.g \&quot;500m\&quot;. | [optional] 
**memory** | **str** | The amount of memory that will be assigned to the algorithm. The recommended format is a number followed by a suffix (e.g. Mi, Gi). | [optional] 

## Example

```python
from powerbot_client.models.requests import Requests

# TODO update the JSON string below
json = "{}"
# create an instance of Requests from a JSON string
requests_instance = Requests.from_json(json)
# print the JSON string representation of the object
print(Requests.to_json())

# convert the object into a dict
requests_dict = requests_instance.to_dict()
# create an instance of Requests from a dict
requests_from_dict = Requests.from_dict(requests_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


