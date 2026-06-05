# External tasks

This directory holds pointers to Tekton Task bundles built and maintained in
[build-definitions](https://github.com/konflux-ci/build-definitions).

## Format

Each file references a bundle by digest:

```yaml
task_bundle: quay.io/konflux-ci/tekton-catalog/task-git-clone-oci-ta:0.1@sha256:...
```

During `hack/build-and-push.sh`, external tasks take precedence over same-named tasks
in `task/`.

## Common dependencies

Java pipelines typically depend on tasks such as:

- `git-clone` / `git-clone-oci-ta`
- `prefetch-dependencies` / `prefetch-dependencies-oci-ta`
- `init`
- `summary`

Add bundle pointers here rather than forking those tasks into this repository.
