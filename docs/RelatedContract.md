# RelatedContract


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**product** | **str** | The contract&#39;s product. | [optional] 
**delivery_area** | **str** | The EIC of the delivery area of the order book&#39;s product. | [optional] 
**active_since** | **datetime** | The timestamp (UTC) since when the contract has been observed as active for trading in the corresponding delivery area. Is reset to current time after a system or market outage or after the market was hibernated. Can be used to determine potential low liquidity situations after activation of new contracts or market outages. | [optional] 
**revision** | **int** | Revision number of the order book. | [optional] 
**sequence_number** | **int** | DEPRECATED: use revision instead | [optional] 
**delivery_start** | **datetime** | Delivery start of the contract. | [optional] 
**delivery_end** | **datetime** | Delivery end of the contract. | [optional] 
**best_own_bid_price** | **float** | Best bid price placed by your exchange member. | [optional] 
**best_own_bid_quantity** | **float** | Quantity of the best bid placed by your exchange member. | [optional] 
**best_own_ask_price** | **float** | Best ask price placed by your exchange member. | [optional] 
**best_own_ask_quantity** | **float** | Quantity of the best ask placed your exchange member. | [optional] 
**best_third_party_bid_price** | **float** | Best bid price placed by an exchange member other than yours. | [optional] 
**best_third_party_bid_quantity** | **float** | Quantity of the best bid placed by an exchange member other than yours. | [optional] 
**best_third_party_ask_price** | **float** | Best ask price placed by an exchange member other than yours. | [optional] 
**best_third_party_ask_quantity** | **float** | Quantity of the best ask placed by an exchange member other than yours. | [optional] 
**last_price** | **float** | The price of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**last_quantity** | **float** | The quantity of the last trade  All trades in the market area of the contract&#39;s delivery area are included. Trades for the XBID contract of the same delivery period as a local contract and vice versa will also be included. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 

## Example

```python
from powerbot_client.models.related_contract import RelatedContract

# TODO update the JSON string below
json = "{}"
# create an instance of RelatedContract from a JSON string
related_contract_instance = RelatedContract.from_json(json)
# print the JSON string representation of the object
print(RelatedContract.to_json())

# convert the object into a dict
related_contract_dict = related_contract_instance.to_dict()
# create an instance of RelatedContract from a dict
related_contract_from_dict = RelatedContract.from_dict(related_contract_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


