# NewInternalTrade


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | **str** | The exchange where the trade was executed | [optional] 
**delivery_start** | **datetime** |  | [optional] 
**delivery_end** | **datetime** |  | [optional] 
**exec_time** | **datetime** | The timestamp when the trade was executed (UTC time zone) | 
**buy_delivery_area** | **str** |  | [optional] 
**buy_txt** | **str** | The custom text of the buy order | [optional] 
**buy_portfolio_id** | **str** |  | [optional] 
**buy_aggressor_indicator** | [**AggressorIndicator**](AggressorIndicator.md) |  | [optional] 
**sell_delivery_area** | **str** |  | [optional] 
**sell_txt** | **str** | the custom text of the sell order | [optional] 
**sell_portfolio_id** | **str** |  | [optional] 
**sell_aggressor_indicator** | [**AggressorIndicator**](AggressorIndicator.md) |  | [optional] 
**contract_id** | **str** | The contract_id against which the trade was executed | [optional] 
**price** | **float** | Price of the trade | 
**quantity** | **float** |  | 

## Example

```python
from powerbot_client.models.new_internal_trade import NewInternalTrade

# TODO update the JSON string below
json = "{}"
# create an instance of NewInternalTrade from a JSON string
new_internal_trade_instance = NewInternalTrade.from_json(json)
# print the JSON string representation of the object
print(NewInternalTrade.to_json())

# convert the object into a dict
new_internal_trade_dict = new_internal_trade_instance.to_dict()
# create an instance of NewInternalTrade from a dict
new_internal_trade_from_dict = NewInternalTrade.from_dict(new_internal_trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


