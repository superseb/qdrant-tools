| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.14.0](qdrant-v1.14.md#release-v1140) | Apr 22 2025 | 04/22/25 | 2025-04-22 |



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
