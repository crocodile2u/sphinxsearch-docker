# Dockerfile for a pretty fresh version of sphinxsearch, based on apline linux

Tags/versions:

* 3.1.1: 3.1.1, latest

## VOLUMEs

* **Data folder**: /var/lib/sphinxsearch/data
* **Config file**: /etc/sphinx.conf

## Exposed ports

Port **9306** exposed for the `mysql` type connection.

## Usage

```docker run -v /my/data:/var/lib/sphinxsearch/data -v /my/sphinx.conf:/etc/sphinx.conf -p 9306:9306 crocodile2u/sphinxsearch```