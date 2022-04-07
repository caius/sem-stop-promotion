#!/usr/bin/env bash

set -o xtrace
set -o errexit
set -o nounset
set -o pipefail
set -o noclobber

promote_smartly="true"

if [[ "${promote_smartly}" = "true" ]]; then
  curl --fail -H @/tmp/sem-api-header-caius --data "name=Deploy+deploy+deploy&pipeline_id=${SEMAPHORE_PIPELINE_ID}" "${SEMAPHORE_ORGANIZATION_URL}/api/v1/promotions"
else
  echo "Not promoting deploy"
fi
