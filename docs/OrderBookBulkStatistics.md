# OrderBookBulkStatistics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_timestamp** | **datetime** | The timestamp at which the calculation took place (UTC time zone). | [optional] 
**delivery_area** | **str** |  | [optional] 
**statistics** | [**List[OrderBookStatistics]**](OrderBookStatistics.md) |  | [optional] 

## Example

```python
from powerbot_client.models.order_book_bulk_statistics import OrderBookBulkStatistics

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookBulkStatistics from a JSON string
order_book_bulk_statistics_instance = OrderBookBulkStatistics.from_json(json)
# print the JSON string representation of the object
print(OrderBookBulkStatistics.to_json())

# convert the object into a dict
order_book_bulk_statistics_dict = order_book_bulk_statistics_instance.to_dict()
# create an instance of OrderBookBulkStatistics from a dict
order_book_bulk_statistics_from_dict = OrderBookBulkStatistics.from_dict(order_book_bulk_statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


