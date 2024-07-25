# ContractHistoryItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**as_of** | **datetime** | The timestamp as of the entry is valid | [optional] 
**revision_no** | **int** | The running revision number of the entry | [optional] 
**delivery_area** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**vwap** | **float** | The volume weighted average price at that time | [optional] 
**best_bid_price** | **float** | The price of the best bid. | [optional] 
**best_bid_quantity** | **float** | The quantity of the best bid. | [optional] 
**best_ask_price** | **float** | The price of the best ask. | [optional] 
**best_ask_quantity** | **float** | The quantity of the best ask. | [optional] 
**last_price** | **float** | The price of the last trade at that time | [optional] 
**last_quantity** | **float** | The quantity of the last trade at that time | [optional] 
**total_quantity** | **float** | The total volume of the contract at that time | [optional] 
**revision_quantity** | **float** | The traded volume since the last revision | [optional] 
**auction_price** | **float** |  | [optional] 
**high** | **float** | Highest traded price since the start of the trading period at the current point in time. | [optional] 
**low** | **float** | Lowest traded price since the start of the trading period at the current point in time. | [optional] 
**signals** | [**List[Signal]**](Signal.md) | Signals valid as of the current point in time. | [optional] 
**trades** | [**List[Trade]**](Trade.md) | Lists the trades which occurred since the previous point in time. | [optional] 
**internal_trades** | [**List[InternalTrade]**](InternalTrade.md) | Lists the internal trades which occurred since the previous point in time. | [optional] 
**orders** | [**Orders**](Orders.md) |  | [optional] 

## Example

```python
from powerbot_client.models.contract_history_item import ContractHistoryItem

# TODO update the JSON string below
json = "{}"
# create an instance of ContractHistoryItem from a JSON string
contract_history_item_instance = ContractHistoryItem.from_json(json)
# print the JSON string representation of the object
print(ContractHistoryItem.to_json())

# convert the object into a dict
contract_history_item_dict = contract_history_item_instance.to_dict()
# create an instance of ContractHistoryItem from a dict
contract_history_item_from_dict = ContractHistoryItem.from_dict(contract_history_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


