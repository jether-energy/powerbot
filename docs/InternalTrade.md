# InternalTrade


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**internal_trade_id** | **str** |  | [optional] 
**exchange** | **str** | The exchange against which the internal trade was executed. | [optional] 
**exec_time** | **datetime** | The timestamp when the trade was executed (UTC time zone) | [optional] 
**api_timestamp** | **datetime** |  | [optional] 
**buy_order_id** | **str** | the order_id of the underlying buy-order. If the internal trade was matched with a new order, the id remains empty. | [optional] 
**buy_cl_order_id** | **str** | the client order id of the buy order | [optional] 
**buy_txt** | **str** | the custom text of the buy order | [optional] 
**buy_aggressor_indicator** | [**AggressorIndicator**](AggressorIndicator.md) |  | [optional] 
**buy_portfolio_id** | **str** |  | [optional] 
**buy_delivery_area** | **str** |  | [optional] 
**sell_order_id** | **str** | The seller&#39;s order id. If the internal trade was matched with a new order, the id remains empty. | [optional] 
**sell_cl_order_id** | **str** | The sell order&#39;s client id | [optional] 
**sell_txt** | **str** | The sell order&#39;s custom text | [optional] 
**sell_aggressor_indicator** | [**AggressorIndicator**](AggressorIndicator.md) |  | [optional] 
**sell_portfolio_id** | **str** |  | [optional] 
**sell_delivery_area** | **str** |  | [optional] 
**contract_id** | **str** | The contract_id against which the trade was executed | [optional] 
**contract_name** | **str** | The contract&#39;s name against which the trade was executed. | [optional] 
**delivery_start** | **datetime** | Time when the delivery of this trade starts (UTC timezone) | [optional] 
**delivery_end** | **datetime** | Time when the delivery of this trade ends (UTC timezone) | [optional] 
**price** | **float** | Price of the trade | [optional] 
**quantity** | **float** | Quantity in MW of the trade | [optional] 
**prod** | **str** | Product ID | [optional] 

## Example

```python
from powerbot_client.models.internal_trade import InternalTrade

# TODO update the JSON string below
json = "{}"
# create an instance of InternalTrade from a JSON string
internal_trade_instance = InternalTrade.from_json(json)
# print the JSON string representation of the object
print(InternalTrade.to_json())

# convert the object into a dict
internal_trade_dict = internal_trade_instance.to_dict()
# create an instance of InternalTrade from a dict
internal_trade_from_dict = InternalTrade.from_dict(internal_trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


