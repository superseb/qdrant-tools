| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.2.2](qdrant-v1.2.md#release-v122) | May 25 2023 | 05/25/23 | 2023-05-25 |
| [v1.2.1](qdrant-v1.2.md#release-v121) | May 25 2023 | 05/25/23 | 2023-05-25 |
| [v1.2.0](qdrant-v1.2.md#release-v120) | May 24 2023 | 05/24/23 | 2023-05-24 |



# Release v1.2.2
# Change log

## Bug fix

* https://github.com/qdrant/qdrant/commit/e2fb3d74cf848ecdce271cfb8705b354af9bb377 - fix the incorrect signal handler introduced in the previous bugfix
-----
# Release v1.2.1
# Change log

## Bug fixes

* https://github.com/qdrant/qdrant/pull/1972 - fix error when loading config files, change order in which they're used
* https://github.com/qdrant/qdrant/pull/1975 - fix behavior of CTRL+C in Docker
-----
# Release v1.2.0
# Change log

## Features :tropical_drink:

* https://github.com/qdrant/qdrant/pull/1724, https://github.com/qdrant/qdrant/pull/1757, https://github.com/qdrant/qdrant/pull/1835, https://github.com/qdrant/qdrant/pull/1816, https://github.com/qdrant/qdrant/pull/1836 - support for optional vectors. 
  * This feature allows to create points with only some of the vectors defined. Allows more granular control over data.
  * Introduced two new API for managing vectors independently from payload. [[Docs](https://qdrant.tech/documentation/points/#update-vectors)]
* https://github.com/qdrant/qdrant/pull/1745 - Built-in API key authentication support. [[Docs](https://qdrant.tech/documentation/security/#authentication)]
* https://github.com/qdrant/qdrant/pull/1755, https://github.com/qdrant/qdrant/pull/1777 - Recovery mode for better handling Out-of-Disk and Out-of-Memory errors. [[Docs](https://qdrant.tech/documentation/administration/#recovery-mode)] 
* https://github.com/qdrant/qdrant/pull/1774 - Cluster management API in gRPC.
* https://github.com/qdrant/qdrant/pull/1808 - Add support for TLS certificate rotation
* https://github.com/qdrant/qdrant/pull/1838 - Dynamic mmap vector storage. Allows to store vectors in mmap files right from the start, avoiding optimization step. [[Docs](https://qdrant.tech/documentation/storage/#configuring-memmap-storage)]
* https://github.com/qdrant/qdrant/pull/1602 - Nested object filter. Allows to filter by individual objects inside payload array. [[Docs](https://qdrant.tech/documentation/filtering/#nested-object-filter)]
* https://github.com/qdrant/qdrant/pull/1615 - Enables Product Quantization (PQ) for vectors. [[Docs](https://qdrant.tech/documentation/quantization/#product-quantization)]
* https://github.com/qdrant/qdrant/pull/1768 - Add Group-By API, allowing to group results by payload field. Useful for retrieving top results per group. [[Docs](https://qdrant.tech/documentation/search/#grouping-api)]


## Improvements :surfer:

* https://github.com/qdrant/qdrant/pull/1677 - Memory optimization for full-text index
* https://github.com/qdrant/qdrant/pull/1709 - Increase consensus ping timeout to prevent false positive channel drops
* https://github.com/qdrant/qdrant/pull/1706 - Remove redundant telemetry values
* https://github.com/qdrant/qdrant/pull/1696 - Improve error logging for gRPC endpoints
* https://github.com/qdrant/qdrant/pull/1702, https://github.com/qdrant/qdrant/pull/1824 - Improve semantic for `indexing_threshold` in collection config
* https://github.com/qdrant/qdrant/pull/1767 - Release binaries for different platforms along with docker images
* https://github.com/qdrant/qdrant/pull/1776 - Embed default config file at compile time. Allows to run qdrant without an explicit config file
* https://github.com/qdrant/qdrant/pull/1813 - Limit random ids generator to 53 bits to accommodate JS users
* https://github.com/qdrant/qdrant/pull/1881 - Improve API validation
* https://github.com/qdrant/qdrant/pull/1926 - Remove unused `keep_alive_while_idle`

## Bug fixes :honeybee:

* https://github.com/qdrant/qdrant/pull/1710 - Fix minor bug in hnsw params validation
* https://github.com/qdrant/qdrant/pull/1775 - Fix payload index restoration in snapshots
* https://github.com/qdrant/qdrant/pull/1784 - Allow to address individual values in payload arrays
* https://github.com/qdrant/qdrant/pull/1857 - Prevent `Removing segment which is still in use` error
* https://github.com/qdrant/qdrant/pull/1906 - Remove max message decoding limit on internal gRPC client
* https://github.com/qdrant/qdrant/pull/1936 - Fix saving of the payload index in case of external kill

---

Thanks to @jwpjrdev, @paulotten, @ibrahim-akrab, @Shubham8287, @nilhex, @DengYiping, @eltociear, @Jesse-Bakker, @IvanPleshkov, @agourlay, @timvisee, @coszio for their contributions!
-----
