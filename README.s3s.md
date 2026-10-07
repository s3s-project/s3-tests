# s3s community build of ceph/s3-tests

This branch carries the build files for the s3s E2E image. `master` stays equal to
upstream; everything here is additive.

- `.s3tests-source-ref` — the exact upstream commit the image is built from.
- `patches/` — suite-side fixes applied on top of that commit. Each patch must apply
  cleanly or the build fails.
- `Dockerfile.s3s` — the build; also the marker the publish workflow gates on.
- `.github/workflows/publish-ghcr.yml` — tag-driven publish to
  `ghcr.io/s3s-project/s3-tests`. Only 12-digit UTC tags (`yyyymmddhhmm`) build.

Consumers pin the result by digest, for example:

    S3TESTS_IMAGE_REF=ghcr.io/s3s-project/s3-tests:202610072130@sha256:...

This is not an official ceph or s3s release. Upstream is MIT licensed; the LICENSE
file is kept as-is and the patches are listed above so every change is visible.
