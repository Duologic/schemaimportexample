schemas.libsonnet:
	@echo '[' > schemas.libsonnet
	@find schemas/ -type f | xargs -I '{}' echo 'import "{}",' >> schemas.libsonnet
	@echo ']' >> schemas.libsonnet
	@jsonnetfmt -i schemas.libsonnet
