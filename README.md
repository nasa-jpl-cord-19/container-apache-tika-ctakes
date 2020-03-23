# apache-tika-ctakes

Containerized version of the process outlined [here](https://cwiki.apache.org/confluence/display/TIKA/CTAKESParser).

## Before building

Run `./download-dependencies.sh`.
Copy `ctakes-config/org/apache/tika/parser/ctakes/CTAKESConfig.properties.new` to `ctakes-config/org/apache/tika/parser/ctakes/CTAKESConfig.properties` and add your `UMLSUser`/`UMLSPass`.

## Build

Nothing special here.

```bash
docker build --rm --tag apache-tika-ctakes .
```

## Running locally

Attempt at mirroring the constraints enforced in "production".

```bash
docker run --rm -it -p 9998:9998 --user "35002:35002" --read-only=true --cap-drop=all apache-tika-ctakes
```
