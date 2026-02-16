# millerd.me

Personal website: https://millerd.me

## App
- Static site built with Astro
- Deployed to S3 with GitHub Actions
- Run locally: `cd app/millerd && npm install && npm run dev`

## Terraform
- Created using Cloudposse TF Provider
- Deployed with GitHub Actions
- Run locally from given subdirectory with `terraform plan|apply --var-file=millerd.tfvars`

## References
- Cloudposse CDN terraform module: https://github.com/cloudposse/terraform-aws-cloudfront-s3-cdn
- Static Site Generator: https://astro.build/
