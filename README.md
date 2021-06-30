# release_mgmt_example
This repo is a demonstration of how to wire up automated release management using GitHub Actions.

## Tools

* [`semantic-release`](https://semantic-release.gitbook.io/) - Fully automated version management and package publishing
* [`deepakputhraya/action-pr-title`](https://github.com/deepakputhraya/action-pr-title) - Github action to enforce Pull Request title conventions


## Pipelines

[GitHub Actions][1] are used to run tests and drive automation.  Read
through the documentation for more usage information.

|Name|Description|
|--|--|
|Release|Runs the `semantic-release` process on merges to `main`|
|PR Name Check|Enforces PR title conventions on any PR activity.|

## `Makefile` usage
The `Makefile` has a helper target to prepare a new release branch.  

```
$ make help
create-release-branch          Create release branch on main
```


[1]: https://github.com/features/actions
