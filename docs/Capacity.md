# Capacity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_timestamp** | **datetime** | DEPRECATED: Use timestamp instead. The timestamp of the entry being received by the PowerBot API | [optional] 
**timestamp** | **datetime** | The timestamp when the data was sent from the capacity system of the exchange | [optional] 
**from_delivery_area** | **str** | EIC of the outgoing area | 
**to_delivery_area** | **str** | EIC of the incoming area | 
**revision** | **int** | Revision number of the entry | [optional] 
**delivery_start** | **datetime** | Delivery start date-time | 
**delivery_end** | **datetime** | Delivery end date-time | 
**var_in** | **float** | The ATC value from \&quot;to_delivery_area\&quot; to \&quot;from_delivery_area\&quot; | 
**out** | **float** | The ATC value from \&quot;from_delivery_area\&quot; to \&quot;to_delivery_area\&quot; | 

## Example

```python
from powerbot_client.models.capacity import Capacity

# TODO update the JSON string below
json = "{}"
# create an instance of Capacity from a JSON string
capacity_instance = Capacity.from_json(json)
# print the JSON string representation of the object
print(Capacity.to_json())

# convert the object into a dict
capacity_dict = capacity_instance.to_dict()
# create an instance of Capacity from a dict
capacity_from_dict = Capacity.from_dict(capacity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


