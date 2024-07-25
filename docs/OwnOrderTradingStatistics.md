# OwnOrderTradingStatistics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time_series_from** | **datetime** | Start of the time period | 
**time_series_to** | **datetime** | End of the time period, if bucket size does not divide end of last full bucket | 
**time_series_bucket_size_seconds** | **int** | Length of the time bucket in seconds | 
**order_revision_series** | **List[int]** | Order revision count per bucket | 
**trade_volume_series** | **List[float]** | Trade volume sum per bucket | 
**order_revisions_total** | **int** | Total revision count over whole range | 
**trade_volume_total** | **float** | Total trade volume sum over whole range | 

## Example

```python
from powerbot_client.models.own_order_trading_statistics import OwnOrderTradingStatistics

# TODO update the JSON string below
json = "{}"
# create an instance of OwnOrderTradingStatistics from a JSON string
own_order_trading_statistics_instance = OwnOrderTradingStatistics.from_json(json)
# print the JSON string representation of the object
print(OwnOrderTradingStatistics.to_json())

# convert the object into a dict
own_order_trading_statistics_dict = own_order_trading_statistics_instance.to_dict()
# create an instance of OwnOrderTradingStatistics from a dict
own_order_trading_statistics_from_dict = OwnOrderTradingStatistics.from_dict(own_order_trading_statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


