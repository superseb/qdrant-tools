| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.9.3](qdrant-v1.9.md#release-v193) | May 26 2024 | 05/26/24 | 2024-05-26 |
| [v1.9.2](qdrant-v1.9.md#release-v192) | May 10 2024 | 05/10/24 | 2024-05-10 |
| [v1.9.1](qdrant-v1.9.md#release-v191) | May 02 2024 | 05/02/24 | 2024-05-02 |
| [v1.9.0](qdrant-v1.9.md#release-v190) | Apr 22 2024 | 04/22/24 | 2024-04-22 |



# Release v1.9.3
# Change log

## Improvements

* https://github.com/qdrant/qdrant/pull/4165 - Handle Out-Of-Disk on insertions gracefully
* https://github.com/qdrant/qdrant/pull/3964 - Faster consensus convergence with batched updates
* https://github.com/qdrant/qdrant/pull/4301 - deduplicate points by ID for custom sharding

## Bug fixes

* https://github.com/qdrant/qdrant/pull/4307 - Fix overflow panic if scroll limit is usize::MAX
* https://github.com/qdrant/qdrant/pull/4322 - Fixes panic with missing sparse vectors after recovery of corrupted storage


## Web UI

* https://github.com/qdrant/qdrant-web-ui/pull/183 - Notification for miss-configured collections

Full change log: https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.26


-----
# Release v1.9.2
# Change log

## Improvements
- https://github.com/qdrant/qdrant/pull/4148 - Greatly improve proxy segment performance when a lot of changes are tracked
- https://github.com/qdrant/qdrant/pull/4176 - Speed up loading of large memory mapped segments
- https://github.com/qdrant/qdrant/pull/4205 - Use distinct gRPC types for shard replication and overwriting payload requests, existing clients remain compatible
- https://github.com/qdrant/qdrant/pull/4163 - Extend sparse vector benchmarks

## Bug fixes
- https://github.com/qdrant/qdrant/pull/4206 - Fix potential deadlock with concurrent searches and snapshot creation
-----
# Release v1.9.1
# Change Log

## Improvements

* https://github.com/qdrant/qdrant/pull/4119 - performance of the numerical values range filter
* https://github.com/qdrant/qdrant/pull/4103 - Handle antimeridians in geo bounding box filter
* https://github.com/qdrant/qdrant/pull/3931 - Speedup consensus thread
* https://github.com/qdrant/qdrant/pull/4084 - improve consistency of the scroll API with parallel updates


## Bug fixes

* https://github.com/qdrant/qdrant/pull/4155 - fixes usage of `snapshot` shard transfer with API Key Auth.
* https://github.com/qdrant/qdrant/pull/4156 - resolves panic issue on optimization after restart (https://github.com/qdrant/qdrant/issues/4154)
* https://github.com/qdrant/qdrant/pull/4132 - resolves https://github.com/qdrant/qdrant/issues/4131

-----
# Release v1.9.0
# Change log

## Features 🏎️

- https://github.com/qdrant/qdrant/issues/3477 - Implement and enable shard diff transfer, greatly improve shard transfer speed on node recovery
- https://github.com/qdrant/qdrant/issues/3777 - Role-based access control with JWT
- https://github.com/qdrant/qdrant/pull/3976, https://github.com/qdrant/qdrant/pull/4049, https://github.com/qdrant/qdrant/pull/4065 - Add support for byte vectors, represent your vectors as float32 or uint8

## Improvements 🕵️

- https://github.com/qdrant/qdrant/pull/3420, https://github.com/qdrant/qdrant/pull/3938 - Greatly improve write performance while creating a snapshot of a large collection
- https://github.com/qdrant/qdrant/pull/3962, https://github.com/qdrant/qdrant/pull/3971 - Report pending optimizations awaiting an update operation in collection info
- https://github.com/qdrant/qdrant/pull/3998 - Improve `indexed_only` reliability on proxy shards
- https://github.com/qdrant/qdrant/pull/3798 - Make shard diff transfer fall back to streaming records
- https://github.com/qdrant/qdrant/pull/3784 - Cancel shard transfers when the shard is deleted
- https://github.com/qdrant/qdrant/pull/4037 - Improve sparse vectors search performance by another 7%
- https://github.com/qdrant/qdrant/pull/3982 - Build Qdrant with a single codegen unit to allow better compile-time optimizations
- https://github.com/qdrant/qdrant/pull/4052 - Remove `vectors_count` from collection info because it is unreliable. **Check usage of this field before upgrading**
- https://github.com/qdrant/qdrant/pull/3803 - Remove shard transfer method field from abort shard transfer operation

## Bug fixes 💔

- https://github.com/qdrant/qdrant/pull/3990 - Fix potentially losing points on crash
- https://github.com/qdrant/qdrant/pull/4034 - Fix potentially losing points on segment flushing
- https://github.com/qdrant/qdrant/pull/4057 - Fix potentially losing points by improper moves between segments when recovering WAL
- https://github.com/qdrant/qdrant/pull/4058 - Fix segments not being flushed properly with rapid sequential optimizations
- https://github.com/qdrant/qdrant/pull/3995, https://github.com/qdrant/qdrant/pull/3996 - Fix read ordering of segments to prevent missing points just being moved
- https://github.com/qdrant/qdrant/pull/3975 - Fix consensus operations getting stuck if they timed out
- https://github.com/qdrant/qdrant/pull/3905 - Fix collection creation if files were left behind on disk
- https://github.com/qdrant/qdrant/pull/4029 - Fix collection deletions conflicting with concurrent collection creation
- https://github.com/qdrant/qdrant/pull/3991 - Fix arbitrary path traversal when uploading snapshots with created collection names
- https://github.com/qdrant/qdrant/pull/4033 - Do not allow symlinks in snapshot archives
- https://github.com/qdrant/qdrant/pull/4047 - Fix recommendation API for sparse vectors
- https://github.com/qdrant/qdrant/pull/3965 - Fix discovery search with sparse vectors over gRPC
- https://github.com/qdrant/qdrant/pull/3928 - Stabilize vector normalization, prevent renormalizing multiple times breaking data consistency
- https://github.com/qdrant/qdrant/pull/4054 - Fix incorrect ordering when using order_by across multiple nodes
- https://github.com/qdrant/qdrant/pull/4067 - Fix timeout being ignored when dropping segment data, potentially leaving them behind forever
- https://github.com/qdrant/qdrant/pull/3980 - Internally forward operations with `wait=true` during shard transfers
- https://github.com/qdrant/qdrant/pull/3945 - Keep jemalloc only for amd64 and aarch64 to fix build failures

## Dashboard 🍱

- https://github.com/qdrant/qdrant-web-ui/pull/175 - Add page to generate RBAC JWT tokens
- https://github.com/qdrant/qdrant-web-ui/pull/169 - Before saving payload changes, ask for confirmation with dialog showing diff
- https://github.com/qdrant/qdrant-web-ui/pull/173 - Validate collection names
- [Other changes](https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.24)

---

Thanks to @abhishek818 @RPallas92 @tellet-q @xzfc @ffuugoo @IvanPleshkov @agourlay @coszio @generall @timvisee for their contributions!

-----
