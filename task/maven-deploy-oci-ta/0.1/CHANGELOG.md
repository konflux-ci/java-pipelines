# Changelog

## 0.1

Initial release.

- Run hard-coded `mvn clean source:jar deploy` with local `target/stage-deploy` staging.
- Deploy component build artifact as OCI image manifest
  (`application/vnd.konflux.maven.repository.v1+tar`).
