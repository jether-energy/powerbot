# LimitViolation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**delivery_area** | **str** |  | [optional] 
**violation_type** | **str** |  | [optional] 

## Example

```python
from powerbot_client.models.limit_violation import LimitViolation

# TODO update the JSON string below
json = "{}"
# create an instance of LimitViolation from a JSON string
limit_violation_instance = LimitViolation.from_json(json)
# print the JSON string representation of the object
print(LimitViolation.to_json())

# convert the object into a dict
limit_violation_dict = limit_violation_instance.to_dict()
# create an instance of LimitViolation from a dict
limit_violation_from_dict = LimitViolation.from_dict(limit_violation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


