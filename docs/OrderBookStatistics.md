# OrderBookStatistics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_start** | **datetime** | The delivery start time of the contract. | [optional] 
**delivery_end** | **datetime** | The delivery end time of the contract. | [optional] 
**contracts** | [**List[OrderBookStatisticsContract]**](OrderBookStatisticsContract.md) |  | [optional] 

## Example

```python
from powerbot_client.models.order_book_statistics import OrderBookStatistics

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookStatistics from a JSON string
order_book_statistics_instance = OrderBookStatistics.from_json(json)
# print the JSON string representation of the object
print(OrderBookStatistics.to_json())

# convert the object into a dict
order_book_statistics_dict = order_book_statistics_instance.to_dict()
# create an instance of OrderBookStatistics from a dict
order_book_statistics_from_dict = OrderBookStatistics.from_dict(order_book_statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


