# RollingWindowCount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_window_seconds** | **int** | The rolling window size defines a timeframe in seconds, where orders placed or modified are counted. | [optional] 
**current_order_count** | **int** | The amount of orders added or modified in a given timeframe. | [optional] 

## Example

```python
from powerbot_client.models.rolling_window_count import RollingWindowCount

# TODO update the JSON string below
json = "{}"
# create an instance of RollingWindowCount from a JSON string
rolling_window_count_instance = RollingWindowCount.from_json(json)
# print the JSON string representation of the object
print(RollingWindowCount.to_json())

# convert the object into a dict
rolling_window_count_dict = rolling_window_count_instance.to_dict()
# create an instance of RollingWindowCount from a dict
rolling_window_count_from_dict = RollingWindowCount.from_dict(rolling_window_count_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


