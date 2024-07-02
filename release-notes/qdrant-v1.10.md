| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.10.0](qdrant-v1.10.md#release-v1100) | Jul 01 2024 | 07/01/24 | 2024-07-01 |



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

* Significant refactoring of the [Rust Client](https://docs.rs/qdrant-client/1.10) making it more extendable, easier to use and more idiomatic
* New API reference web-page - https://api.qdrant.tech/
* New fast sparse embedding model - [BM42](https://qdrant.tech/articles/bm42), aimed to resolve limitations of SPLADE and fix full-text search issue for RAG
-----
