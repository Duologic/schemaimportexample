schemas.libsonnet:
	@echo '[' > schemas.libsonnet
	@find schemas/ -name '*.json' -type f | xargs -I '{}' echo 'import "{}",' >> schemas.libsonnet
	@echo ']' >> schemas.libsonnet
	@jsonnetfmt -i schemas.libsonnet
