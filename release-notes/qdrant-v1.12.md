| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.12.1](qdrant-v1.12.md#release-v1121) | Oct 11 2024 | 10/11/24 | 2024-10-11 |
| [v1.12.0](qdrant-v1.12.md#release-v1120) | Oct 08 2024 | 10/08/24 | 2024-10-08 |



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
