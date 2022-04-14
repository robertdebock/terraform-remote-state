# Remote state

This repository explores what terraform_remote_state exposes.

## `bucket`

This code will create the bucket to save the state.

## `project_one`

This directory will save state on GCP.

## `project_two`

This project will read the remote state of `project_one`.

## Usage

1. `cd bucket ; terraform apply`. Save the name of the created bucket.
2. `cd ../project_one`. Place the bucket name in `terraform.tf`.
3. `terraform init ; terraform apply`.
4. `cd ../project_two`. Place the bucket name in `main.tf`.
5. `terraform init ; terraform apply`.

## Conclusions

- You can read another state.
- You need read-acces to the state. (DANGER)
- Only values that are `output`-ed can be used. (SAFE)
- Sensitive values are not sensitive anymore after reading them. (DANGER)
