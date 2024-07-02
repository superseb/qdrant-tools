| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.10.0](qdrant-v1.1.md#release-v1100) | Jul 01 2024 | 07/01/24 | 2024-07-01 |
| [v1.1.3](qdrant-v1.1.md#release-v113) | May 06 2023 | 05/06/23 | 2023-05-06 |
| [v1.1.2](qdrant-v1.1.md#release-v112) | Apr 27 2023 | 04/27/23 | 2023-04-27 |
| [v1.1.1](qdrant-v1.1.md#release-v111) | Apr 12 2023 | 04/12/23 | 2023-04-12 |
| [v1.1.0](qdrant-v1.1.md#release-v110) | Mar 17 2023 | 03/17/23 | 2023-03-17 |



# Release v1.10.0
# Change Log

## Features :tiger:

* https://github.com/qdrant/qdrant/issues/4225 - Universal query API - [[Docs](https://qdrant.tech/documentation/concepts/search/#query-api)]
    * Support search, recommendations, discovery, ordering by payload in a single request
    * Perform [hybrid search](https://qdrant.tech/documentation/concepts/hybrid-queries/#hybrid-search) by merging results from different queries with fusion
    * Build [multi-stage](https://qdrant.tech/documentation/concepts/hybrid-queries/#multi-stage-queries) queries with re-scoring to achieve better performance

* https://github.com/qdrant/qdrant/issues/3684 - Support for multivectors - [[Docs](https://qdrant.tech/documentation/concepts/vectors/#multivectors)]
    * Use late interaction (such as ColBERT) models natively in Qdrant
    * Store dynamic number of vectors per point with shared payload

* https://github.com/qdrant/qdrant/pull/4122 - Support for `float16` datatype for dense vectors - [[Docs](https://qdrant.tech/documentation/concepts/vectors/#datatypes)]
    * Reduce memory consumption for dense vectors by 2x
    * Minimal accuracy loss for compared to full precision vectors

* https://github.com/qdrant/qdrant/pull/4454, https://github.com/qdrant/qdrant/pull/4514 - Support for `float16` and `uint8` datatype for sparse vectors index - [[Docs](https://qdrant.tech/documentation/concepts/vectors/#datatypes)]
    * Reduce memory consumption for sparse vectors by factor of 2 and 4 correspondingly
    * Minimal accuracy loss for compared to full precision vectors

* https://github.com/qdrant/qdrant/pull/4126 - Support for Inverse Document Frequency (IDF) in sparse vectros - [[Docs](https://qdrant.tech/documentation/concepts/indexing/#idf-modifier)]
    * Provides an option to automatically account for IDF in sparse vectors search
    * Unlocks the ability to stream updates for BM25 and [BM42](https://qdrant.tech/articles/bm42) embeddings


* https://github.com/qdrant/qdrant/issues/3324 - Support for S3-compatible storage for snapshots - [[Docs](https://qdrant.tech/documentation/concepts/snapshots/#s3)]

* https://github.com/qdrant/qdrant/issues/3471 - Issue reporting
    * Get notified about potential performance issues and misconfigurations

* https://github.com/qdrant/qdrant/pull/4299 - Ability to configure default collection parameters
    * Pre-configure quantization, vector storage and replication factor for new collections

* https://github.com/qdrant/qdrant/pull/4317 - Ability to overwrite global optimizer configuration for collections
    * Allows to separate roles for indexing and searching within the single qdrant cluster


## Improvements :shark:

* https://github.com/qdrant/qdrant/pull/4253, https://github.com/qdrant/qdrant/pull/4350 - Delta Encoding and bitpacking compression for sparse vectors
    * Reduce memory consumption for sparse vectors by up to 75%

* https://github.com/qdrant/qdrant/pull/4527 - Skip serialization of empty fields in the search response
    * Less confusion in the search response
    * Reduce network traffic

* https://github.com/qdrant/qdrant/pull/4267 - Add test for OOD during indexing, prevents crash on out-of-disk


## Bug Fixes :mosquito:

* https://github.com/qdrant/qdrant/pull/4553 - Fix exclusion of ids in discovery api
* https://github.com/qdrant/qdrant/pull/4583 - Fix potential storage corruption during hard shutdown

---

## Highlights :bulb:

* Significant refactoring of the [Rust Client](https://docs.rs/qdrant-client/1.10.0/qdrant_client/) making it more extendable, easier to use and more idiomatic
* New API reference web-page - https://api.qdrant.tech/
* New fast sparse embedding model - [BM42](https://qdrant.tech/articles/bm42), aimed to resolve limitations of SPLADE and fix full-text search issue for RAG
-----
# Release v1.1.3
# Change log

## Bug fixes

* https://github.com/qdrant/qdrant/pull/1847 - restrict quantization to immutable segments only

-----
# Release v1.1.2
# Change log 

## Bug Fixes

* https://github.com/qdrant/qdrant/pull/1798, https://github.com/qdrant/qdrant/pull/1797 - fix validation of `m` param in HNSW config. Allow `m=0`
-----
# Release v1.1.1
# Change log

## Features :dizzy:

* https://github.com/qdrant/qdrant/pull/1675, https://github.com/qdrant/qdrant/pull/1680 - Add vector specific HNSW and Quantization configuration. Now each vector field can have independent configuration for HNSW and Quantization. This allows to have different vector fields with different configuration.
* https://github.com/qdrant/qdrant/pull/1668, https://github.com/qdrant/qdrant/pull/1676 - Add `last-used` and `startup` timing information into telemetry API.
* https://github.com/qdrant/qdrant/pull/1593, https://github.com/qdrant/qdrant/pull/1581, https://github.com/qdrant/qdrant/pull/1581, https://github.com/qdrant/qdrant/pull/1663, https://github.com/qdrant/qdrant/pull/1642 - Add TLS support for gRPC and REST API. As well as TLS for internal communication between nodes. Enables to use Qdrant in more secure manner. Enables verification on both client and server side.
* https://github.com/qdrant/qdrant/pull/1578 - Ability to upload and recover snapshot files directly using multipart request.
* https://github.com/qdrant/qdrant/pull/1627 - Display aggregated vector count in `/metrics` endpoint.
* https://github.com/qdrant/qdrant/pull/1617, https://github.com/qdrant/qdrant/pull/1598, https://github.com/qdrant/qdrant/pull/1616 - New `isNull` condition for payload filtering. It allows to filter vectors with null values in specific fields. Allows to distinguish between empty and null values.


## Improvements :brain:

* https://github.com/qdrant/qdrant/pull/1634, https://github.com/qdrant/qdrant/pull/1463 - Add parameter validation to REST and gPRC API, as well as to config file. This allows prevent misconfiguration and provide better error messages.
* https://github.com/qdrant/qdrant/pull/1571 - Add `wait` parameter to snapshot API. This allows skip waiting for snapshot creation and return immediately. Useful for long running operations.
* https://github.com/qdrant/qdrant/pull/1682 - Refactor transport channel pool and introduce internal rate limiter. This change makes cluster more stable under high concurrency load.
* https://github.com/qdrant/qdrant/pull/1682 - prevent snapshot process from blocking updates in Listener mode.


## Bug fixes :bug: :gun:

* https://github.com/qdrant/qdrant/pull/1595 - fix the optimizer crash with `Removing segment which is still in use` problem, which was possible under high load.
* https://github.com/qdrant/qdrant/pull/1608 - fix runtime lockup on leader re-election.
* https://github.com/qdrant/qdrant/pull/1657 - Restore `is_empty` filtering condition to original behavior, which was compromised in last release. Payload is considered empty if: 1) it is null, 2) it is an empty array, 3) the key is not present in the payload.
* https://github.com/qdrant/qdrant/pull/1638 - fix error handling during shard transfer. Not failed updates are reported properly to the consensus.
* https://github.com/qdrant/qdrant/pull/1672, https://github.com/qdrant/qdrant/pull/1674 - fix `slice/api.rs at line 2594: index out of bounds` panic. 
* https://github.com/qdrant/qdrant/pull/1671 - fix possible double read lock in case of updates with enforces ordering.

---

New local mode in Qdrant Python SDK

![try-develop-deploy](https://user-images.githubusercontent.com/1935623/231246485-719e3d7b-1c44-49a0-8f7d-7d1d20120675.png)

Simply install

```bash
pip install qdrant-client==1.1.4
```

and start using qdrant in local mode, no docker required

```python
from qdrant_client import QdrantClient
client = QdrantClient(":memory:")
```

---

Thanks to @coszio, @timvisee, @DengYiping, @IvanPleshkov, @agourlay, @ffuugoo, @Weijun-H, @ibrahim-akrab, @timonv, @tusharxoxoxo, @stencillogic, @eltociear, @nisiyong for their contributions!

-----
# Release v1.1.0
# Change log

## Features :atom_symbol: 

* https://github.com/qdrant/qdrant/pull/1311, https://github.com/qdrant/qdrant/pull/1538 - **Scalar Quantization** is now available in Qdrant! Compress `float32 -> int8` to gain up to a 4x decrease in memory consumption and up to a 2x speed boost with minimum loss of accuracy. See more in [quantization docs](https://qdrant.tech/documentation/quantization/)
* https://github.com/qdrant/qdrant/pull/1466 - Add Match Any filtering condition allows to specify a set of values to check much more simpler. [Docs](https://qdrant.tech/documentation/filtering/#match-any) 
* https://github.com/qdrant/qdrant/pull/1482 - Experimental support for listener mode. Useful for dedicated backup machines and cross-regional backups. [Docs](https://qdrant.tech/documentation/distributed_deployment/#listener-mode)
*  https://github.com/qdrant/qdrant/pull/1541 - basic implementation of `/metrics` API - serves telemetry in OpenMetric format. Suitable for automatic metrics collection with tools like Prometheus.

## Improvements :climbing:

* https://github.com/qdrant/qdrant/pull/1451 - the ability to checkpoint Raft consensus. Allows to optimize operations for long-running clusters. [Docs](https://qdrant.tech/documentation/distributed_deployment/#consensus-checkpointing)
* https://github.com/qdrant/qdrant/pull/1465, https://github.com/qdrant/qdrant/pull/1487 - allow making filtering conditions using nested data structures. [Docs](https://qdrant.tech/documentation/filtering/#nested-key) 
* https://github.com/qdrant/qdrant/pull/1534 - Improved functionality of snapshot recovery API: 
  * Allows to recover snapshots taken in distributed mode on local deployment.
  * Allows recovering snapshots even if the collection does not exist
  * Allows to use `wait=false` during recovery. API will also tolerate disconnections now
* https://github.com/qdrant/qdrant/pull/1531 - Fix docker build on `arm64` machines


## Bug fixes :cricket:


* https://github.com/qdrant/qdrant/pull/1462 - Fix snapshot recovery on NFS
* https://github.com/qdrant/qdrant/pull/1502 - Fix condition check for count API
* https://github.com/qdrant/qdrant/pull/1549 - Implement missing validation for creating collection aliases
* https://github.com/qdrant/qdrant/pull/1562 - Fix numerical payload index crash with large 64-bit integers
* https://github.com/qdrant/qdrant/pull/1563, https://github.com/qdrant/qdrant/pull/1566 - Fix for geo-payload index, ensures correct loading of the index statistics after a restart. Prevents possible corruption of geo-index storage


Special thanks to @IvanPleshkov, @agourlay, @ffuugoo, @timvisee, @coszio for contributing into this release
-----
