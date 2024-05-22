| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.3.2](qdrant-v1.3.md#release-v132) | Jul 12 2023 | 07/12/23 | 2023-07-12 |
| [v1.3.1](qdrant-v1.3.md#release-v131) | Jul 03 2023 | 07/03/23 | 2023-07-03 |
| [v1.3.0](qdrant-v1.3.md#release-v130) | Jun 23 2023 | 06/23/23 | 2023-06-23 |



# Release v1.3.2
# Change log

## Improvements 🎬

* https://github.com/qdrant/qdrant/pull/2157 - Use configured temporary directory for recovering snapshots
* https://github.com/qdrant/qdrant/pull/2224 - Log HTTP server port at startup
* https://github.com/qdrant/qdrant/pull/2221 - Improve performance of scroll internals

## Bug fixes ⚙️

* https://github.com/qdrant/qdrant/pull/2203 - Fix vectors not being preprocessed when updating vectors individually
* https://github.com/qdrant/qdrant/pull/2222 - Fix potential livelock when optimizer is cancelled
* https://github.com/qdrant/qdrant/pull/2235 - Fix payload index not handling type change
* https://github.com/qdrant/qdrant/pull/2228 - Fix missing release binaries for last versions
* https://github.com/qdrant/qdrant/pull/2237 - Fix WAL not loading when there are unrecognized files
* https://github.com/qdrant/qdrant/pull/2249 - Fix concurrent shard transfers, limit to one per node per collection
* https://github.com/qdrant/qdrant/pull/2250 - Fix potential stack overflow in segment spinlock
-----
# Release v1.3.1
# Change log

## Improvements :vertical_traffic_light: 

* https://github.com/qdrant/qdrant/pull/2137 - Support SIGTERM to shutdown Qdrant
* https://github.com/qdrant/qdrant/pull/2100 - Improve validation of search API requests
* https://github.com/qdrant/qdrant/pull/2156 - Use configured temporary directory for snapshot uploads

## Bug fixes 🏎️

* https://github.com/qdrant/qdrant/pull/2165 - Fix potential deadlock in consensus
* https://github.com/qdrant/qdrant/pull/2171 - Fix potential deadlock due to double read
* https://github.com/qdrant/qdrant/pull/2161 - Fix potential data race when creating collections concurrently
* https://github.com/qdrant/qdrant/pull/2189 - Fix collection create error if files were left behind
* https://github.com/qdrant/qdrant/pull/2185 - Fix panic on startup if storage is not properly flushed

-----
# Release v1.3.0
# Change log

## Features :ring:

* https://github.com/qdrant/qdrant/pull/1981 https://github.com/qdrant/qdrant/pull/1996 https://github.com/qdrant/qdrant/pull/2011 - Lookup in grouping requests. Allows to keep shared group info in a dedicated collection to minimize memory usage.
* https://github.com/qdrant/qdrant/pull/2009 - Self-hosted Web UI. Just open `http://localhost:6333/dashboard` in your browser to see the dashboard. In the first version, it includes collection viewer and interactive query editor with autocomplete.
* https://github.com/qdrant/qdrant/pull/2024 - Experimental :microscope: - support for asynchronous IO with `io_uring`, a feature of recent Linux kernels. Significantly improves performance on network-mounted storages.
* https://github.com/qdrant/qdrant/pull/2070 - Oversampling allows to retrieve more points using quantized vectors and then re-score them using original ones. Allows to tune speed/accuracy tradeoff in the query time.


## Improvements :pushpin:

* https://github.com/qdrant/qdrant/pull/1974 - HNSW performance improvements
* https://github.com/qdrant/qdrant/pull/1868 - Speed up index loading by improving the WAL ack mechanism
* https://github.com/qdrant/qdrant/pull/1912 https://github.com/qdrant/qdrant/pull/1992 - Improve first cold query performance by pre-heating the cache
* https://github.com/qdrant/qdrant/pull/1990 - Improve validation of the collection names
* https://github.com/qdrant/qdrant/pull/2073 - Optimize performance of `is_empty` (and consequently `group-by`) condition by using payload index 
* https://github.com/qdrant/qdrant/pull/2101 - Add `recovery_mode` flag to the telemetry
* https://github.com/qdrant/qdrant/pull/2109 - Validation for the snapshot location download
* https://github.com/qdrant/qdrant/pull/2122 - Check snapsot integrity before recovery
* https://github.com/qdrant/qdrant/pull/1960 - Configurable location for the temporary files
* https://github.com/qdrant/qdrant/pull/2115 - Stability improvements for Raft consensus


## Bug fixes :dragon_face:

* https://github.com/qdrant/qdrant/pull/2003 https://github.com/qdrant/qdrant/pull/2008 - Fix `Channel sender dropped: channel closed` error on duplicated consensus messages
* https://github.com/qdrant/qdrant/pull/2022 - Fix wal clamp in the snapshotting process
* https://github.com/qdrant/qdrant/pull/2021 - Fix validation of the `max_indexing_threads` parameter
* https://github.com/qdrant/qdrant/pull/2051 - Fix batch request with duplicated filters
* https://github.com/qdrant/qdrant/pull/1913 - Prevent rare case of missing payload index after the optimization
* https://github.com/qdrant/qdrant/pull/2053 - Fix mixed up write ordering parameters
* https://github.com/qdrant/qdrant/pull/2063 - Fix snapshot uploading for non-existing collection
* https://github.com/qdrant/qdrant/pull/2061 - Fix for `Point with internal ID not found in id tracker` error, which could appear after non-graceful shutdown
* https://github.com/qdrant/qdrant/pull/2072 - Improve counting vectors in collection info
* https://github.com/qdrant/qdrant/pull/1928 - Fix for `GOAWAY/ENHANCE_YOUR_CALM` error on high load in cluster deployments
* https://github.com/qdrant/qdrant/pull/2112 - Fix saving of deleted mmaped vectors in snapshots
* https://github.com/qdrant/qdrant/pull/2104 - Fix for collection `init_from` parameter, allowing to initialize collection with changed vector-specific parameters
* https://github.com/qdrant/qdrant/pull/2124 - Fix vector compatibility checks, prevents panic on vector size mismatch (related to `on_disk` vectors)
* https://github.com/qdrant/qdrant/pull/2136 - Fix storage integrity during copy-on-write operations

---

Thanks to @russcam, @woile, @kayagokalp, @llogiq, @timsueberkrueb, @sunisdown, @yusufani, @dcastelltort, @agourlay, @timvisee, @coszio, @ffuugoo, @trean for their contributions!

Make sure to check out the new Web UI query editor:

https://github.com/qdrant/qdrant/assets/1935623/b1e9351d-9728-4e38-bf0d-7e402d7ce803

@kartik-gupta-ij is working on it as part of his GSoC project. Stay tuned for more updates!

-----
