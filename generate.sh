# instructions from https://docs.powerbot-trading.com/docs/getting-started/general-information/
# spec from https://staging.powerbot-trading.com/playground/epex/v2/admin/doc#overview--introduction

docker run --rm -v "${PWD}:/local" docker.io/openapitools/openapi-generator-cli:latest generate -i /local/openapi-spec.yaml -g python --additional-properties=packageName=powerbot_client -o /local/gen_out
