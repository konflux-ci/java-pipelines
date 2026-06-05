# Contributing to java-pipelines

## Table of Contents

* [Project Overview](#project-overview)
* [How to Report Issues](#how-to-report-issues)
* [How to Submit Pull Requests](#how-to-submit-pull-requests)
  * [Development Workflow](#development-workflow)
  * [Pull Request Guidelines](#pull-request-guidelines)
  * [Security Best Practices](#security-best-practices)

* [Review Process](#review-process)

## Project Overview

This repository hosts Tekton Tasks and Pipelines for Java build and release workflows
in [Konflux](https://konflux-ci.dev). Follow the Konflux
[Code of Conduct](https://github.com/konflux-ci/community/blob/main/CODE_OF_CONDUCT.md).

Shared build tasks (for example `git-clone`, `prefetch-dependencies`) are consumed from
[build-definitions](https://github.com/konflux-ci/build-definitions) via `external-task/`
bundle references. Java-specific tasks and pipelines live in this repository.

Components are delivered to Konflux via the `konflux-ci/tekton-catalog` Quay organization
as OCI bundles.

## How to Report Issues

- We encourage early communication for all types of contributions.
- Before filing an issue, make sure it is not reported already.
- For non-trivial changes, open an issue to discuss your plans with maintainers.
- Please fill out the included issue templates with all applicable information.

## How to Submit Pull Requests

### Development Workflow

1. **Fork and Clone**: Fork this repository and clone your fork
2. **Create Feature Branch**: Create a new topic branch based on `main`
3. **Make Changes**: Implement your changes
4. **Generate Content**: Run generation scripts if needed
   ```bash
   ./hack/generate-everything.sh
   ```
5. **Commit Changes**: See [commit guidelines](#pull-request-guidelines)

### Pull Request Guidelines

**Commit Requirements:**
- Write clear, descriptive commit titles under 50 characters
- Write meaningful commit descriptions with each line under 72 characters
- Split contributions into logical commits when applicable
- Add `Assisted-by: <name-of-ai-tool>` if you used an AI tool
- Sign-off commits per the [Developer Certificate of Origin](https://developercertificate.org)

**Pull Request Content:**
- **Title**: Clear, descriptive title under 72 characters
- **Description**: Explain the overall changes and their purpose
- **Testing**: Describe how the changes were tested
- **Links**: Reference related issues or upstream stories

### Security Best Practices

- Never commit secrets or keys to the repository
- Never expose or log sensitive information

## Review Process

**Requirements for Approval:**
- All CI checks pass
- Code review approval from maintainers

**Review Criteria:**
- Changes follow established patterns from `build-definitions`
- Changes are tested and documented
- Breaking changes result in a new task version and include migration
- Security best practices are followed

For questions or help, open an issue or reach out to the maintainers.
