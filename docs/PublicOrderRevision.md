# PublicOrderRevision


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **str** | The unique ID of this order. | 
**price** | **float** |  | 
**quantity** | **float** | The quantity of the orders. A value of zero means that the order was deleted, hibernated or fully executed. | 
**created_at** | **datetime** | The time when the order first appeared. | 
**updated_at** | **datetime** | The time when the order was last modified. This can be earlier than the &#x60;time&#x60; field of the order book revision because the exchange batches multiple order changes into one revision. | 

## Example

```python
from powerbot_client.models.public_order_revision import PublicOrderRevision

# TODO update the JSON string below
json = "{}"
# create an instance of PublicOrderRevision from a JSON string
public_order_revision_instance = PublicOrderRevision.from_json(json)
# print the JSON string representation of the object
print(PublicOrderRevision.to_json())

# convert the object into a dict
public_order_revision_dict = public_order_revision_instance.to_dict()
# create an instance of PublicOrderRevision from a dict
public_order_revision_from_dict = PublicOrderRevision.from_dict(public_order_revision_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


