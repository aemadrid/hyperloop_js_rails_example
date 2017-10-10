# Hyperloop Example Rails 5 App

Example Rails 5 app with Hyperloop JS with Sprockets

## Objective

* have all client Hyperloop libraries loaded easily
  * single file ?
  * webpack ?
  * online ?
* build components/stores/operations/router locally
  * opal files
    * app/assets/javascripts/ ?
    * app/javascript/packs/ ?
* no long precompile penalty
  * `HYPERLOOP LIBRARIES PRECOMPILING AND MINIFYING`

## Experiment

This app is an experiment using `sprockets` to accomplish those goals:

1. uses Sprockets to generate all React/Hyperloop code
  * http://localhost:3085/hello_world/index

## Usage

To start puma and webpack run:

```shell
foreman start
```
