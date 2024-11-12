| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.12.3](qdrant-v1.12.md#release-v1123) | Nov 12 2024 | 11/12/24 | 2024-11-12 |
| [v1.12.2](qdrant-v1.12.md#release-v1122) | Nov 08 2024 | 11/08/24 | 2024-11-08 |
| [v1.12.1](qdrant-v1.12.md#release-v1121) | Oct 11 2024 | 10/11/24 | 2024-10-11 |
| [v1.12.0](qdrant-v1.12.md#release-v1120) | Oct 08 2024 | 10/08/24 | 2024-10-08 |



# Release v1.12.3
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/5411 - Do not report peer address replaced as warning if it's still the same
- https://github.com/qdrant/qdrant/pull/5426 - Expose usage of async scorer in telemetry

## Bug fixes

- https://github.com/qdrant/qdrant/pull/5427 - Fix potential panic during search over deleted points or with payload filters
-----
# Release v1.12.2
# Change log

## Improvements

- https://github.com/qdrant/qdrant/pull/5313, https://github.com/qdrant/qdrant/pull/5314, https://github.com/qdrant/qdrant/pull/5303, https://github.com/qdrant/qdrant/pull/5317 - Improve performance of matrix API
- https://github.com/qdrant/qdrant/pull/5219, https://github.com/qdrant/qdrant/pull/5251, https://github.com/qdrant/qdrant/pull/5254, https://github.com/qdrant/qdrant/pull/5305 - Improve performance by not capturing backtrace if not necessary
- https://github.com/qdrant/qdrant/pull/5336, https://github.com/qdrant/qdrant/pull/5365, https://github.com/qdrant/qdrant/pull/5393 - Improve HNSW search performance by tweaking visited list
- https://github.com/qdrant/qdrant/pull/5301, https://github.com/qdrant/qdrant/pull/5309 - Improve performance by reusing RocksDB options, do not recreate them all the time
- https://github.com/qdrant/qdrant/pull/5265 - Add support for reinitializing consensus with new peer URLs
- https://github.com/qdrant/qdrant/pull/5373 - Put quantized data in RAM by default to prevent competing with memory mapped vectors
- https://github.com/qdrant/qdrant/pull/5252 - Use streaming creation of snapshot in shard snapshot transfer
- https://github.com/qdrant/qdrant/pull/5343 - Prevent killing replicas eagerly if node is out of sync, making replicas more robust
- https://github.com/qdrant/qdrant/pull/5266 - Report memory usage in metrics and telemetry
- https://github.com/qdrant/qdrant/pull/5307 - Enable Jemalloc in RocksDB
- https://github.com/qdrant/qdrant/pull/5312 - Enable Jemalloc background thread to gradually release unused memory
- https://github.com/qdrant/qdrant/pull/5292 - Report storage bytes estimate for each segment in telemetry
- https://github.com/qdrant/qdrant/pull/5380 - Add log message when shard transfer is aborted
- https://github.com/qdrant/qdrant/pull/5391 - Prevent unused repeated calls to other peers when waiting on `/readyz`
- https://github.com/qdrant/qdrant/pull/5180 - Report CPU endianness in telemetry output
- https://github.com/qdrant/qdrant/pull/5228 - Minimize point version lookups during search
- https://github.com/qdrant/qdrant/pull/5399 - Improve error when using unknown vector name

## Bug fixes

- https://github.com/qdrant/qdrant/pull/5346 - Fix mishandling point deletions with payload indices
- https://github.com/qdrant/qdrant/pull/5211 - Fix panic in query API if vector name is missing
- https://github.com/qdrant/qdrant/pull/5232 - Fix potential panic if Qdrant crashed during sparse vector deletion
- https://github.com/qdrant/qdrant/pull/5271, https://github.com/qdrant/qdrant/pull/5286, https://github.com/qdrant/qdrant/pull/5302 - Fix potentially missing an update on WAL delta transfer with empty delta
- https://github.com/qdrant/qdrant/pull/5141, https://github.com/qdrant/qdrant/pull/5147 - Fix consensus errors on new peers if first peer is removed, now remember first ever peer
- https://github.com/qdrant/qdrant/pull/5367 - Properly update all collection configuration properties when Raft snapshot is applied
- https://github.com/qdrant/qdrant/pull/5350 - Fix consensus synchronization waiting on the wrong value, now speeding up synchronization
- https://github.com/qdrant/qdrant/pull/5383 - In `/readyz` wait for consensus operations to be applied, instead of just being received
- https://github.com/qdrant/qdrant/pull/5227, https://github.com/qdrant/qdrant/pull/5296 - Fix shard snapshot operations when using S3
- https://github.com/qdrant/qdrant/pull/5237 - Properly clean up temporary snapshot files when using S3
- https://github.com/qdrant/qdrant/pull/5253 - Properly clean up temporary segment files if optimization is cancelled
- https://github.com/qdrant/qdrant/pull/5386 - Fix flushing of point ID mappings potentially causing inconsistencies
-----
# Release v1.12.1
# Change log

## Bug fixes

* https://github.com/qdrant/qdrant/pull/5222 - prevents panic in case of geo-radius is 0
-----
# Release v1.12.0
# Change log

## Features :tropical_drink:

* [#milestone-4](https://github.com/qdrant/qdrant/milestone/4?closed=1) - Facets API - adds ability to retrieve unique payload values with counts for a given index field under the given filter. [[Docs](https://qdrant.tech/documentation/concepts/payload/#facet-counts)]
* [#milestone-11](https://github.com/qdrant/qdrant/milestone/11?closed=1) - Distance Matrix API - adds ability to calculate many-to-many distances between stored vectors. This feature is useful for clustering, dimensionality reduction, visualization, and other data exploration tasks. [[Docs](https://qdrant.tech/documentation/concepts/explore/#distance-matrix)]

## Improvements :roller_coaster:

* https://github.com/qdrant/qdrant/pull/5188 - Use mmap vector storage by default. This change have several important implications: 
    * We avoid using expensive `rocksdb` to make upload significantly faster, especially for large datasets.
    * Vectors are stored in memory-mapped files, which means that the OS will manage the memory for us. Qdrant process will consume less RSS Anon memory, but will use disk cache instead. That means that in case of high memory usage qdrant will slow down instead of crashing with OOM.
* [#milestone-14](https://github.com/qdrant/qdrant/milestone/14?closed=1) - Enable sparse snapshots, which means that allocated but empty files in the vector storage no longer occupy extra disk space in the snapshot. See [Sparse files](https://en.wikipedia.org/wiki/Sparse_file). This change rely on the upstream changes in `tar-rs` crate - https://github.com/alexcrichton/tar-rs/pull/375
* [#milestone-12](https://github.com/qdrant/qdrant/milestone/12?closed=1) - Ability to offload text-index on disk
* https://github.com/qdrant/qdrant/pull/4841 - Ability to offload geo-index on disk
* https://github.com/qdrant/qdrant/pull/5140 - Trigger optimizers when uploading snapshots.
* https://github.com/qdrant/qdrant/pull/5173 - Instantly self-elect Raft leader, when cluster contains single peer

## Bug fixes :performing_arts:

* https://github.com/qdrant/qdrant/pull/5176 - Make shards removal atomic, prevents partial shard recovery on restart.

## Web-UI Dashboard :bento:

* Improved graph visualization, which allows to sample large chunk of data from the collection
* Improvements in visualization panned UX
* More interactive tutorials and examples
* Full list - https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.32

![Screenshot from 2024-10-08 17-49-04](https://github.com/user-attachments/assets/43fa1784-25cd-4fa6-a4e0-bf189cf1a9d7)

-----
