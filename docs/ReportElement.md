# ReportElement


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_start** | **datetime** |  | [optional] 
**delivery_end** | **datetime** |  | [optional] 
**net_position** | **float** |  | [optional] 
**absolute_position** | **float** |  | [optional] 
**net_cash_position** | **float** |  | [optional] 
**buy_quantity** | **float** | Total buy quantity for this time period in MW | [optional] 
**sell_quantity** | **float** | Total sell quantity for this time period in MW | [optional] 
**average_buy_price** | **float** |  | [optional] 
**average_sell_price** | **float** |  | [optional] 
**trades** | [**List[Trade]**](Trade.md) |  | [optional] 
**internal_trades** | [**List[InternalTrade]**](InternalTrade.md) |  | [optional] 
**position_short** | **float** |  | [optional] 
**position_long** | **float** |  | [optional] 
**position_sources** | [**List[PositionSource]**](PositionSource.md) |  | [optional] 

## Example

```python
from powerbot_client.models.report_element import ReportElement

# TODO update the JSON string below
json = "{}"
# create an instance of ReportElement from a JSON string
report_element_instance = ReportElement.from_json(json)
# print the JSON string representation of the object
print(ReportElement.to_json())

# convert the object into a dict
report_element_dict = report_element_instance.to_dict()
# create an instance of ReportElement from a dict
report_element_from_dict = ReportElement.from_dict(report_element_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


