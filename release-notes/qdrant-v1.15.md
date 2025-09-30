| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.15.5](qdrant-v1.15.md#release-v1155) | Sep 30 2025 | 09/30/25 | 2025-09-30 |
| [v1.15.4](qdrant-v1.15.md#release-v1154) | Aug 27 2025 | 08/27/25 | 2025-08-27 |
| [v1.15.3](qdrant-v1.15.md#release-v1153) | Aug 14 2025 | 08/14/25 | 2025-08-14 |
| [v1.15.2](qdrant-v1.15.md#release-v1152) | Aug 11 2025 | 08/11/25 | 2025-08-11 |
| [v1.15.1](qdrant-v1.15.md#release-v1151) | Jul 24 2025 | 07/24/25 | 2025-07-24 |
| [v1.15.0](qdrant-v1.15.md#release-v1150) | Jul 18 2025 | 07/18/25 | 2025-07-18 |



# Release v1.15.5
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/7157 - Acknowledge update/delete by filter operations on flush, preventing very slow restart
- https://github.com/qdrant/qdrant/pull/7217, https://github.com/qdrant/qdrant/pull/7218, https://github.com/qdrant/qdrant/pull/7219, https://github.com/qdrant/qdrant/pull/7220, https://github.com/qdrant/qdrant/pull/7221 - Add API validation to min_should, filters, point update batch and others
- https://github.com/qdrant/qdrant/pull/7235 - Add timeout parameter to remove peer operation
- https://github.com/qdrant/qdrant/pull/7320 - Decrease internal update batch sizes to minimize search latency spikes on large user batches
- https://github.com/qdrant/qdrant/pull/7233 - Limit number of segments loaded in parallel, preventing potential OOM on large clusters
- https://github.com/qdrant/qdrant/pull/7222 - Add strict mode configuration to specify max number of payload indices
- https://github.com/qdrant/qdrant/pull/7240 - Improve error reporting on mutable ID tracker load errors
- https://github.com/qdrant/qdrant/pull/7151 - Improve error reporting on flush problems
- https://github.com/qdrant/qdrant/pull/7244 - Remove vector count field from collection info
- https://github.com/qdrant/qdrant/pull/7177 - Do not anonymize peer ID in telemetry data

## Bug fixes

- https://github.com/qdrant/qdrant/pull/7263 - Fix not flushing mutable ID tracker files after creation, potentially causing segment corruption
- https://github.com/qdrant/qdrant/pull/7248 - Fix data race at the end of snapshot creation causing missing points
- https://github.com/qdrant/qdrant/pull/7298, https://github.com/qdrant/qdrant/pull/7306 - Fix data race during snapshots corrupting point data if a point is moved
- https://github.com/qdrant/qdrant/pull/7241, https://github.com/qdrant/qdrant/pull/7265, https://github.com/qdrant/qdrant/pull/7267, https://github.com/qdrant/qdrant/pull/7269, https://github.com/qdrant/qdrant/pull/7277 - Fix potential deadlock in REST runtime while streaming shard snapshot
- https://github.com/qdrant/qdrant/pull/7015 - Fix potential deadlock on REST server runtime
- https://github.com/qdrant/qdrant/pull/7172 - Fix potential recursive deadlock when fetching all vectors
- https://github.com/qdrant/qdrant/pull/7203 - Fix potential deadlock in scroll API
- https://github.com/qdrant/qdrant/pull/7303 - Fix incorrectly deleting old point versions from segments
- https://github.com/qdrant/qdrant/pull/7194 - Fix upsert operations with duplicate point IDs not being applied properly
- https://github.com/qdrant/qdrant/pull/7252 - Fix phrase matching ignoring unknown tokens
- https://github.com/qdrant/qdrant/pull/7264 - Fix strict mode validation on nested filters
-----
# Release v1.15.4
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/7005 - Reduce Docker image size by 10-40%
- https://github.com/qdrant/qdrant/pull/7073 - Adjust metrics histogram buckets, show empty buckets and remove small ones
- https://github.com/qdrant/qdrant/pull/7111 - Include SBOM in Docker image
- https://github.com/qdrant/qdrant/pull/7119 - Sign Docker images with cosign
- https://github.com/qdrant/qdrant/pull/7110 - Actively migrate away from old shard key format on disk to a more robust format
- https://github.com/qdrant/qdrant/pull/7120 - Measure segment size on disk more reliably for improved available disk space checks

## Bug fixes

- https://github.com/qdrant/qdrant/pull/7133 - Fix not loading some full text index types correctly, temporarily resulting in an empty index
- https://github.com/qdrant/qdrant/pull/7109 - Fix incorrectly reusing old deleted points in proxy segments
- https://github.com/qdrant/qdrant/pull/7106 - Preserve segment ID mapping when proxying all segments for a snapshot, potentially mixing up segments

-----
# Release v1.15.3
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/7002 - Optimize dot product calculation on AVX systems
- https://github.com/qdrant/qdrant/pull/7049 - In Nix package, use rustup for Rust version management

## Bug fixes

- <https://github.com/qdrant/qdrant/pull/7056> - Fix local BM25 not working as expected due to default parameter differences

-----
# Release v1.15.2
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/6891 - Implement BM25 inference in Qdrant locally
- https://github.com/qdrant/qdrant/pull/6926 - Improve performance of mutable map index, used for full text, integers and more
- https://github.com/qdrant/qdrant/pull/6993 - Make log buffer size adjustable when logging to a file

## Bug fixes

- https://github.com/qdrant/qdrant/pull/6954 - Fix consistency problem in null index storage by deferring writes until flush
- https://github.com/qdrant/qdrant/pull/6977 - Fix consistency problem in boolean index storage by deferring writes until flush
- https://github.com/qdrant/qdrant/pull/6994 - Fix consistency problem for deleted vectors by deferring writes until flush
- https://github.com/qdrant/qdrant/pull/6966 - Fix flush logic in memory mapped bit flags structure, improving data consistency
- https://github.com/qdrant/qdrant/pull/6975 - Delete versionless points before WAL replay, fix incorrect use of corrupt points
- https://github.com/qdrant/qdrant/pull/6952 - Fix date time error in custom score boosting formula when having multiple nodes
- https://github.com/qdrant/qdrant/pull/6998 - In score boosting formula validation error, show each index type only once
- https://github.com/qdrant/qdrant/pull/6959 - Fix range bounds not being inclusive for linear decay function
- https://github.com/qdrant/qdrant/pull/6958 - Fix default storage path and missing web UI assets in Debian package

## Web UI

- https://github.com/qdrant/qdrant-web-ui/pull/299 - Show shard distribution of collection in cluster as replica/node matrix

-----
# Release v1.15.1
# Changelog

## Improvements

* https://github.com/qdrant/qdrant/pull/6931 - gRPC HealthCheck method now works without authentication, making it consistent with REST methods.
* https://github.com/qdrant/qdrant/pull/6923 - Use populate storage components with `MADV_SEQUENTIAL` for better IO performance on indexing

## Bug Fixes

* https://github.com/qdrant/qdrant/pull/6932 - Fix point shard routing broken in 1.15 (**Points created in 1.15.0 in multi-shard collections might not behave properly on updates!**)
* https://github.com/qdrant/qdrant/pull/6903 - Fix compile error in MUSL builds
* https://github.com/qdrant/qdrant/pull/6910 - Fix panic in `/metrics` on empty collection data
* https://github.com/qdrant/qdrant/pull/6916 - Fix UUID index storage, resulted in missing filter results.


-----
# Release v1.15.0
# Change log

## Features 📜

* [milestone/25](https://github.com/qdrant/qdrant/milestone/25?closed=1) - Phrase Matching in Full-Text index [[Docs](https://qdrant.tech/documentation/concepts/indexing/#phrase-search)]
* [milestone/28](https://github.com/qdrant/qdrant/milestone/28?closed=1) - Stop words support in Full-Text index [[Docs](https://qdrant.tech/documentation/concepts/indexing/#stopwords)]
* [milestone/29](https://github.com/qdrant/qdrant/milestone/29?closed=1) - New multilingual tokenizer enabled by default [[Docs](https://qdrant.tech/documentation/concepts/indexing/#tokenizers)]
* [milestone/32](https://github.com/qdrant/qdrant/milestone/32?closed=1) - Snowball Stemmer in Full-Text index, [[Docs](https://qdrant.tech/documentation/concepts/indexing/#stemmer)]
* [milestone/30](https://github.com/qdrant/qdrant/milestone/30?closed=1) - Asymmetric binary quantization [[Docs](https://qdrant.tech/documentation/guides/quantization/#asymmetric-quantization)]
* [milestone/31](https://github.com/qdrant/qdrant/milestone/31?closed=1) - 2-bit and 1.5-bit Binary Quantization encoding [[Docs](https://qdrant.tech/documentation/guides/quantization/#15-bit-and-2-bit-quantization)]
* [milestone/26](https://github.com/qdrant/qdrant/milestone/26?closed=1) - Maximum Marginal Relevance [[Docs](https://qdrant.tech/documentation/concepts/hybrid-queries/#maximal-marginal-relevance-mmr)]
* https://github.com/qdrant/qdrant/pull/6682 - Verify file system compatibility on process start

## Improvements 🪨

* [milestone/16](https://github.com/qdrant/qdrant/milestone/16?closed=1) - Migrate away from RocksDB
* [milestone/27](https://github.com/qdrant/qdrant/milestone/27?closed=1) - HNSW Healing on optimization
* https://github.com/qdrant/qdrant/pull/6479 - Speedup additional links construction by measuring sub-graph connectivity
* https://github.com/qdrant/qdrant/pull/6563, https://github.com/qdrant/qdrant/pull/6601 - Inference usage now reported in API response
* https://github.com/qdrant/qdrant/pull/6611 - Added major and minor tags for Docker builds
* https://github.com/qdrant/qdrant/pull/6685 - Speed up mutable posting list for upsertions
* https://github.com/qdrant/qdrant/pull/6729 - Reuse quantized vectors during HNSW index building
* https://github.com/qdrant/qdrant/pull/6713 - Optimize Gridstore insertions
* https://github.com/qdrant/qdrant/pull/6750 - Use sequential reads when iterating over Gridstore
* https://github.com/qdrant/qdrant/pull/6757 - Enable pod role based auth for S3 snapshots
* https://github.com/qdrant/qdrant/pull/6725 - Improve read request handling during snapshot recovery
* https://github.com/qdrant/qdrant/pull/6785 - Avoid re-optimizations when loading a mmap-backed immutable text index
* https://github.com/qdrant/qdrant/pull/6778, https://github.com/qdrant/qdrant/pull/6817 - Properly handle inconsistencies in consensus during custom shards creation
* https://github.com/qdrant/qdrant/pull/6779 - Avoid IO during evaluating HNSW index for re-optimization
* https://github.com/qdrant/qdrant/pull/6796 - Use sequential reads for building quantized vectors
* https://github.com/qdrant/qdrant/pull/6794 - Avoid double condition check during filtering
* https://github.com/qdrant/qdrant/pull/6804 - Optimize `has_id` condition
* https://github.com/qdrant/qdrant/pull/6844 - Adjust default values for better performance

## Bug fixes 🫙

* https://github.com/qdrant/qdrant/pull/6593 - Use ID tracker to estimate internal points range
* https://github.com/qdrant/qdrant/pull/6614 - Improve Gridstore wipe/clear functionality
* https://github.com/qdrant/qdrant/pull/6632 - Fix default replication factor
* https://github.com/qdrant/qdrant/pull/6640 - Fix significant memory usage in Distance Matrix API on high sample size
* https://github.com/qdrant/qdrant/pull/6739 - Fix IDF computation with deleted points
* https://github.com/qdrant/qdrant/pull/6755 - Prevent shards from getting stuck in `Initializing` state
* https://github.com/qdrant/qdrant/pull/6759 - Properly propagate inference errors
* https://github.com/qdrant/qdrant/pull/6787 - Add flag to break optimization loop on panic
* https://github.com/qdrant/qdrant/pull/6862 - Avoid blocking async runtime when loading local shard
* https://github.com/qdrant/qdrant/pull/6800 - Fix bug that causes all replicas to die if node restarted during resharding
* https://github.com/qdrant/qdrant/pull/6882 - Fix broken `is_empty` filter on new points

## Web-UI 🎨

* https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.41 - New "Create Collection" form, Simplify JWT form, other fixes

## Deprecations 🚧

* `init_from` parameter of the collection creation API is deprecated and going to be removed in v1.16
    * Reason: `init_from` creates false expectation of data consistency and reliability of this operation.
    * Alternative: prefer usage of [migration tool](https://github.com/qdrant/migration) or [snapshots](https://qdrant.tech/documentation/concepts/snapshots/), read more in the [tutorial](https://qdrant.tech/documentation/database-tutorials/migration)
* Payload based filters in JWT going to be removed in v1.16
    * Reason: Payload based filters are inconsistent for read/write operations. Many update operations are not implemented due to security risks and complexity. Lack of real-life usage.
    * Alternative: prefer collection-based access control.
* `mmap_threshold` parameter of the collection optimizer is deprecated and going to be removed in v1.16
    * Reason: starting from v1.12, all vector storages exclusively use memory maps, explicit usage of `mmap_threshold` is obsolete
    * Alternative: control memory cache behaviour of Qdrant storages with `on_disk: true/false` parameter
* [Lock API](https://qdrant.tech/documentation/guides/administration/#locking) is deprecated and going to be removed in v1.16
    * Reason: lack of real-life usage
    * Alternative: JWT tokens can be configured to provide read-only access to Qdrant

* https://github.com/qdrant/qdrant/pull/6760 - Removed `max_optimization_threads` from config
-----
