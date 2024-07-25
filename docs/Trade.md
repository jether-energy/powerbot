# Trade


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trade_id** | **str** | Unique trade_id | [optional] 
**state** | [**TradeState**](TradeState.md) |  | [optional] [default to TradeState.ACTI]
**exchange** | **str** | The exchange where the trade was executed | [optional] 
**delivery_area** | **str** | If you sold energy with this trade, delivery_area will contain the sell_delivery_area, otherwise the buy_delivery_area | [optional] 
**api_timestamp** | **datetime** | The timestamp when the trade was received (UTC time zone) | [optional] 
**exec_time** | **datetime** | The timestamp when the trade was executed (UTC time zone) | [optional] 
**buy** | **bool** | true if you bought energy | [optional] 
**sell** | **bool** | true if you sold energy | [optional] 
**buy_order_id** | **str** | the order_id of the underlying buy-order | [optional] 
**buy_delivery_area** | **str** | The delivery area of the buy-side of the trade. | [optional] 
**buy_cl_order_id** | **str** | the client order id of the buy order | [optional] 
**buy_txt** | **str** | the custom text of the buy order | [optional] 
**buy_user_code** | **str** | the buyer&#39;s exchange user code | [optional] 
**buy_member_id** | **str** | the buyer&#39;s exchange member id | [optional] 
**buy_aggressor_indicator** | [**AggressorIndicator**](AggressorIndicator.md) |  | [optional] 
**buy_portfolio_id** | **str** |  | [optional] 
**sell_order_id** | **str** | The seller&#39;s order id | [optional] 
**sell_delivery_area** | **str** | delivery area of the sell order | [optional] 
**sell_cl_order_id** | **str** | The sell order&#39;s client id | [optional] 
**sell_txt** | **str** | The sell order&#39;s custom text | [optional] 
**sell_user_code** | **str** | The seller&#39;s exchange user code | [optional] 
**sell_member_id** | **str** | The seller&#39;s exchange member id | [optional] 
**sell_aggressor_indicator** | [**AggressorIndicator**](AggressorIndicator.md) |  | [optional] 
**sell_portfolio_id** | **str** |  | [optional] 
**contract_id** | **str** | The contract_id against which the trade was executed | [optional] 
**contract_name** | **str** | The contract&#39;s name against which the trade was executed. | [optional] 
**delivery_start** | **datetime** | Time when the delivery of this trade starts (UTC timezone) | [optional] 
**delivery_end** | **datetime** | Time when the delivery of this trade ends (UTC timezone) | [optional] 
**price** | **float** | Price of the trade | [optional] 
**quantity** | **float** | Quantity in MW for this trade | [optional] 
**prod** | **str** | Product id | [optional] 
**self_trade** | **bool** |  | [optional] 
**pre_arranged** | **bool** |  | [optional] 
**pre_arrange_type** | **str** |  | [optional] 
**buy_clearing_account_type** | **str** | A label for internal use, indicating whether the order is entered on its own account (\&quot;P\&quot;) or as an agent (\&quot;A\&quot;). This label does not impact exchange functionality and is primarily used for internal categorization.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). | [optional] 
**sell_clearing_account_type** | **str** | A label for internal use, indicating whether the order is entered on its own account (\&quot;P\&quot;) or as an agent (\&quot;A\&quot;). This label does not impact exchange functionality and is primarily used for internal categorization.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). | [optional] 
**buy_account_id** | **str** | The account for which the order was entered. | [optional] 
**sell_account_id** | **str** | The account for which the order was entered. | [optional] 
**location** | **str** | Location within the delivery area.  **Note**: At this moment only M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM) supports this field. | [optional] 

## Example

```python
from powerbot_client.models.trade import Trade

# TODO update the JSON string below
json = "{}"
# create an instance of Trade from a JSON string
trade_instance = Trade.from_json(json)
# print the JSON string representation of the object
print(Trade.to_json())

# convert the object into a dict
trade_dict = trade_instance.to_dict()
# create an instance of Trade from a dict
trade_from_dict = Trade.from_dict(trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


