# Contract


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product** | **str** | the contract&#39;s product | [optional] 
**contract_id** | **str** | The contract&#39;s unique id | [optional] 
**sequence_number** | **int** | DEPRECATED: use revision_no instead | [optional] 
**type** | [**ContractType**](ContractType.md) |  | [optional] [default to ContractType.PDC]
**state** | **str** | State of the contract | [optional] 
**active_since** | **datetime** | The timestamp (UTC) since when the contract has been observed as active for trading in the corresponding delivery area. Is reset to current time after a system or market outage or after the market was hibernated. Can be used to determine potential low liquidity situations after activation of new contracts or market outages. | [optional] 
**name** | **str** | The name of the contract | [optional] 
**del_units** | **float** | Delivery unit of the respective product. In case of product with type User-Defined Delivery Period this attribute is stored only with contract. | [optional] 
**revision_no** | **int** | A running number starting at 0; Every time the contract changes (i.e. a trade is made), this number increments. | [optional] 
**delivery_start** | **datetime** | The delivery start time (UTC) of the contract | [optional] 
**delivery_end** | **datetime** | The delivery end time (UTC) of the contract | [optional] 
**best_bid_price** | **float** | The price of the best bid. | [optional] 
**best_bid_quantity** | **float** | The quantity of the best bid. | [optional] 
**best_ask_price** | **float** | The price of the best ask. | [optional] 
**best_ask_quantity** | **float** | The quantity of the best ask. | [optional] 
**last_price** | **float** | The price of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**last_quantity** | **float** | The quantity of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**total_quantity** | **float** | The total volume of all trades  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Each side of a trade is counted separately, so a trade with both sides in the same market area gets counted twice. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**auction_price** | **float** | The day-ahead auction price of this contract (only available on Nord Pool) | [optional] 
**high** | **float** | The highest traded price  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**low** | **float** | The lowest traded price  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**last_trade_time** | **datetime** | The time of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**signals** | [**List[Signal]**](Signal.md) | The signals applicable for the contract | [optional] 
**vwap** | **float** | The volume weighted average price  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Each side of a trade is counted separately, so a trade with both sides in the same market area gets counted twice. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**avwa** | **float** | Volume weighted average price of all asks in the order book | [optional] 
**bvwa** | **float** | Volume weighted average price of all bids in the order book | [optional] 
**exchange_otr** | **float** | DEPRECATED: replaced by order action quota. Use exchange_otr from portfolio_information instead The OTR for this contract | [optional] 
**tenant_otr** | **float** | DEPRECATED: replaced by order action quota. use tenant_otr from portfolio_information instead The OTR for this contract for your tenant | [optional] 
**trading_start** | **datetime** | The trading start time of the contract (only available when the contract is active) | [optional] 
**trading_end** | **datetime** | The trading end time of the contract (only available when the contract is active) | [optional] 
**order_action_quota** | **float** | **Only supported for EPEX, Nord Pool, IBEX and CROPEX**  The percentage (0.0 - 1.0) of consumed order entry/modification quota calculated depending on the underlying exchange.  This value is calculated based on the following formula:  &#x60;max{short_usage/short_limit, long_usage/long_limit}&#x60; | [optional] 
**portfolio_information** | [**List[PortfolioInformation]**](PortfolioInformation.md) |  | [optional] 

## Example

```python
from powerbot_client.models.contract import Contract

# TODO update the JSON string below
json = "{}"
# create an instance of Contract from a JSON string
contract_instance = Contract.from_json(json)
# print the JSON string representation of the object
print(Contract.to_json())

# convert the object into a dict
contract_dict = contract_instance.to_dict()
# create an instance of Contract from a dict
contract_from_dict = Contract.from_dict(contract_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


