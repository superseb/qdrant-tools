| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.11.3](qdrant-v1.11.md#release-v1113) | Aug 29 2024 | 08/29/24 | 2024-08-29 |
| [v1.11.2](qdrant-v1.11.md#release-v1112) | Aug 28 2024 | 08/28/24 | 2024-08-28 |
| [v1.11.1](qdrant-v1.11.md#release-v1111) | Aug 27 2024 | 08/27/24 | 2024-08-27 |
| [v1.11.0](qdrant-v1.11.md#release-v1110) | Aug 12 2024 | 08/12/24 | 2024-08-12 |



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
