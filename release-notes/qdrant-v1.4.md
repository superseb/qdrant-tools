| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.4.1](qdrant-v1.4.md#release-v141) | Aug 10 2023 | 08/10/23 | 2023-08-10 |
| [v1.4.0](qdrant-v1.4.md#release-v140) | Aug 03 2023 | 08/03/23 | 2023-08-03 |



# Release v1.4.1
# Change log

## Improvements

* https://github.com/qdrant/qdrant/pull/2131 - Skip outdated Raft heartbeats, improve consensus networking footprint
* https://github.com/qdrant/qdrant/pull/2384 - Use seeded randomness for ID tracker point sampling, improves consistency of the search results
* https://github.com/qdrant/qdrant/pull/2407 - Whitelist root endpoint to not require API key, simplifies health-checks in k8s
* https://github.com/qdrant/qdrant/pull/2388 - Optimize RAM usage for keywords index

## Bug Fixes

* https://github.com/qdrant/qdrant/pull/2408 - Fix infinite reindexing after mmap threshold patching
* https://github.com/qdrant/qdrant/pull/2414 - Fix incorrect file URI handling in snapshot recovery
* https://github.com/qdrant/qdrant/pull/2399 - Deactivate failed nodes in Initializing state


-----
# Release v1.4.0
# Change log

## Features 🎎

- https://github.com/qdrant/qdrant/pull/2107, https://github.com/qdrant/qdrant/pull/2174 - Add binary index for boolean payloads
- https://github.com/qdrant/qdrant/pull/2083, https://github.com/qdrant/qdrant/pull/2087, https://github.com/qdrant/qdrant/pull/2328, https://github.com/qdrant/qdrant/pull/2090, https://github.com/qdrant/qdrant/pull/2097 - Support changing HNSW/quantization/on_disk parameters of existing collection at runtime
- https://github.com/qdrant/qdrant/pull/2023, https://github.com/qdrant/qdrant/pull/2260 - Add `multilingual` tokenizer for non-latin alphabets, optionally supporting CJK

## Improvements 🔎

- https://github.com/qdrant/qdrant/pull/2293 - Implement cancellation of search requests, stop searching if request is dropped and add timeout
- https://github.com/qdrant/qdrant/pull/2292 - Improve performance and memory use of deduplicating points
- https://github.com/qdrant/qdrant/pull/2316 - Allow to configure name of init file with environment variable
- https://github.com/qdrant/qdrant/pull/2337 - Migrate raft state on disk from CBOR to JSON for easy debugging
- https://github.com/qdrant/qdrant/pull/2319 - Remove leftover temporary segment directory when loading shard
- https://github.com/qdrant/qdrant/pull/2368 - Log shard state changes to easy debugging

## Bug fixes 🤯

- https://github.com/qdrant/qdrant/pull/2343 - Fix consensus doing a lot of obsolete work when synchronizing causing consensus to get stuck
- https://github.com/qdrant/qdrant/pull/2286 - Fix memory overallocation in vector storage
- https://github.com/qdrant/qdrant/pull/2372, https://github.com/qdrant/qdrant/pull/2376 - Fix io_uring still being initialized if not used, fixes memory leak on old kernels
- https://github.com/qdrant/qdrant/pull/2272 - Fix deleted segments still being loaded
- https://github.com/qdrant/qdrant/pull/2365 - Fix handling of locally disabled peers
- https://github.com/qdrant/qdrant/pull/2373 - Fix shard state desync on shard transfer if messages are delayed
- https://github.com/qdrant/qdrant/pull/2366 - Fix quantization panic if quantile is very close to 1.0

## Dashboard :bento: 

- https://github.com/qdrant/qdrant-web-ui/pull/81, https://github.com/qdrant/qdrant-web-ui/pull/78 - Add collection snapshot management: upload, create, download and delete snapshots from browser
- https://github.com/qdrant/qdrant-web-ui/pull/88 - Edit points payload
- https://github.com/qdrant/qdrant-web-ui/pull/85 - Vectors visualization using t-SNE dimensionality reduction algorithm

![image](https://github.com/qdrant/qdrant/assets/1935623/2473496f-e343-434e-bb63-895f307ae9ec)



---

Thanks to @yarikoptic @hi-rustin @zzzz-vincent @zarkone @ffuugoo @IvanPleshkov @agourlay @coszio @timvisee for their contributions!
-----
