# Pipelines

Java build and release Tekton Pipelines are composed here using kustomize.

## Pattern

Follow the approach used in
[build-definitions/pipelines](https://github.com/konflux-ci/build-definitions/tree/main/pipelines):

1. Start from a shared template (for example `template-build` in `build-definitions`)
2. Create `pipelines/<name>/kustomization.yaml` and `patch.yaml`
3. Run `./hack/build-manifests.sh` to generate `pipelines/<name>/<name>.yaml`
4. Register the pipeline in `pipelines/kustomization.yaml`

Pipelines author abstract task references:

```yaml
taskRef:
  name: git-clone
  version: "0.1"
```

At bundle publish time, `hack/build-and-push.sh` replaces these with `resolver: bundles`
references pointing at Quay.

## Publishing

Pipeline bundles are tagged with the git revision and pushed to
`quay.io/konflux-ci/tekton-catalog/pipeline-<name>`.
