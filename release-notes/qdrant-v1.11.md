| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.11.5](qdrant-v1.11.md#release-v1115) | Sep 23 2024 | 09/23/24 | 2024-09-23 |
| [v1.11.4](qdrant-v1.11.md#release-v1114) | Sep 17 2024 | 09/17/24 | 2024-09-17 |
| [v1.11.3](qdrant-v1.11.md#release-v1113) | Aug 29 2024 | 08/29/24 | 2024-08-29 |
| [v1.11.2](qdrant-v1.11.md#release-v1112) | Aug 28 2024 | 08/28/24 | 2024-08-28 |
| [v1.11.1](qdrant-v1.11.md#release-v1111) | Aug 27 2024 | 08/27/24 | 2024-08-27 |
| [v1.11.0](qdrant-v1.11.md#release-v1110) | Aug 12 2024 | 08/12/24 | 2024-08-12 |



# Release v1.11.5
# Change log

## Bug fixes
- https://github.com/qdrant/qdrant/pull/5113 - Fix set payload with nested key not updating nested structure properly in some cases
- https://github.com/qdrant/qdrant/pull/5111 - Fix optimizations potentially getting stuck if low optimization limit is configured
- https://github.com/qdrant/qdrant/pull/5105 - Properly configure RocksDB to use LZ4 compression for payload index
- https://github.com/qdrant/qdrant/pull/5123 - If populating mmap with syscall fails, fall back to naive population
-----
# Release v1.11.4
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/4940 - Add grey collection status if optimizations are pending after restart
- https://github.com/qdrant/qdrant/pull/5073 - Parallelize deduplication of points on start, making startups faster
- https://github.com/qdrant/qdrant/pull/5072 - Significantly improve performance of lookup/delete in keyword index, making startups faster
- https://github.com/qdrant/qdrant/pull/5091 - Buffer reads when loading quantized vectors, making startups faster
- https://github.com/qdrant/qdrant/pull/5061, https://github.com/qdrant/qdrant/pull/4943 - Create snapshots without intermediate files, making it faster and requiring less disk space
- https://github.com/qdrant/qdrant/pull/4997 - Save shard configuration only once when creating snapshot
- https://github.com/qdrant/qdrant/pull/5041 - Add template in configuration to configure logging to disk
- https://github.com/qdrant/qdrant/pull/5066 - Report more detailed error if consensus stops due to an error
- https://github.com/qdrant/qdrant/pull/5035 - Improve error reporting for malformed JSON path strings
- https://github.com/qdrant/qdrant/pull/4992 - Reuse HTTP client for telemetry reporting
- https://github.com/qdrant/qdrant/pull/4581 - Print warning in log if JWT RBAC key has low entropy
- https://github.com/qdrant/qdrant/pull/5058 - Remove mention of max_segment_number from OpenAPI definition, because we don't use this anymore
- https://github.com/qdrant/qdrant/pull/4964 - Use geohash packing, which improves memory usage by geo index by up to 30%

## Bug fixes

- https://github.com/qdrant/qdrant/pull/5039 - Fix potential data race in collection aliases file leaving corrupted state
- https://github.com/qdrant/qdrant/pull/5043 - Fix shard/collection status blinking green between optimizations
- https://github.com/qdrant/qdrant/pull/5075 - Fsync files to physical storage when restoring snapshot, fixing inconsistencies in volume based snapshots
- https://github.com/qdrant/qdrant/pull/4994 - Fix potential out of memory error when uploading large snapshot to S3
- https://github.com/qdrant/qdrant/pull/5089 - Fix keyword index not excluding deleted points properly
- https://github.com/qdrant/qdrant/pull/5088 - Fix panic on start if mmap metadata file is grown by misbehaving file systems, ignore and continue instead
- https://github.com/qdrant/qdrant/pull/5090 - Clean temporary segments if optimization is cancelled
- https://github.com/qdrant/qdrant/pull/5079 - Fix consensus logic of deleting shard which is being transferred
-----
# Release v1.11.3
# Change log

## Bug fixes

- https://github.com/qdrant/qdrant/pull/4977 - Fix match payload filters on string and UUID indices
-----
# Release v1.11.2
# Change log

## Bug fixes

- https://github.com/qdrant/qdrant/pull/4973 - Fix potential panic during payload index building
-----
# Release v1.11.1
# Change log

## Improvements

* https://github.com/qdrant/qdrant/pull/4855 - Allow to modify data before writing on disk for copy-on-write operations
* https://github.com/qdrant/qdrant/pull/4941 - Non-blocking payload index building
* https://github.com/qdrant/qdrant/pull/4947 - Include list of peers in telemetry
* https://github.com/qdrant/qdrant/pull/4961 - Support for MatchAny and Except conditions for UUID index


## Bug fixes

* https://github.com/qdrant/qdrant/pull/4952 - Fix point deletions on mmap segment optimization.
* https://github.com/qdrant/qdrant/pull/4909 - Fix Max Upload Size for s3 snapshot storage
* https://github.com/qdrant/qdrant/pull/4929 - Fix configuration of bool and geo index params with explicit schema
* https://github.com/qdrant/qdrant/pull/4953 - Proper handle of UUID index in issue reporting


## Web UI

* https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.31 - Improved navigation and collection view
-----
# Release v1.11.0
# Change Log

## Features 🪄

* [milestone#6](https://github.com/qdrant/qdrant/milestone/6?closed=1) - GroupBy support for query API
* [milestone#8](https://github.com/qdrant/qdrant/milestone/8?closed=1) - Introduce UUID payload index
* [milestone#2](https://github.com/qdrant/qdrant/milestone/2?closed=1) - On-disk support for Keyword, Integer, Datatime, Float and UUID indexes
* [milestone#5](https://github.com/qdrant/qdrant/milestone/5?closed=1) - Random sampling support in Query API
* https://github.com/qdrant/qdrant/pull/4614 - Distribution-based Score Fusion

## Improvements 🏇

* [milestone#9](https://github.com/qdrant/qdrant/milestone/9?closed=1) - Improve long-running update operations to not block reads
* [milestone#7](https://github.com/qdrant/qdrant/milestone/7?closed=1) - Data-locality performance improvements for multitenant and filterable collections
* https://github.com/qdrant/qdrant/pull/4664 - Performance improvement for prefetch queries
* https://github.com/qdrant/qdrant/pull/4403 - Persistent immutable id tracker allows faster load form disk
* https://github.com/qdrant/qdrant/pull/4658 - In-memory id tracker used avoid extra IO during segment optimization routine
* https://github.com/qdrant/qdrant/pull/4691 - Expose more CPU instruction set flags into CPU telemetry
* https://github.com/qdrant/qdrant/pull/4733 - Convert app and cluster info metrics from counters to gauges
* https://github.com/qdrant/qdrant/pull/4723 - Set RocksDB compression to LZ4
* https://github.com/qdrant/qdrant/pull/4688 - Improve result order preservation in replicated response resolution
* https://github.com/qdrant/qdrant/pull/4827 - Make scroll requests cancellable
* https://github.com/qdrant/qdrant/pull/4844, https://github.com/qdrant/qdrant/pull/4849, https://github.com/qdrant/qdrant/pull/4850 - Non-blocking retrieve with timeout and cancellation support

## Bug Fixes :goberserk:

* https://github.com/qdrant/qdrant/pull/4661 - Fix NaN score for zeroed uint8 vectors
* https://github.com/qdrant/qdrant/pull/4663 - Fix payload update operation internal
* https://github.com/qdrant/qdrant/pull/4722 - Fix Charabia Chinese tokenization
* https://github.com/qdrant/qdrant/pull/4812, https://github.com/qdrant/qdrant/pull/4823 - Add missing API to metrics whitelist
* https://github.com/qdrant/qdrant/pull/4842 - Add and fix missing timeout in the retrieve APIs


## Web UI Highlights 🍱

* https://github.com/qdrant/qdrant-web-ui/pull/197 - Graph-based collection exploration tool
* https://github.com/qdrant/qdrant-web-ui/pull/199 - Tool to check search quality in real time
-----
