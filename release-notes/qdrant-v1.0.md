| Version | Date | US date | EU date |
| ------- | ---- | ------- | ------- |
| [v1.0.3](qdrant-v1.0.md#release-v103) | Mar 06 2023 | 03/06/23 | 2023-03-06 |
| [v1.0.2](qdrant-v1.0.md#release-v102) | Feb 21 2023 | 02/21/23 | 2023-02-21 |
| [v1.0.1](qdrant-v1.0.md#release-v101) | Feb 08 2023 | 02/08/23 | 2023-02-08 |
| [v1.0.0](qdrant-v1.0.md#release-v100) | Feb 08 2023 | 02/08/23 | 2023-02-08 |



# Release v1.0.3
# Changelog

This is another intermediate bugfix release, stay tuned!

* https://github.com/qdrant/qdrant/pull/1522 - fixes unwanted extra connections problem. Fixes performance degradation related to usage of replication factor > 1
* https://github.com/qdrant/qdrant/pull/1453 - re-implementation of better error message while handling malformed point ids.

-----
# Release v1.0.2
# Changelog

This an intermediate bugfix release:

* https://github.com/qdrant/qdrant/pull/1485 - fixes automatic threads number selection, prevents blocking of consensus execution thread in low-cpu environment. Also adjusts automatic search threads selection to improve CPU utilization


Next big release with is coming soon, stay tuned!
-----
# Release v1.0.1
# Changelog

* UUID WAL recovery hotfix!

Please prefer this version over v1.0.0
-----
# Release v1.0.0
Hi! It's our v1.0 release! :tada:

* We stabilized the core API, filled in missing pieces, and prepared an extendable platform for upcoming features (yes, we have a new [roadmap](https://github.com/qdrant/qdrant/blob/master/docs/roadmap/README.md)!)
* Mastered upgrades and migrations. Now it's easy to upgrade Qdrant to the latest version
* Plan each new release with compatibility to the previous one, so you can upgrade Qdrant zero downtime
* Delivered full horizontal scalability for both size and speed
* Achieved best-on-market performance, see [benchmarks](https://qdrant.tech/benchmarks)
* Launched [Qdrant Cloud (beta)](https://cloud.qdrant.io/), a fully managed vector search as a service. Free tier available!

# Change log

## Features :snowboarder:

* https://github.com/qdrant/qdrant/pull/1363 - new API to list collection aliases
* https://github.com/qdrant/qdrant/pull/1377 - new API to delete snapshots
* https://github.com/qdrant/qdrant/pull/1364 - new API to initialize a collection from another collection. Useful for quick experiments over different indexing parameters. In combination with aliases, it allows to seamlessly scale number of shards in the cluster.
* https://github.com/qdrant/qdrant/pull/1381 - read operations have new opt-in consistencies guarantees, ensures consistent reads even from inconsistent cluster
* https://github.com/qdrant/qdrant/pull/1405 - write operations have new opt-in ordering guarantees, ensures that the writes are ordered from parallel overlapping requests

## Improvements :croissant:

* https://github.com/qdrant/qdrant/pull/1432 - Windows support (Windows is a group of several proprietary graphical operating system families developed and marketed by Microsoft.)
* https://github.com/qdrant/qdrant/pull/1352 - run consistency checks only on service startup
* https://github.com/qdrant/qdrant/pull/1347 - quick stop the node startup if the node cannot recover in a distributed setup
* https://github.com/qdrant/qdrant/pull/1353 - speed up snapshot creation, prevent blocking the execution thread
* https://github.com/qdrant/qdrant/pull/1391 - recover dead shards pro-actively
* https://github.com/qdrant/qdrant/pull/1415 - enable on disk payload option by default
* https://github.com/qdrant/qdrant/pull/1416 - improve error reporting for malformed point ids
* https://github.com/qdrant/qdrant/pull/1425 - allow to overwrite max number of cpus with env variable, useful for docker containers and kubernetes
* https://github.com/qdrant/qdrant/pull/1398 - decrease number of Tokio runtimes, improve performance
* https://github.com/qdrant/qdrant/pull/1431 - use performance optimized linker setup, up to 20% performance improvement on some workloads

## Bug fixes :bowling:

* https://github.com/qdrant/qdrant/pull/1365 - do not abort a succesful shard transfer


## Telemetry :satellite:

* https://github.com/qdrant/qdrant/pull/1401 - Qdrant now collects anonymized telemetry data. It is enabled by default, but is simply disabled with CLI or ENV variable. The data is collected anonymously and is used to improve Qdrant. You can read more about it in the [docs](https://qdrant.tech/documentation/telemetry).

## Future plans :crystal_ball:

This release concludes our [2022 roadmap](https://github.com/qdrant/qdrant/blob/master/docs/roadmap/roadmap-2022.md). We covered even more features than we planned, and we are very happy with the results.
Now we have already started working on the [2023 roadmap](https://github.com/qdrant/qdrant/blob/master/docs/roadmap/README.md), aiming to make vector search even faster, billion-scale deployments affordable and extend vector similarity beyond just search.

Thanks for all our contributors, users and supporters! :heart:

Special thanks to people who contributed to this release:

@agourlay, @ffuugoo, @joein, @coszio, @csko


-----
