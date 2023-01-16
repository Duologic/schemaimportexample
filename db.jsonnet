local schemadb = import 'crdsonnet/schemadb.libsonnet';
local schemas = import 'schemas.libsonnet';

std.foldl(
  function(acc, schema)
    acc + schemadb.add(schema),
  schemas,
  {}
)
