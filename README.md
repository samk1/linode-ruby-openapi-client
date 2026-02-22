# linode-ruby-openapi-client

An automated pipeline that generates a fully-featured Ruby API client for
[Linode (Akamai Cloud)](https://www.linode.com/) and packages it as a
distributable Ruby gem.

## What this project does

1. **Fetches** the official [Linode OpenAPI specification](https://github.com/linode/linode-api-docs) directly from source.
2. **Generates** a complete Ruby client library using [OpenAPI Generator](https://openapi-generator.tech/), including typed models, API classes, and RSpec test stubs.
3. **Packages** the result as a Ruby gem (`linode_openapi_client`) ready to be installed locally or published to [RubyGems](https://rubygems.org/).

Re-running the pipeline regenerates the entire client whenever the Linode API
is updated — no manual code changes required.

## Usage

Install dependencies, then run:

```bash
./generate-api-client
```

To target a specific OpenAPI spec version, pass the URL as an argument:

```bash
./generate-api-client https://raw.githubusercontent.com/linode/linode-api-docs/main/openapi.yaml
```

The generated gem lives in the `gem/` directory. See
[`gem/README.md`](gem/README.md) for installation and usage instructions.

## Dependencies

| Tool | Purpose |
|------|---------|
| [yq](https://github.com/mikefarah/yq) | Parses the API version from the OpenAPI spec |
| [openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator?tab=readme-ov-file#launcher-script) | Generates the Ruby client code |
| Java (JRE 8+) | Required by openapi-generator-cli |

## How it works

```
Linode OpenAPI spec (YAML)
        │
        ▼
openapi-generator-cli  ──►  gem/   (Ruby source + RSpec stubs)
        │
        ▼
  gem build  ──►  linode_openapi_client-<version>.gem
        │
        ▼
  gem push   ──►  RubyGems.org (or private registry)
```

The `generate-api-client` script pins the gem version to the upstream API
version number extracted from the spec, so gem versions stay in sync with the
API automatically.

## Generated gem

The `gem/` directory contains the auto-generated Ruby client.  Key highlights:

- Covers **every** Linode API endpoint (Linodes, Volumes, NodeBalancers, Object Storage, Kubernetes, Firewalls, VPCs, and more).
- Bearer token **and** OAuth2 authentication supported out of the box.
- Backed by [Typhoeus](https://github.com/typhoeus/typhoeus) for efficient, concurrent HTTP requests.
- Versioned in lockstep with the upstream Linode API (`gemVersion` = `info.version` from the spec).

