# OrderActionQuotaLimit


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**order_quota_limit** | **float** | The order action quota limit allows to restrict the order action quota of a tenant/portfolio. Without a limit set, orders can be placed until 100% of the quota set by the exchange is used. | 

## Example

```python
from powerbot_client.models.order_action_quota_limit import OrderActionQuotaLimit

# TODO update the JSON string below
json = "{}"
# create an instance of OrderActionQuotaLimit from a JSON string
order_action_quota_limit_instance = OrderActionQuotaLimit.from_json(json)
# print the JSON string representation of the object
print(OrderActionQuotaLimit.to_json())

# convert the object into a dict
order_action_quota_limit_dict = order_action_quota_limit_instance.to_dict()
# create an instance of OrderActionQuotaLimit from a dict
order_action_quota_limit_from_dict = OrderActionQuotaLimit.from_dict(order_action_quota_limit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


