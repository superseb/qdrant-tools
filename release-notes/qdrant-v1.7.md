| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.7.4](qdrant-v1.7.md#release-v174) | Jan 29 2024 | 01/29/24 | 2024-01-29 |
| [v1.7.3](qdrant-v1.7.md#release-v173) | Dec 19 2023 | 12/19/23 | 2023-12-19 |
| [v1.7.2](qdrant-v1.7.md#release-v172) | Dec 12 2023 | 12/12/23 | 2023-12-12 |
| [v1.7.1](qdrant-v1.7.md#release-v171) | Dec 11 2023 | 12/11/23 | 2023-12-11 |
| [v1.7.0](qdrant-v1.7.md#release-v170) | Dec 08 2023 | 12/08/23 | 2023-12-08 |



# Release v1.7.4
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/3318 - Synchronize all nodes after collection or shard key creation, prevents collection inconsistencies across nodes
- https://github.com/qdrant/qdrant/pull/3458 - Limit automatic shard transfers for node recovery to 1, prevents huge load on cluster when recovering a big node
-----
# Release v1.7.3
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/3231 - Improve sparse vector search speed when using plain search

## Bug fixes

- https://github.com/qdrant/qdrant/pull/3251 - Fix items dropped from payload index when using [set-payload] operation
- https://github.com/qdrant/qdrant/pull/3230 - Fix sparse vectors not working with very large indices
- https://github.com/qdrant/qdrant/pull/3224 - Report more detailed shard error in API responses

[set-payload]: https://qdrant.tech/documentation/concepts/payload/#set-payload
-----
# Release v1.7.2
# Change log

## Bug fixes

* https://github.com/qdrant/qdrant/pull/3215 - Fix `/readyz` reporting error for Kubernetes if not enough other nodes are available, preventing full cluster starts
-----
# Release v1.7.1
# Change log

## Bug fixes

* https://github.com/qdrant/qdrant/pull/3196 - Fix `/readyz` reporting error if other nodes are still on 1.16, preventing cluster upgrades
-----
# Release v1.7.0
# Change log

## Features 🧀

- https://github.com/qdrant/qdrant/issues/2796, https://github.com/qdrant/qdrant/issues/3124 - Add support for sparse vectors, also supporting SPLADE and BM25 datasets ([docs](https://qdrant.tech/documentation/concepts/collections/#collection-with-sparse-vectors))
- https://github.com/qdrant/qdrant/issues/2790 - Add discovery search, explore and discover vectors in a defined context ([docs](https://qdrant.tech/documentation/concepts/explore/#discovery-api))
- https://github.com/qdrant/qdrant/issues/2807 - Add user defined sharding, partition data with a custom sharding distribution ([docs](https://qdrant.tech/documentation/guides/distributed_deployment/#user-defined-sharding))
- https://github.com/qdrant/qdrant/issues/2432 - Add shard snapshot transfer, fast transfer of shards using snapshots including their index and quantized data ([docs](https://qdrant.tech/documentation/guides/distributed_deployment/#shard-transfer-method))
- https://github.com/qdrant/qdrant/pull/3079 - Add Manhattan distance metric
- https://github.com/qdrant/qdrant/pull/2979 - Add support for read-only API key ([docs](https://qdrant.tech/documentation/guides/security/#read-only-api-key))

## Improvements 🌌

- https://github.com/qdrant/qdrant/pull/2869 - Improve quality of HNSW index building on high CPU systems
- https://github.com/qdrant/qdrant/pull/2768 - Add index for geo map payloads to improve search performance
- https://github.com/qdrant/qdrant/pull/3013, https://github.com/qdrant/qdrant/pull/3026, https://github.com/qdrant/qdrant/pull/2942, https://github.com/qdrant/qdrant/pull/3103, https://github.com/qdrant/qdrant/pull/3054 - Improve stability of consensus on big high load clusters
- https://github.com/qdrant/qdrant/pull/2931 - Improve search tail latencies with many parallel searches on high CPU systems
- https://github.com/qdrant/qdrant/pull/2748, https://github.com/qdrant/qdrant/pull/2771 - Allow to configure the timeout for searches
- https://github.com/qdrant/qdrant/pull/3067 - Improve group by performance by fetching vectors only once
- https://github.com/qdrant/qdrant/pull/3076 - Improve group by performance by handling `with_payloads` more efficiently
- https://github.com/qdrant/qdrant/pull/2803 - Improve performance for empty match-any filters
- https://github.com/qdrant/qdrant/pull/3088 - Randomize shard placement to roughly get an even spread across all peers
- https://github.com/qdrant/qdrant/pull/3155 - Make `indexed_only` more lenient
- https://github.com/qdrant/qdrant/pull/3084 - Improve `/readyz` health check, only mark as ready when started node has caught up
- https://github.com/qdrant/qdrant/pull/2855 - Add support for using API key with HTTP Bearer authentication
- https://github.com/qdrant/qdrant/pull/2848 - Expose update rate limiter parameter in configuration
- https://github.com/qdrant/qdrant/pull/3169 - Show actual bind address instead of localhost for Web UI in greeting message
- https://github.com/qdrant/qdrant/pull/2846 - Clean up recovered snapshots from an URL instead of leaving them behind
- https://github.com/qdrant/qdrant/pull/3036 - Clean up old RocksDB files more often to save disk space
- https://github.com/qdrant/qdrant/pull/3054 - Improve WAL performance by implementing a faster checksum algorithm

## Bug fixes 🫨

- https://github.com/qdrant/qdrant/pull/2933, https://github.com/qdrant/qdrant/pull/3039 - Fix potential divide by zero panic in numeric and geo index
- https://github.com/qdrant/qdrant/pull/2888 - Fix panic if gRPC request has multiple validation errors
- https://github.com/qdrant/qdrant/pull/3034 - Fix overvalidation on vector names in internal requests
- https://github.com/qdrant/qdrant/pull/2904 - Fix `best_score` formula with just negative examples
- https://github.com/qdrant/qdrant/pull/2927 - Fix duplicate numeric index entry for empty payload
- https://github.com/qdrant/qdrant/pull/2969 - Fix potentially syncing local consensus state when there are still pending commits
- https://github.com/qdrant/qdrant/pull/2895 - Fix custom TLS certificate not working when recovering snapshots from URL
- https://github.com/qdrant/qdrant/pull/3093 - Fix panic when loading from RocksDB with corrupted tail
- https://github.com/qdrant/qdrant/pull/3105 - Fix hard error for missing column family not found when flushing data
- https://github.com/qdrant/qdrant/pull/3156 - Fix shard transfers potentially starting too early
- https://github.com/qdrant/qdrant/pull/2960 - Fix potential memory overallocation in vector storage
- https://github.com/qdrant/qdrant/pull/3079 - Fix binary quantization for euclidean distance
- https://github.com/qdrant/qdrant/pull/2864 - Fix bad recall performance on payload indexes
- https://github.com/qdrant/qdrant/pull/3174 - Fix response codes being too strict, breaking snapshot creation in Python client
- https://github.com/qdrant/qdrant/pull/3073 - Fix `NO_COLOR` not having an effect on output logs
- https://github.com/qdrant/qdrant/pull/3086 - Fix migration from local to distributed on systems with 1 or 2 CPU cores
- https://github.com/qdrant/qdrant/pull/2921 - Fix storage and snapshot directory permission errors with Qdrant Docker image

## Deprecation 🥀

- https://github.com/qdrant/qdrant/pull/2785 - Mark point, vector and index counts as approximate, we may eventually remove these

## Dashboard 🍱

- https://github.com/qdrant/qdrant-web-ui/pull/110, https://github.com/qdrant/qdrant-web-ui/pull/116, https://github.com/qdrant/qdrant-web-ui/pull/118, https://github.com/qdrant/qdrant-web-ui/pull/121 - Add interactive tutorial
- https://github.com/qdrant/qdrant-web-ui/pull/123 - Add command palette
- https://github.com/qdrant/qdrant-web-ui/pull/107 - Download/upload snapshots with API key
- [Other changes](https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.19)

---

Thanks to @kaancfidan @keremnc @ava57r @Apmats @julianbraha @golangboy @ilkecan @ologbonowiwi @russcam @dzhao @joein @ffuugoo @IvanPleshkov @agourlay @coszio @timvisee for their contributions!
-----
