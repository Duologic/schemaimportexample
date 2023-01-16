local parser = import 'crdsonnet/parser.libsonnet';
local db = import 'db.jsonnet';

local dashboardSchema = db['http://grafana.com/schemas/grafana/x/dashboard.json'];

local parsed = parser.parseSchema('dashboard', dashboardSchema, dashboardSchema, db);

parsed.dashboard.properties.panels.items.oneOf
