| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.11.0](qdrant-v1.11.md#release-v1110) | Aug 12 2024 | 08/12/24 | 2024-08-12 |



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
