| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.13.4](qdrant-v1.13.md#release-v1134) | Feb 17 2025 | 02/17/25 | 2025-02-17 |
| [v1.13.3](qdrant-v1.13.md#release-v1133) | Feb 11 2025 | 02/11/25 | 2025-02-11 |
| [v1.13.2](qdrant-v1.13.md#release-v1132) | Jan 28 2025 | 01/28/25 | 2025-01-28 |
| [v1.13.1](qdrant-v1.13.md#release-v1131) | Jan 23 2025 | 01/23/25 | 2025-01-23 |
| [v1.13.0](qdrant-v1.13.md#release-v1130) | Jan 17 2025 | 01/17/25 | 2025-01-17 |



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
