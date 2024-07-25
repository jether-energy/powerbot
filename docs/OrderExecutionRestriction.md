# OrderExecutionRestriction

Set this field if you want to update the order's execution restriction * NON: No restriction. This is the default. * FOK: (Fill or Kill) - The order is immediately fully executed or deleted. * IOC: (Immediate and cancel): The order is executed immediately to its maximum extend. In case of a partial execution, the remaining volume is removed from the order book. * AON: (All or None): The order must be filled completely or not at all. The order stays in the order book until it is executed or removed by the system or user. AON is only allowed for User Defined Contracts (UDC). * AU (Auction): The order was entered in auction phase (no restriction is applied)

## Enum

* `FOK` (value: `'FOK'`)

* `IOC` (value: `'IOC'`)

* `NON` (value: `'NON'`)

* `AON` (value: `'AON'`)

* `AU` (value: `'AU'`)

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


