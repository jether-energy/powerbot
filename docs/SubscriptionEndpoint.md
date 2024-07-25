# SubscriptionEndpoint


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol** | **List[str]** |  | [optional] 
**path** | **str** |  | [optional] 
**destination** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**payload_classes** | **List[str]** |  | [optional] 

## Example

```python
from powerbot_client.models.subscription_endpoint import SubscriptionEndpoint

# TODO update the JSON string below
json = "{}"
# create an instance of SubscriptionEndpoint from a JSON string
subscription_endpoint_instance = SubscriptionEndpoint.from_json(json)
# print the JSON string representation of the object
print(SubscriptionEndpoint.to_json())

# convert the object into a dict
subscription_endpoint_dict = subscription_endpoint_instance.to_dict()
# create an instance of SubscriptionEndpoint from a dict
subscription_endpoint_from_dict = SubscriptionEndpoint.from_dict(subscription_endpoint_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


