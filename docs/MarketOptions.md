# MarketOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**internal_trading** | **str** | This setting configures the behaviour of the internal matching engine   * &#x60;inactive&#x60;    disabled, orders get sent to the exchange without checks for cross trades   * &#x60;default_yes&#x60; enabled by default, but can be disabled on a per-request basis   * &#x60;default_no&#x60;  disabled by default, but can be enabled on a per-request basis   * &#x60;active&#x60;      enabled for all requests | [optional] 
**block_potential_self_trades** | **str** | This setting the behaviour of orders that could potentially lead to self-trades and can&#39;t be resolved by the internal matching engine   * &#x60;disabled&#x60;                don&#39;t check for non-resolveable potential self-trades   * &#x60;block_all&#x60;               reject requests with orders that could lead to self-trades (own bid &gt;&#x3D; own ask)   * &#x60;block_if_not_resolvable&#x60; reject requests with orders that could lead to self-trades that can&#39;t be resolved by the internal matching engine (e.g. across delivery areas) | [optional] 
**internal_trading_cross_area** | **bool** | German delivery areas have unlimited cross border capacities before entering &#x60;SDAT&#x60; mode. If this setting is set to true, then the German delivery areas will be treated as one area when matching internal trades during the &#x60;CONT&#x60; trading phase.  **Note**: NordPool does not report a contract&#39;s trading phase, so internal cross delivery trading area stays active until the lead time limit is reached. | [optional] 
**internal_trading_cross_area_lead_time** | **int** | The time (in minutes) before a contract&#39;s delivery start, after which cross area matching gets disabled. If this option is set to &#39;0&#39;, then cross area matching is enabled as long as a contract is in the trading phase &#x60;CONT&#x60;. Independent of this setting, cross area matching is only active during the &#x60;CONT&#x60; trading phase.  **Note**: NordPool does not report a contract&#39;s trading phase, so only the lead time determines if internal cross area trading should take place. | [optional] 
**internal_trading_include_external_orders** | **bool** | If set to true, PowerBot will also create internal trades with orders that were not created through PowerBot, for example orders from ComTrader. | [optional] 
**internal_trading_across_tenants** | **bool** | Controls whether cross trade detection works across tenants. It is enabled by default. | [optional] 
**default_delivery_area_id** | **str** | In multi-area configurations, set this option in case you want a default delivery area | [optional] 
**restrict_safe_mode** | **bool** | Restrict switching market mode to the master API key. If set to true, only the master API key can toggle the market mode (call PUT/market/mode). If set to false, all master API keys, tenant master API keys and API keys with the &#39;can_trade&#39; attribute set to true can toggle the market mode. Safe mode (emergency stop) has the following effects * all algorithm instances are stopped and can&#39;t be started * all active orders are deleted from the market * order entry / modification is disabled * trades can still be recalled  The default value is false. | [optional] 
**throttling_user_action** | **str** | This setting is only relevant for EPEX.  The behaviour of the exchange if you get suspended for violating your order quota limit. The default setting is &#x60;DO_NOTHING&#x60;.  **Warning**: To apply this setting, you will need to log out of the market and reconnect. In production, you will need to do this for both prod1 and prod2.  * &#x60;DO_NOTHING&#x60;       The exchange will take no further action after suspending you for order quota limit violations. * &#x60;HIBERNATE_ORDERS&#x60; The exchange will hibernate all user orders after suspending you for order quota limit violations. | [optional] 
**enable_mfa** | **bool** | If set to true, PowerBot will enable MFA. The MFA secret will be returned in the response. It is not possible to retrieve the secret later on, so make sure you save it immediately.  **Note**: At this moment only M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM) supports MFA. | [optional] 
**show_all_account_orders** | **bool** | If enabled, all orders from the exchange account get marked as &#x60;own_order: true&#x60; in the order book. Otherwise, only orders from accessible portfolios get marked.  Setting this to &#x60;false&#x60; has the side effect of &#x60;own_order&#x60; being set to &#x60;false&#x60; in all WebSocket events, regardless of user access.  The default setting is &#x60;true&#x60;. | [optional] 

## Example

```python
from powerbot_client.models.market_options import MarketOptions

# TODO update the JSON string below
json = "{}"
# create an instance of MarketOptions from a JSON string
market_options_instance = MarketOptions.from_json(json)
# print the JSON string representation of the object
print(MarketOptions.to_json())

# convert the object into a dict
market_options_dict = market_options_instance.to_dict()
# create an instance of MarketOptions from a dict
market_options_from_dict = MarketOptions.from_dict(market_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


