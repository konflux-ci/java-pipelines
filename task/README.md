# Tasks

Java-specific Tekton Tasks for this catalog live here.

## Layout

Use the flat layout (recommended):

```
task/<name>/<name>.yaml
task/<name>/CHANGELOG.md
task/<name>/README.md
task/<name>/tests/test-*.yaml
```

The task version is defined by `metadata.labels.app.kubernetes.io/version`, not by the
directory name. Legacy version subdirectories (`task/<name>/0.1/<name>.yaml`) are also
supported by the build scripts.

## Shared tasks

Tasks maintained in [build-definitions](https://github.com/konflux-ci/build-definitions)
should not be duplicated here. Add a bundle pointer under `external-task/` instead.

See [external-task/README.md](../external-task/README.md).
