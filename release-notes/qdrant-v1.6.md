| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.6.1](qdrant-v1.6.md#release-v161) | Oct 11 2023 | 10/11/23 | 2023-10-11 |
| [v1.6.0](qdrant-v1.6.md#release-v160) | Oct 09 2023 | 10/09/23 | 2023-10-09 |



# Release v1.6.1
# Change log

## Bug Fixes

* https://github.com/qdrant/qdrant/issues/2787 - Fix quantization re-scoring in case of filtering request 
-----
# Release v1.6.0
# Change log

## Features :world_map:

- https://github.com/qdrant/qdrant/pull/2538, https://github.com/qdrant/qdrant/pull/2662, https://github.com/qdrant/qdrant/pull/2661 - Add new recommendation engine, score results directly from examples
- https://github.com/qdrant/qdrant/pull/2693 - Extend recommendation API, support raw vectors along with point IDs as input
- https://github.com/qdrant/qdrant/pull/2139, https://github.com/qdrant/qdrant/pull/2315, https://github.com/qdrant/qdrant/pull/2766 - Add support for filtering geo coordinates by polygon
- https://github.com/qdrant/qdrant/pull/2599 - Add option to tune shard update parallelism, improve performance for large clusters
- https://github.com/qdrant/qdrant/pull/2642, https://github.com/qdrant/qdrant/issues/2717, https://github.com/qdrant/qdrant/pull/2728, https://github.com/qdrant/qdrant/pull/2741, https://github.com/qdrant/qdrant/pull/2728, https://github.com/qdrant/qdrant/pull/2746 - Distribute searches to other nodes if the current is busy, improve search latency on large clusters

## Improvements :detective:

- https://github.com/qdrant/qdrant/pull/2756 - Add support for specifying a path to retrieve a subset of payload
- https://github.com/qdrant/qdrant/pull/2710 - Fix cardinality estimation for Any filter, improve search performance
- https://github.com/qdrant/qdrant/pull/2744 - Use boolean index in filtering, improve search performance
- https://github.com/qdrant/qdrant/pull/2628 - Add automatic selection of search rescoring mode, improve binary search accuracy
- https://github.com/qdrant/qdrant/pull/2764 - Improve memory usage of geo index
- https://github.com/qdrant/qdrant/pull/2666 - Add immutable numeric index, decreasing memory usage by a factor of 3
- https://github.com/qdrant/qdrant/pull/2745 - Return validation error if filters only have a key but no value specified
- https://github.com/qdrant/qdrant/pull/2615 - Ensure segment compatibility when a collection is loaded
- https://github.com/qdrant/qdrant/pull/2738 - Add gRPC compliant health check method


## Bug fixes :camera_flash:

- https://github.com/qdrant/qdrant/pull/2733 - Fix potential collection deadlock by simplifying segment access patterns
- https://github.com/qdrant/qdrant/pull/2638, https://github.com/qdrant/qdrant/pull/2652, https://github.com/qdrant/qdrant/pull/2528, https://github.com/qdrant/qdrant/pull/2683, https://github.com/qdrant/qdrant/pull/2720 - Fix IO errors on snapshot creation
- https://github.com/qdrant/qdrant/pull/2742 - Fix crash when using range filter with same value as lower and upper bound
- https://github.com/qdrant/qdrant/pull/2759 - Fix collection stuck as initializing after crash in single node deployment
- https://github.com/qdrant/qdrant/pull/2755 - Fix ordering parameter not working for batch point update requests
- https://github.com/qdrant/qdrant/pull/2724 - Fix temporary files left behind by snapshot creation
- https://github.com/qdrant/qdrant/pull/2709 - Remove obsolete storage log files more aggressively, prevent them consuming too much space
- https://github.com/qdrant/qdrant/pull/2765 - Improve documentation for collection update vector parameters

## FastEmbed ⚡

- https://github.com/qdrant/fastembed/pull/13 - Remove bulky dependencies, reduce dependency size by a factor of 25
- Add new models: `sentence-transformers/all-MiniLM-L6-v2`, `intfloat/multilingual-e5-large`
- Add API to list supported models, including: `BAAI/bge-small-en`, `BAAI/bge-base-en`
- [Other changes](https://github.com/qdrant/fastembed/releases/tag/0.0.5)

---

Thanks to @kwkr @etolbakov @smark-d @dzhao @zzzz-vincent @jsoref @ffuugoo @IvanPleshkov @agourlay @coszio @timvisee for their contributions!
-----
