| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.5.1](qdrant-v1.5.md#release-v151) | Sep 12 2023 | 09/12/23 | 2023-09-12 |
| [v1.5.0](qdrant-v1.5.md#release-v150) | Sep 07 2023 | 09/07/23 | 2023-09-07 |



# Release v1.5.1
# Change log

## Improvements 🔐

* https://github.com/qdrant/qdrant/pull/2613 - Add unprivileged Docker image more suitable for secure environments

## Bug Fixes 🥀

* https://github.com/qdrant/qdrant/pull/2641 - Emergency fix for potential deadlock on segments preventing all updates and flushes

## Dashboard 🍱

* https://github.com/qdrant/qdrant-web-ui/pull/113 - Fix downloading snapshots from dashboard
-----
# Release v1.5.0
# Change log

## Features 🪩

- https://github.com/qdrant/qdrant/pull/1951, https://github.com/qdrant/qdrant/pull/2496 - Add batch update endpoint for points API
- https://github.com/qdrant/qdrant/pull/2470 - Add binary quantization
- https://github.com/qdrant/qdrant/pull/2410, https://github.com/qdrant/qdrant/pull/2562, https://github.com/qdrant/qdrant/pull/2571 - Add shard snapshot API
- https://github.com/qdrant/qdrant/pull/2431, https://github.com/qdrant/qdrant/pull/2488 - Add `indexed_only` parameter to skip unindexed segments speeding up search
- https://github.com/qdrant/qdrant/pull/2483 - Add gRPC reflection server
- https://github.com/qdrant/qdrant/pull/2475 - Add optimizer status and history in telemetry to help debug optimizer failures
- https://github.com/qdrant/qdrant/pull/2409 - Add healthz, livez and readyz endpoints for Kubernetes health checking
- https://github.com/qdrant/qdrant/pull/2457 - Add stack trace API to help debug current state of all threads
- https://github.com/qdrant/qdrant/pull/2549 - Add recovery mode flag in metrics

## Improvements 🪥

- https://github.com/qdrant/qdrant/pull/2563 - Improve handling of shard load failure, automatically recover in distributed mode
- https://github.com/qdrant/qdrant/pull/2187, https://github.com/qdrant/qdrant/pull/2506 - Improve log formatting, support better trace logging
- https://github.com/qdrant/qdrant/pull/2339 - Remove unused debug setting from configuration
- https://github.com/qdrant/qdrant/pull/2420, https://github.com/qdrant/qdrant/pull/2446, https://github.com/qdrant/qdrant/pull/2453, https://github.com/qdrant/qdrant/pull/2524 - Share equal point keyword strings to reduce RAM usage
- https://github.com/qdrant/qdrant/pull/2536 - Clean up temporary directories on start
- https://github.com/qdrant/qdrant/pull/2576 - Add OCI labels on Docker image

## Bug fixes 🫥

- https://github.com/qdrant/qdrant/pull/2514 - Fix potential loss of points, vectors and payloads on crash
- https://github.com/qdrant/qdrant/pull/2508 - Fix broken raft state due to accidental truncation of last consensus WAL element
- https://github.com/qdrant/qdrant/pull/2485 - Fix error handling when optimizer panics, report fault status
- https://github.com/qdrant/qdrant/pull/2422 - Fix panic when cancelling quantization early
- https://github.com/qdrant/qdrant/pull/2478 - Fix quantization oversampling giving worse results due to wrong ordering
- https://github.com/qdrant/qdrant/pull/2544 - Fix crash on huge dimensionality by limiting vector dimension to 65536
- https://github.com/qdrant/qdrant/pull/2489, https://github.com/qdrant/qdrant/pull/2501, https://github.com/qdrant/qdrant/pull/2523 - Fix vulnerability in Rustls Web PKI
- https://github.com/qdrant/qdrant/pull/2510 - Fix incorrect ID recovery when database is corrupted
- https://github.com/qdrant/qdrant/pull/2528 - Fix temporary snapshot files not being deleted on error

## Dashboard 🍱

- https://github.com/qdrant/qdrant-web-ui/pull/103 - Add collection info tab
- https://github.com/qdrant/qdrant-web-ui/pull/107 - Download/upload snapshots with API key
- [Other changes](https://github.com/qdrant/qdrant-web-ui/releases/tag/v0.1.15)

## FastEmbed ⚡

Our Python client ([`qdrant-client`](https://github.com/qdrant/qdrant-client)) now integrates with our [FastEmbed](https://github.com/qdrant/fastembed) package  - a lightweight, fast, Python library built for retrieval embedding generation.

That allows to seamlessly add and search documents in Qdrant, avoiding manual encoding and configuration of the collections.

Read more: https://github.com/qdrant/qdrant-client/releases/tag/v1.5.0

---

Thanks to @DengYiping @camdencheek @zpp12354321 @dzhao @zzzz-vincent @ffuugoo @IvanPleshkov @agourlay @coszio @timvisee for their contributions!
-----
