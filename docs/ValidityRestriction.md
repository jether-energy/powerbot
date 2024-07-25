# ValidityRestriction

Set this field, if you want to update the validity restriction of the order * GFS (Good for trading session): The order stays in the order book until it is either executed, removed by the user or the current trading session (trading phase) of the underlying contract ends. * GTD (Good till date): The order stays in the order book until the date specified in the validityDate field. * NON (No validity restriction): Mandatory for orders with the execution restriction `FOK` or `IOC`.

## Enum

* `GFS` (value: `'GFS'`)

* `GTD` (value: `'GTD'`)

* `NON` (value: `'NON'`)

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


