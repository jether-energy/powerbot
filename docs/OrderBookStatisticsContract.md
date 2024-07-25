# OrderBookStatisticsContract


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**product** | **str** |  | [optional] 
**best_bid_price** | **float** | The price of the best bid. | [optional] 
**best_bid_quantity** | **float** | The quantity of the best bid. | [optional] 
**best_ask_price** | **float** | The price of the best ask. | [optional] 
**best_ask_quantity** | **float** | The quantity of the best ask. | [optional] 
**last_price** | **float** | The price of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**last_quantity** | **float** | The quantity of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**total_quantity** | **float** | The total volume of all trades  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Each side of a trade is counted separately, so a trade with both sides in the same market area gets counted twice. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**high** | **float** | The highest traded price  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**low** | **float** | The lowest traded price  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**vwap** | **float** | The volume weighted average price  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Each side of a trade is counted separately, so a trade with both sides in the same market area gets counted twice. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**depth_values** | [**List[OrderBookDepthValue]**](OrderBookDepthValue.md) |  | [optional] 
**average_bid** | **float** |  | [optional] 
**average_ask** | **float** |  | [optional] 

## Example

```python
from powerbot_client.models.order_book_statistics_contract import OrderBookStatisticsContract

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookStatisticsContract from a JSON string
order_book_statistics_contract_instance = OrderBookStatisticsContract.from_json(json)
# print the JSON string representation of the object
print(OrderBookStatisticsContract.to_json())

# convert the object into a dict
order_book_statistics_contract_dict = order_book_statistics_contract_instance.to_dict()
# create an instance of OrderBookStatisticsContract from a dict
order_book_statistics_contract_from_dict = OrderBookStatisticsContract.from_dict(order_book_statistics_contract_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


