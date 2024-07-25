# ExecutionInstruction

Defines the execution instruction for the whole list of orders:   * **NONE**: All orders are treated independently.   * **VALID**: default. All orders must be valid, meaning they must pass the order validation of the exchange system (e.g. the price of the order must be in the price range of the product). If one order does not pass the validation, the full list of submitted orders is rejected.   * **LNKD**: Linked orders - the provided orders are linked together and should be executed all at once. This option can only be used if all orders have the same product and the execution restriction FOK (Fill-or-Kill). In case one of the orders cannot be executed, the whole list is not executed by the exchange.

## Enum

* `NONE` (value: `'NONE'`)

* `VALID` (value: `'VALID'`)

* `LNKD` (value: `'LNKD'`)

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


