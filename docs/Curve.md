# Curve

A list of discrete number pair making up a curve.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** | The contract ID of the curve. | 
**comment** | **str** | The comment of the curve. This field will be identical across all curves in case its a nordpool order. | [optional] 
**curve_points** | [**List[CurvePoint]**](CurvePoint.md) |  | 

## Example

```python
from powerbot_client.models.curve import Curve

# TODO update the JSON string below
json = "{}"
# create an instance of Curve from a JSON string
curve_instance = Curve.from_json(json)
# print the JSON string representation of the object
print(Curve.to_json())

# convert the object into a dict
curve_dict = curve_instance.to_dict()
# create an instance of Curve from a dict
curve_from_dict = Curve.from_dict(curve_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


