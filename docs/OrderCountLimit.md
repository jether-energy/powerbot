# OrderCountLimit

A rolling window is defined to limit the number of orders being placed or modified by the user in that time window. E.g. if an allowed count of 1000 and a rolling window of 86400 seconds (24 hours) is defined, 1000 orders can be placed or modified during that time frame. The window is defined as a timespan from now minus the defined length in seconds. As the window moves along, placement capacities are freed again.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**rolling_window_seconds** | **int** | The rolling window size defines a timeframe in seconds, where orders placed or modified are counted. | 
**allowed_order_count** | **int** | The amount of allowed orders added or modified in a given timeframe. | 

## Example

```python
from powerbot_client.models.order_count_limit import OrderCountLimit

# TODO update the JSON string below
json = "{}"
# create an instance of OrderCountLimit from a JSON string
order_count_limit_instance = OrderCountLimit.from_json(json)
# print the JSON string representation of the object
print(OrderCountLimit.to_json())

# convert the object into a dict
order_count_limit_dict = order_count_limit_instance.to_dict()
# create an instance of OrderCountLimit from a dict
order_count_limit_from_dict = OrderCountLimit.from_dict(order_count_limit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


