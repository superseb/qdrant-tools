| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.8.4](qdrant-v1.8.md#release-v184) | Apr 01 2024 | 04/01/24 | 2024-04-01 |
| [v1.8.3](qdrant-v1.8.md#release-v183) | Mar 19 2024 | 03/19/24 | 2024-03-19 |
| [v1.8.2](qdrant-v1.8.md#release-v182) | Mar 15 2024 | 03/15/24 | 2024-03-15 |
| [v1.8.1](qdrant-v1.8.md#release-v181) | Mar 07 2024 | 03/07/24 | 2024-03-07 |
| [v1.8.0](qdrant-v1.8.md#release-v180) | Mar 06 2024 | 03/06/24 | 2024-03-06 |



# Release v1.8.4
## Bug fixes

- https://github.com/qdrant/qdrant/pull/3948 - Fix persisted crash when using space in quoted JSON path
-----
# Release v1.8.3
## Bug fixes

- https://github.com/qdrant/qdrant/pull/3856, https://github.com/qdrant/qdrant/pull/3867 - Fix arbitrary path traversal vulnerability in full snapshot REST API

## Improvements

- https://github.com/qdrant/qdrant/pull/3837 - Improve error message when doing upsertion with malformed data

## Dashboard

- https://github.com/qdrant/qdrant-web-ui/pull/167 - Find similar points by payload key:value pair
- https://github.com/qdrant/qdrant-web-ui/pull/166 - Fix find similar point ID not working in some cases
- https://github.com/qdrant/qdrant-web-ui/pull/165 - Support 64-bit numbers
- [Other changes](https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.23)

-----
# Release v1.8.2
## Bug Fixes

* https://github.com/qdrant/qdrant/pull/3832
  * fix propagation of `max_optimization_threads` on the collection params update
  * Improve of indexing optimizer conditions
* https://github.com/qdrant/qdrant/pull/3835 - prevent unnecessary flushes of WAL Clock
* https://github.com/qdrant/qdrant/pull/3776 - make `/readyz` check reliable on horizontal scaling
* https://github.com/qdrant/qdrant/pull/3806 - fix memory addresses alignment for HNSW graph
-----
# Release v1.8.1
# Bug fixes

* https://github.com/qdrant/qdrant/pull/3788 - Allow payload paths starting with numbers

-----
# Release v1.8.0
# Change log

## Features 📅

* Add ability to order Scroll API results by payload value - https://github.com/qdrant/qdrant/pull/3493, https://github.com/qdrant/qdrant/pull/3533, https://github.com/qdrant/qdrant/pull/3562, https://github.com/qdrant/qdrant/pull/3540, https://github.com/qdrant/qdrant/pull/3589, https://github.com/qdrant/qdrant/pull/3726
* Add date time payload index to efficiently filter by date time ranges - https://github.com/qdrant/qdrant/pull/3395, https://github.com/qdrant/qdrant/pull/3516, https://github.com/qdrant/qdrant/pull/3549, https://github.com/qdrant/qdrant/pull/3578, https://github.com/qdrant/qdrant/pull/3622, https://github.com/qdrant/qdrant/pull/3729, https://github.com/qdrant/qdrant/pull/3730
* https://github.com/qdrant/qdrant/pull/3472 - Add API to check if a collection exists
* https://github.com/qdrant/qdrant/pull/3466 - Allow specifying a minimum number of conditions to match in payload filters
* https://github.com/qdrant/qdrant/pull/3548 - Improve `set_payload` API, adds ability to modify nested fields

## Improvements 🏎️

* Sparse vector search performance improvements, making it 16x faster - https://github.com/qdrant/qdrant/pull/3464, https://github.com/qdrant/qdrant/pull/3275, https://github.com/qdrant/qdrant/pull/3327, https://github.com/qdrant/qdrant/pull/3348, https://github.com/qdrant/qdrant/pull/3347, https://github.com/qdrant/qdrant/pull/3368, https://github.com/qdrant/qdrant/pull/3393, https://github.com/qdrant/qdrant/pull/3413, https://github.com/qdrant/qdrant/pull/3424, https://github.com/qdrant/qdrant/pull/3527, https://github.com/qdrant/qdrant/pull/3560, https://github.com/qdrant/qdrant/pull/3609, https://github.com/qdrant/qdrant/pull/3619, https://github.com/qdrant/qdrant/pull/3605
* Improve CPU saturation, greatly speeding up indexing on high CPU systems - https://github.com/qdrant/qdrant/pull/3364, https://github.com/qdrant/qdrant/pull/3115
* Improve various payload indices
    * https://github.com/qdrant/qdrant/pull/3497 - Reduce memory usage for the text index
    * https://github.com/qdrant/qdrant/pull/3297 - Reduce memory usage for geo index
    * https://github.com/qdrant/qdrant/pull/3625 - Improve loading time for test field index
    * https://github.com/qdrant/qdrant/pull/3563 - Compress text index, greatly improving tail latencies and memory usage
* Add new release artifacts to support more platforms
    * https://github.com/qdrant/qdrant/pull/3342 - MUSL binaries for x86_64 and AArch64
    * https://github.com/qdrant/qdrant/pull/3343 - Portable AppImage binary
    * https://github.com/qdrant/qdrant/pull/3344 - Debian package with *.deb archive
* Avoid re-indexing point if fields without an index are updated - https://github.com/qdrant/qdrant/pull/3611
* Refactor payload key parsing - https://github.com/qdrant/qdrant/pull/3674, https://github.com/qdrant/qdrant/pull/3697, https://github.com/qdrant/qdrant/pull/3709
* https://github.com/qdrant/qdrant/pull/3367 - Ensure consistency when an update request is dropped in the middle
* https://github.com/qdrant/qdrant/pull/3525 - Optimize MatchAny performance with a large number of values
* https://github.com/qdrant/qdrant/pull/3629, https://github.com/qdrant/qdrant/pull/3633, https://github.com/qdrant/qdrant/pull/3641 - Performance optimizations for empty payloads
* https://github.com/qdrant/qdrant/pull/2840, https://github.com/qdrant/qdrant/pull/3381 - Add a checksum for snapshot files
* https://github.com/qdrant/qdrant/pull/3374 - Improve "loss" function for discovery search
* https://github.com/qdrant/qdrant/pull/3255 - Add config property to set default shard transfer method
* https://github.com/qdrant/qdrant/pull/3380 - Add ability to selectively disable the range or lookup index for integer payloads to save memory
* https://github.com/qdrant/qdrant/pull/3555 - Report progress of ongoing shard transfers
* https://github.com/qdrant/qdrant/pull/3311 - Also report collection recovery progress in non-interactive terminals
* https://github.com/qdrant/qdrant/pull/3235 - Set custom thread priorities on Linux for better scheduling
* https://github.com/qdrant/qdrant/pull/3257, https://github.com/qdrant/qdrant/pull/3313 - Avoid logging of health and metrics APIs in access log
* https://github.com/qdrant/qdrant/pull/3418 - Report the timestamp of last seen error in cluster, helpful for debugging
* https://github.com/qdrant/qdrant/pull/3419 - Expose the git commit hash of the build at the root endpoint
* https://github.com/qdrant/qdrant/pull/3498 - Allow loading of segments to be stopped in the middle if cancelled
* https://github.com/qdrant/qdrant/pull/3552 - Expose request timing histogram for Prometheus in metrics endpoint
* https://github.com/qdrant/qdrant/pull/3581 - Report version in logs on startup

## Bug fixes 🔂

* https://github.com/qdrant/qdrant/pull/3386 - Fix multiple vector updates on same point in batch not working
* https://github.com/qdrant/qdrant/pull/3512 - Expose `discover` endpoint statistics in the metrics
* https://github.com/qdrant/qdrant/pull/3544 - Fix some REST endpoints not being usable with read-only API key
* https://github.com/qdrant/qdrant/pull/3592 - Fix internal proxy always forwarding successful requests three times
* https://github.com/qdrant/qdrant/pull/3423 - Return better suited status codes in the gRPC API
* https://github.com/qdrant/qdrant/pull/3387 - Disable large limit optimization for plain indices
* https://github.com/qdrant/qdrant/pull/3557, https://github.com/qdrant/qdrant/pull/3565 - Properly configure RocksDB options on all column families, reducing memory usage
* https://github.com/qdrant/qdrant/pull/3580 - Fix reading vector data out of bounds
* https://github.com/qdrant/qdrant/pull/3608 - Fix a potential zero division error in geo filter queries
* https://github.com/qdrant/qdrant/pull/3623 - Security patch for snapshot upload file name

## Dashboard 🍱

* https://github.com/qdrant/qdrant-web-ui/pull/153 - Add snapshots for demo collections
* https://github.com/qdrant/qdrant-web-ui/pull/156 - Auto-complete required fields when inserting commands
* https://github.com/qdrant/qdrant-web-ui/pull/155 - Add button to delete points
* https://github.com/qdrant/qdrant-web-ui/pull/134 - Visualize discovery scores
* https://github.com/qdrant/qdrant-web-ui/pull/160 - Fix vector visualisation with optional named vectors
* [Other changes](https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.22)

---

Thanks to @AlexandruCihodaru @Florents-Tselai @Shylock-Hg @amietn @ding-young @Okabe-Rintarou-0 @JojiiOfficial @mrbusche @gabrieldemian @2k4sm @Anush008 @TuanaCelik @kwkr @neo773 @Dhanus3133 @KShivendu @joein @xzfc @ffuugoo @IvanPleshkov @agourlay @coszio @generall @timvisee for their contributions!
-----
