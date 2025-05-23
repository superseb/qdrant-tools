| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.13.6](qdrant-v1.13.md#release-v1136) | Mar 31 2025 | 03/31/25 | 2025-03-31 |
| [v1.13.5](qdrant-v1.13.md#release-v1135) | Mar 21 2025 | 03/21/25 | 2025-03-21 |
| [v1.13.4](qdrant-v1.13.md#release-v1134) | Feb 17 2025 | 02/17/25 | 2025-02-17 |
| [v1.13.3](qdrant-v1.13.md#release-v1133) | Feb 11 2025 | 02/11/25 | 2025-02-11 |
| [v1.13.2](qdrant-v1.13.md#release-v1132) | Jan 28 2025 | 01/28/25 | 2025-01-28 |
| [v1.13.1](qdrant-v1.13.md#release-v1131) | Jan 23 2025 | 01/23/25 | 2025-01-23 |
| [v1.13.0](qdrant-v1.13.md#release-v1130) | Jan 17 2025 | 01/17/25 | 2025-01-17 |



# Release v1.13.6
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/6279 - In query API, read vectors/payloads once at shard level instead of in every segment, greatly improve search performance when there's lots of segments
- https://github.com/qdrant/qdrant/pull/6276 - In query API, don't send huge vectors/payloads over internal network, defer reads to greatly improve search performance
- https://github.com/qdrant/qdrant/pull/6260 - Improve performance of resharding transfers, make them faster on slow disks or with high memory pressure

## Bug fixes

- https://github.com/qdrant/qdrant/pull/6259 - Fix point estimation in resharding transfers, showing a more reliable ETA
- https://github.com/qdrant/qdrant/pull/6233 - Fix order_by not always including all values for a point if there are multiple
-----
# Release v1.13.5
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/6015 - Split CPU budget into CPU and IO to better saturate resources during optimization
- https://github.com/qdrant/qdrant/pull/6088 - Enhance payload indices to handle IsEmpty and IsNull conditions much more efficiently
- https://github.com/qdrant/qdrant/pull/6022, https://github.com/qdrant/qdrant/pull/6023 - Optimize ID tracker in immutable segments by compressing point mappings and versions
- https://github.com/qdrant/qdrant/pull/6056 - Apply undersampling at shard level, significantly improve query performance on large deployments with large search limit
- https://github.com/qdrant/qdrant/pull/6040 - Trigger optimizers more reliably on changes, prevent optimizers potentially getting stuck
- https://github.com/qdrant/qdrant/pull/6085 - Significantly improve performance of point delete propagation during resharding on large deployments
- https://github.com/qdrant/qdrant/pull/6021 - Configure memory barriers in GPU HNSW building to prevent potential race conditions
- https://github.com/qdrant/qdrant/pull/6074 - Use approximate point count at start of shard transfer to make them start quicker
- https://github.com/qdrant/qdrant/pull/6165 - Show log message if hardware reporting is enabled

## Bug fixes

- https://github.com/qdrant/qdrant/pull/6212 - Fix user-defined sharding not being applied in consensus snapshots, potentially corrupting cluster
- https://github.com/qdrant/qdrant/pull/6209 - Fix malformed user-defined sharding data in consensus snapshots if using numeric shard keys, potentially corrupting cluster
- https://github.com/qdrant/qdrant/pull/6014 - Fix cluster metadata not being in consensus snapshots, potentially causing cluster state desync
- https://github.com/qdrant/qdrant/pull/6210 - Fix resharding state not being applied with consensus snapshots, potentially causing cluster state desync
- https://github.com/qdrant/qdrant/pull/6202 - Fix snapshot restore error when numeric user-defined shard keys are used
- https://github.com/qdrant/qdrant/pull/6086 - Fix potential panic while propagating point deletions during resharding
- https://github.com/qdrant/qdrant/pull/6032, https://github.com/qdrant/qdrant/pull/6069 - Don't load or restore segments from hidden files, prevent breakage on hidden files in storage by other tools
- https://github.com/qdrant/qdrant/pull/6037 - Fix search panic after HNSW creation with GPU when on NVIDIA
- https://github.com/qdrant/qdrant/pull/6029 - Fix write rate limit not being properly set in strict mode
- https://github.com/qdrant/qdrant/pull/6118 - Do not rate limit reads for shard transfers in strict mode, it's internal
- https://github.com/qdrant/qdrant/pull/6121 - Do not rate limit shard cleanup operation in strict mode, it's internal
- https://github.com/qdrant/qdrant/pull/6152 - Properly rate limit batch point updates
- https://github.com/qdrant/qdrant/pull/6038 - Keep existing shard configuration if snapshot restore failed to prevent panic on startup
- https://github.com/qdrant/qdrant/pull/6010 - Use configured CA certificate for internal snapshot transfers
- https://github.com/qdrant/qdrant/pull/6108, https://github.com/qdrant/qdrant/pull/6115, https://github.com/qdrant/qdrant/pull/6160 - Fix opt-in anonymization of various telemetry fields
- https://github.com/qdrant/qdrant/pull/6065 - Don't show warning if bootstrap URI is not provided
-----
# Release v1.13.4
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/5967 - Set maximum number of points in a collection with strict mode

## Bug fixes

- https://github.com/qdrant/qdrant/commit/b2782ff11f60b25731e07ced3f923cb1e8fe8e97 - Fix HNSW index not respecting on-disk flag, using the inverse setting
- https://github.com/qdrant/qdrant/pull/5991 - Do not deactivate replica or abort transfer if target is missing point, it may not be transferred yet
- https://github.com/qdrant/qdrant/pull/5987 - Fix potential deadlock in consensus logic, which could get a node stuck

-----
# Release v1.13.3
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/5903 - Enable consensus compaction by default, enables fast peer joining and recovery
- https://github.com/qdrant/qdrant/pull/5956, https://github.com/qdrant/qdrant/pull/5962 - Delete old point versions on update, prevent old points showing up in reads
- https://github.com/qdrant/qdrant/pull/5870 - Don't include unversioned points in reads, don't include partially persisted points in searches
- https://github.com/qdrant/qdrant/pull/5871 - Don't include unversioned points in writes, don't use partially persisted points in updates
- https://github.com/qdrant/qdrant/pull/5904, https://github.com/qdrant/qdrant/pull/5916, https://github.com/qdrant/qdrant/pull/5950 - Pass peer/bootstrap URI with environment variables, support simpler cluster setups
- https://github.com/qdrant/qdrant/pull/5728 - Improve consensus loop, prevent excessive Raft elections
- https://github.com/qdrant/qdrant/pull/5946 - Normalize URL paths in REST API
- https://github.com/qdrant/qdrant/pull/5917 - Add HTTP Retry-After header in REST response if rate limiter is exhausted
- https://github.com/qdrant/qdrant/pull/5915 - Simplify locks in RocksDB buffer wrapper, use single long rather than two
- https://github.com/qdrant/qdrant/pull/5942 - Add default log format property to configuration file
- https://github.com/qdrant/qdrant/pull/5906 - Update roadmap for 2025


## Bug fixes

- https://github.com/qdrant/qdrant/pull/5938 - Fix panic when building of memory mapped sparse vector storage was interrupted
- https://github.com/qdrant/qdrant/pull/5877 - Rate limit prefetches in query API
- https://github.com/qdrant/qdrant/pull/5900, https://github.com/qdrant/qdrant/pull/5905, https://github.com/qdrant/qdrant/pull/5914 - Fix potential panic during consensus compaction
- https://github.com/qdrant/qdrant/pull/5910 - In query API, shortcut on empty retrieve query
- https://github.com/qdrant/qdrant/pull/5908 - Fix flush logic in RocksDB based vector storage, don't eagerly persist changes

-----
# Release v1.13.2
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/5891 - Add support for GPUs not featuring half floats, falling back to full floats

## Bug fixes

- https://github.com/qdrant/qdrant/pull/5882 - Fix blob store for payloads and sparse vectors potentially panicking when inserting large value
- https://github.com/qdrant/qdrant/pull/5866 - Fix optimizers reusing points with no version, improving data resilience
-----
# Release v1.13.1
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/5820 - Improve performance and memory usage of segment merging in optimizers

## Bug fixes

- https://github.com/qdrant/qdrant/pull/5848 - Fix potential panic in search after GPU HNSW building
- https://github.com/qdrant/qdrant/pull/5847 - Fix potential panic in GPU HNSW building when having empty payload index
- https://github.com/qdrant/qdrant/pull/5819 - Fix set payload by key on in-memory payload storage not persisting properly
- https://github.com/qdrant/qdrant/pull/5861 - Fix memory mapped sparse vector storage not flushing mappings properly
- https://github.com/qdrant/qdrant/pull/5838 - Fix user-defined sharding not persisting numeric shard keys properly
- https://github.com/qdrant/qdrant/pull/5842 - Do not flush empty memory maps to prevent panic on macOS
- https://github.com/qdrant/qdrant/pull/5843 - Do not flush explicitly when unloading blob storage
- https://github.com/qdrant/qdrant/pull/5845 - Fix potential panic in full text index due to missed bound check

-----
# Release v1.13.0
# Change log

## Features 🎨

- [milestone/18](https://github.com/qdrant/qdrant/milestone/18) - Add GPU support for HNSW super fast indexing
- [milestone/3](https://github.com/qdrant/qdrant/milestone/3) - Add resharding in our [cloud](https://qdrant.tech/documentation/cloud-intro/) offering, change the number of shards at runtime
- [milestone/13](https://github.com/qdrant/qdrant/milestone/13) - Add strict mode to restrict certain type of operations on collections
- https://github.com/qdrant/qdrant/pull/5303 - Add Has Vector filtering condition, check if a named vector is present on a point

## Improvements 🚀

- https://github.com/qdrant/qdrant/pull/5783 - Switch to mmap storage for payloads by default to make it more efficient, eliminating unexpected latency spikes
- https://github.com/qdrant/qdrant/pull/5784 - Switch to mmap storage for sparse vectors to make it more efficient, allowing better resource management
- https://github.com/qdrant/qdrant/pull/5781 - Compress HNSW graph links
- https://github.com/qdrant/qdrant/pull/5796 - Remove peer metadata for removed peers
- https://github.com/qdrant/qdrant/pull/5634 - Allow to set `max_optimization_threads` back to automatic
- https://github.com/qdrant/qdrant/pull/5178 - Stream snapshots in snapshot transfer, don't put snapshots on disk first

## Bug fixes 💢

- https://github.com/qdrant/qdrant/pull/5810 - Fix incorrect validation rules on deleted threshold in gRPC API
- https://github.com/qdrant/qdrant/pull/5808 - Don't allow conflicting names for dense and sparse vectors

---

Thanks to @gulshan-rs @ashwantmanikoth @kartik-gupta-ij @palash25 @redouan-rhazouani @weiwch @n0x29a @pedjak @agourlay @xzfc @JojiiOfficial @tellet-q @coszio @ffuugoo @KShivendu @joein @IvanPleshkov @generall @timvisee for their contributions!
-----
