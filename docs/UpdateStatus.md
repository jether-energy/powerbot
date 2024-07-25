# UpdateStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_mod_type** | **str** | * ACTI: Activates the order. Ignored if already active. * DEAC: Deactivates (hibernates) the order. Hibernated orders are removed from the order book but are still available for modification or activation in the own orders list. * DELE: Delete the order | 
**incl_pre_arranged** | **bool** | Include pre-arranged orders | [optional] [default to False]
**prod_name** | **List[str]** | Restrict the request to the given product(s) | [optional] 

## Example

```python
from powerbot_client.models.update_status import UpdateStatus

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateStatus from a JSON string
update_status_instance = UpdateStatus.from_json(json)
# print the JSON string representation of the object
print(UpdateStatus.to_json())

# convert the object into a dict
update_status_dict = update_status_instance.to_dict()
# create an instance of UpdateStatus from a dict
update_status_from_dict = UpdateStatus.from_dict(update_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


