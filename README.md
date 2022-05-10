# backend

## Deployment

Hosted as a service on Google Kubernetes Engine in GCP and is exposed [here](http://35.228.72.81/). 

The docker image is built and pushed to Google Artifact Registry and then deployed to GKE using [K8S manifests](https://github.com/kjelljoakim/kindly-case-backend/tree/main/manifests) in Github Actions (see [workflows](https://github.com/kjelljoakim/kindly-case-backend/tree/main/.github/workflows)).

## Improvements

- Database: Should use a proper production worthy database. The current setup has a "cloud-sql-proxy" pod deployed as a sidecar which enables (verified) connection to a Postgres Cloud SQL instance running in GCP but requires some modification to the SQL statements in the code to work. Currently the app crashes when querying Postgres due to the use DATETIME() function which is not supported by Postgres.\
\
`db-dump.sh` can be used to generate the SQL script to migrate the SQLite db

- Infra-as-code: The resources needed in GCP, even for such a small setup, quickly becomes unmanageable (IAM policies and service accounts are especially painful) so it would definitely benefit from being configured by a tool such as Terraform

- Tests: Should add test cases and add pipeline stage to run these

- Pod resources: Do load tests to estimate CPU and memory resources to request in the K8s manifest files

- Re-usability: If this was to be used by other programmers/teams I would probably make a reusable and configuerable Github Action that can be used in other actions. For example, it could allow developers to specify if they require database access and this action could hide the tedious setup of the "cloud-sql-proxy" pod
