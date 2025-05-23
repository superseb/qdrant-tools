| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.14.1](qdrant-v1.14.md#release-v1141) | May 23 2025 | 05/23/25 | 2025-05-23 |
| [v1.14.0](qdrant-v1.14.md#release-v1140) | Apr 22 2025 | 04/22/25 | 2025-04-22 |



# Release v1.14.1
# Change log

## Improvements

* https://github.com/qdrant/qdrant/pull/6458 - Speed up WAL-delta shard transfer significantly via batching and more careful synchronization
* https://github.com/qdrant/qdrant/pull/6462 - Improve GPU indexing speed for payload-related HNSW links, reuse GPU resources
* https://github.com/qdrant/qdrant/pull/6444, https://github.com/qdrant/qdrant/pull/6495, https://github.com/qdrant/qdrant/pull/6503, https://github.com/qdrant/qdrant/pull/6587 - Greatly improve payload index load time by replacing RocksDB with mmaps as persistence layer
* https://github.com/qdrant/qdrant/pull/6446 - Make GridStore flush slightly faster, update gaps in batch
* https://github.com/qdrant/qdrant/pull/6510 - Optimize GridStore reads, tell the kernel we use random reads
* https://github.com/qdrant/qdrant/pull/6502 - Better IO/CPU resource scheduling for optimizers
* https://github.com/qdrant/qdrant/pull/6487 - Batch IO when merging segments in optimizer, improve indexing speed
* https://github.com/qdrant/qdrant/pull/6513 - Buffer IO while reading files
* https://github.com/qdrant/qdrant/pull/6501 - Speed up HNSW construction by improving heuristics computation
* https://github.com/qdrant/qdrant/pull/6504 - Improve performance of `isEmpty` and `!isNull` conditions with a specialized index
* https://github.com/qdrant/qdrant/pull/6536 - Limit S3 upload parallelism, prevent network errors on high CPU machines
* https://github.com/qdrant/qdrant/pull/6548 - Add config option to limit number of collections

## Bug fixes

* https://github.com/qdrant/qdrant/pull/6403 - Fix potential inconsistency during index creation, make it atomic
* https://github.com/qdrant/qdrant/pull/6478 - Address performance degradation for large batch queries with a lot of segments
* https://github.com/qdrant/qdrant/pull/6445 - Fix not freeing all GridStore blocks if there are many updates
* https://github.com/qdrant/qdrant/pull/6363 - Fix strict mode `unindexed_filtering_retrieve` not being enforced in `group_by` queries
* https://github.com/qdrant/qdrant/pull/6498 - Fix strict mode `search_allow_exact` preventing full-scan in segments without main HNSW graph
* https://github.com/qdrant/qdrant/pull/6505 - Abort shard transfers related to peer being force removed
* https://github.com/qdrant/qdrant/pull/6533 - Always overwrite existing payload on upsert, fix REST vs gRPC discrepancy
* https://github.com/qdrant/qdrant/pull/6549 - Correctly cancel on optimization failure, keep collection consistent on red status error
* https://github.com/qdrant/qdrant/pull/6560 - Use HTTP 400 instead of 403 for strict mode errors, prevent web-ui from constantly asking new API key
* https://github.com/qdrant/qdrant/pull/6582 - Register payload indices in consensus on snapshot recovery
-----
# Release v1.14.0
# Change log

## Features 🍁

* https://github.com/qdrant/qdrant/milestone/23 - Allow server-side score boosting with user-defined formula. See [[Docs](https://qdrant.tech/documentation/concepts/hybrid-queries/#score-boosting)]
* https://github.com/qdrant/qdrant/pull/6256 - New `sum_scores` recommendation strategy. Useful for implementing relevance feedback. See [[Docs](https://qdrant.tech/documentation/concepts/explore/#sum-scores-strategy)]

## Improvements 🌳

* https://github.com/qdrant/qdrant/pull/6325 - Incremental HNSW building. Segment optimized will partially re-use existing HNSW graph on merging segments.
* https://github.com/qdrant/qdrant/pull/6323, https://github.com/qdrant/qdrant/pull/6396 - Improve eviction strategy for unused disk cache
* https://github.com/qdrant/qdrant/pull/6303 - Minor optimizations for memory allocations
* https://github.com/qdrant/qdrant/pull/6385 - Minor internal optimizations
* https://github.com/qdrant/qdrant/pull/6357 - Rethink behavior of `offset` parameter in case of a query with `prefetch`. Now offset is only applied to the prefetch result and is not propagated into prefetch query.
* https://github.com/qdrant/qdrant/pull/6326 - Parallelize large segment search batches
* https://github.com/qdrant/qdrant/pull/6390 - Better organized `telemetry` details levels generate less overhead by excluding segment-level details

## Bug Fixes 🌵

* https://github.com/qdrant/qdrant/pull/6289 - Scroll lock: make sure no segments are modified between scroll and retrieve
* https://github.com/qdrant/qdrant/pull/6297, https://github.com/qdrant/qdrant/pull/6293 - Prevent crash on failed shard recovery. Instead, qdrant will load dummy shard, which can be recovered via API
* https://github.com/qdrant/qdrant/pull/6383 - Fix delayed flush wrapper. Before this fix, payload indexes might temporary loose unflushed updates after flush operation is started and before it is finished.
* https://github.com/qdrant/qdrant/pull/6364 - Abort resharding if any Resharding replica is to be marked dead

## Web-ui 🌾

* https://github.com/qdrant/qdrant-web-ui/pull/272 - Full query auto-completion
-----
