| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.13.0](qdrant-v1.13.md#release-v1130) | Jan 17 2025 | 01/17/25 | 2025-01-17 |



# Release v1.13.0
# Change log

## Features 🎨

- [milestone/18](https://github.com/qdrant/qdrant/milestone/18) - Add GPU support for HNSW super fast indexing
- [milestone/3](https://github.com/qdrant/qdrant/milestone/3) - Add resharding in our [cloud](https://qdrant.tech/documentation/cloud-intro/) offering, change the number of shards at runtime
- [milestone/13](https://github.com/qdrant/qdrant/milestone/13) - Add strict mode to restrict certain type of operations on collections
- https://github.com/qdrant/qdrant/pull/5303 - Add Has Vector filtering condition, check if a named vector is present on a point

## Improvements 🚀

- https://github.com/qdrant/qdrant/pull/5783 - Switch to mmap storage for payloads by default to make it more efficient, eliminating unexpected latency spikes
- https://github.com/qdrant/qdrant/pull/5784 - Switch to mmap storage for sparse vectors to make it more efficient, allowing better resource management
- https://github.com/qdrant/qdrant/pull/5781 - Compress HNSW graph links
- https://github.com/qdrant/qdrant/pull/5796 - Remove peer metadata for removed peers
- https://github.com/qdrant/qdrant/pull/5634 - Allow to set `max_optimization_threads` back to automatic
- https://github.com/qdrant/qdrant/pull/5178 - Stream snapshots in snapshot transfer, don't put snapshots on disk first

## Bug fixes 💢

- https://github.com/qdrant/qdrant/pull/5810 - Fix incorrect validation rules on deleted threshold in gRPC API
- https://github.com/qdrant/qdrant/pull/5808 - Don't allow conflicting names for dense and sparse vectors

---

Thanks to @gulshan-rs @ashwantmanikoth @kartik-gupta-ij @palash25 @redouan-rhazouani @weiwch @n0x29a @pedjak @agourlay @xzfc @JojiiOfficial @tellet-q @coszio @ffuugoo @KShivendu @joein @IvanPleshkov @generall @timvisee for their contributions!
-----
