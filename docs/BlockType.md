# BlockType

* REGULAR: A regular block is a block that is not linked to any other block. Being referenced by another block indicated that the regular block is the parent block. * LINKED: A linked block is a child of its parent block and linked to it. Requires that the parent block is executed first before the child is considered. It can occur that only the parent block is executed, which still leads to the acceptance of the whole block order. * EXCLUSIVE: An exclusive group of block orders is a set of block orders for which the algorithm may accept any combination of them as long as the sum of Actual Acceptance Ratios (ratio of accepted volume to total block volume) of the exclusive group block orders is less than or equal to 1. * LOOP: A collection of blocks that require complete execution or rejection of all blocks in the loop. * SPREAD: A block pair where one of the blocks has to be a buy block and the other block has to be a sell block. * PROFILE: A profile block is a block order where volume can differ over the entire time span (periods) of the block. It is not possible to have both buy and sell volumes in the same block.

## Enum

* `REGULAR` (value: `'REGULAR'`)

* `LINKED` (value: `'LINKED'`)

* `EXCLUSIVE` (value: `'EXCLUSIVE'`)

* `LOOP` (value: `'LOOP'`)

* `SPREAD` (value: `'SPREAD'`)

* `PROFILE` (value: `'PROFILE'`)

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


