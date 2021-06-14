<qgis maxScale="0" simplifyAlgorithm="0" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="1" simplifyDrawingHints="0" styleCategories="AllStyleCategories" simplifyDrawingTol="1" simplifyMaxScale="1" minScale="100000000" version="3.18.3-Zürich" readOnly="0">
<flags>
<Identifiable>1</Identifiable>
<Removable>1</Removable>
<Searchable>1</Searchable>
<Private>0</Private>
</flags>
<temporal mode="0" startExpression="" endExpression="" accumulate="0" startField="" durationUnit="min" fixedDuration="0" enabled="0" durationField="" endField="">
<fixedRange>
<start></start>
<end></end>
</fixedRange>
</temporal>
<renderer-v2 symbollevels="0" type="RuleRenderer" forceraster="0" enableorderby="0">
<rules key="{af709a54-88ca-4a27-bba5-e0a7ac6ce840}">
<rule filter=" &quot;visivel&quot; is true" label="Visível" key="{4bdda895-97c4-4ad7-919c-b2b6ccf321c8}">
<rule filter=" (&quot;tipo&quot; = 0 or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (24, 11, 8, 3, 1, 9, 2, 15, 23, 25, 21, 7)) and &quot;tipo&quot; not in (2429)" symbol="0" label="P20403A" description="Edificação operacional" key="{1d0aafdd-64b6-4744-852d-94b2496d4aa9}"/>
<rule filter="(&quot;tipo&quot; in (2429) or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (12, 10, 13, 17, 30, 19, 22, 4)) and &quot;tipo&quot; not in (1218)" symbol="1" label="P20418A" key="{2c13ba21-feb1-44c7-94dd-c3a568665480}"/>
<rule filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 = 5" symbol="2" label="P20415A" key="{d05c1075-ce2e-4596-8ffb-9c464ea12b2b}"/>
<rule filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 = 20" symbol="3" label="P20427A" key="{2206c7ec-9232-4947-809d-577712a147c2}"/>
<rule filter="&quot;tipo&quot; = 2601" symbol="4" label="P20430A" key="{7ccb2fca-e544-4540-81d0-bc49b7d09326}"/>
<rule filter=" (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (29)" symbol="5" label="P20435A" key="{63b54aab-2b56-45eb-bc0e-4118677465ac}"/>
<rule filter="&quot;tipo&quot; = 2804" symbol="6" label="P11206A" key="{1e337d26-a0c4-4728-820d-028c924da0cd}"/>
<rule filter="&quot;tipo&quot; = 1401" symbol="7" label="P20429A" key="{600f7ed1-4510-4ec4-a0f9-51b523c4847e}"/>
<rule filter="&quot;tipo&quot; = 601" symbol="8" label="P20423A" key="{e982ad82-d248-40a1-8101-55180c2e7976}"/>
<rule filter="&quot;tipo&quot; = 1218" symbol="9" label="P20405D" key="{ee175899-d73f-4256-9cba-8e9802db23c2}"/>
<rule filter=" &quot;tipo&quot; in (1,2)" symbol="10" label="P20403B" description="Edificação não operacional" key="{593e8ac9-227a-476b-ade0-e3fdce7c6973}"/>
<rule filter="ELSE" symbol="11" key="{f1a08c62-a732-4ad8-92da-b287df07f287}"/>
</rule>
</rules>
<symbols>
<symbol alpha="1" name="0" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="0,0,0,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="square" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_style" value="no" type="QString"/>
<Option name="outline_width" value="0" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="0.5" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="0,0,0,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="square"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_style" v="no"/>
<prop k="outline_width" v="0"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="0.5"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="1" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="0,0,0,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="square" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_style" value="no" type="QString"/>
<Option name="outline_width" value="0" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="0.8" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="0,0,0,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="square"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_style" v="no"/>
<prop k="outline_width" v="0"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="0.8"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="10" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="224,224,224,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="quarter_square" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_style" value="solid" type="QString"/>
<Option name="outline_width" value="0.1" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="0.6" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="224,224,224,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="quarter_square"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_style" v="solid"/>
<prop k="outline_width" v="0.1"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="0.6"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
<Option name="outlineWidth" type="Map">
<Option name="active" value="false" type="bool"/>
<Option name="expression" value="" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="11" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="219,30,42,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="diamond" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="128,17,25,255" type="QString"/>
<Option name="outline_style" value="solid" type="QString"/>
<Option name="outline_width" value="0.4" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="4.4" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="219,30,42,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="diamond"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="128,17,25,255"/>
<prop k="outline_style" v="solid"/>
<prop k="outline_width" v="0.4"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="4.4"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="2" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNDk4ODE5bW0iCiAgIGhlaWdodD0iMS43bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA0OTg4MTkgMS43IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0OTQwIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDE1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0OTM0IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxLjk3OTg5OSIKICAgICBpbmtzY2FwZTpjeD0iLTEwNC4wODU4OSIKICAgICBpbmtzY2FwZTpjeT0iMTMyLjY5NjUyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDEzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDkzNyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2NC40NzkzLC0zMi41MTI4NTkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjczLjc2NDQyLDkuMjMzNjg5MikiCiAgICAgICBpZD0iZzI1OTgiPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC40NzkxNyIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgd2lkdGg9IjAuNSIKICAgICAgICAgaWQ9InJlY3QxOTYxNiIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTg1IgogICAgICAgICBkPSJtIDEwOS41MzUxMiwyMy4yNzkxNyB2IDEuNyIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTkzIgogICAgICAgICBkPSJtIDEwOS42MzUsMjMuMjc5MTcgMC43LDAuMjQ2NiAtMC43LDAuMjUzNCB2IC0wLjUiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMDk5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" type="QString"/>
<Option name="offset" value="0.2549995142311231,-0.59999885701440725" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="1.04988" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNDk4ODE5bW0iCiAgIGhlaWdodD0iMS43bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA0OTg4MTkgMS43IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0OTQwIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDE1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0OTM0IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxLjk3OTg5OSIKICAgICBpbmtzY2FwZTpjeD0iLTEwNC4wODU4OSIKICAgICBpbmtzY2FwZTpjeT0iMTMyLjY5NjUyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDEzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDkzNyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2NC40NzkzLC0zMi41MTI4NTkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjczLjc2NDQyLDkuMjMzNjg5MikiCiAgICAgICBpZD0iZzI1OTgiPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC40NzkxNyIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgd2lkdGg9IjAuNSIKICAgICAgICAgaWQ9InJlY3QxOTYxNiIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTg1IgogICAgICAgICBkPSJtIDEwOS41MzUxMiwyMy4yNzkxNyB2IDEuNyIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTkzIgogICAgICAgICBkPSJtIDEwOS42MzUsMjMuMjc5MTcgMC43LDAuMjQ2NiAtMC43LDAuMjUzNCB2IC0wLjUiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMDk5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
<prop k="offset" v="0.2549995142311231,-0.59999885701440725"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="1.04988"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="3" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS43NW1tIgogICBoZWlnaHQ9IjEuNzVtbSIKICAgdmlld0JveD0iMCAwIDEuNzQ5OTk5OSAxLjc1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0MDQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDI3QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0MDM3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIwLjciCiAgICAgaW5rc2NhcGU6Y3g9Ii0xOC41NDI1OCIKICAgICBpbmtzY2FwZTpjeT0iNzQuOTM0MTgxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04Ny44Mzg2MTksLTE3OC4wNDgxNSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTMsLTQ2LjcwMTg1KSIKICAgICAgIGlkPSJnNzk4NCI+CiAgICAgIDxjaXJjbGUKICAgICAgICAgcj0iMC44NzUiCiAgICAgICAgIGN5PSIyMjUuNjI1IgogICAgICAgICBjeD0iMTA5LjUwMzM3IgogICAgICAgICBpZD0icGF0aDc5NjQiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPGcKICAgICAgICAgc3R5bGU9InN0cm9rZTojZmZmZmZmO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDIuNzM2NjcyMiwwLjgzMDE2KSIKICAgICAgICAgaWQ9Imc3OTcwIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgaWQ9InBhdGg3OTUwIgogICAgICAgICAgIGQ9Im0gMTA2Ljc2NjcsMjI0LjE2OTg0IHYgMS4yNSIKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgICAgPHBhdGgKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMDYuMTQxNywyMjQuNzk0ODQgaCAxLjI1IgogICAgICAgICAgIGlkPSJwYXRoNzk1MiIKICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8L2c+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="1.75" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS43NW1tIgogICBoZWlnaHQ9IjEuNzVtbSIKICAgdmlld0JveD0iMCAwIDEuNzQ5OTk5OSAxLjc1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0MDQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDI3QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0MDM3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIwLjciCiAgICAgaW5rc2NhcGU6Y3g9Ii0xOC41NDI1OCIKICAgICBpbmtzY2FwZTpjeT0iNzQuOTM0MTgxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04Ny44Mzg2MTksLTE3OC4wNDgxNSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTMsLTQ2LjcwMTg1KSIKICAgICAgIGlkPSJnNzk4NCI+CiAgICAgIDxjaXJjbGUKICAgICAgICAgcj0iMC44NzUiCiAgICAgICAgIGN5PSIyMjUuNjI1IgogICAgICAgICBjeD0iMTA5LjUwMzM3IgogICAgICAgICBpZD0icGF0aDc5NjQiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPGcKICAgICAgICAgc3R5bGU9InN0cm9rZTojZmZmZmZmO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDIuNzM2NjcyMiwwLjgzMDE2KSIKICAgICAgICAgaWQ9Imc3OTcwIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgaWQ9InBhdGg3OTUwIgogICAgICAgICAgIGQ9Im0gMTA2Ljc2NjcsMjI0LjE2OTg0IHYgMS4yNSIKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgICAgPHBhdGgKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMDYuMTQxNywyMjQuNzk0ODQgaCAxLjI1IgogICAgICAgICAgIGlkPSJwYXRoNzk1MiIKICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8L2c+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="1.75"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="false" type="bool"/>
<Option name="type" value="1" type="int"/>
<Option name="val" value="" type="QString"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="4" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4xbW0iCiAgIGhlaWdodD0iMi4xMDAwMDhtbSIKICAgdmlld0JveD0iMCAwIDEuMSAyLjEwMDAwOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTM3OCIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQzMEEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTM3MiIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iNS42IgogICAgIGlua3NjYXBlOmN4PSIyNC4yNjcwMjQiCiAgICAgaW5rc2NhcGU6Y3k9IjIxLjgyODQ5MyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjEwOTAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iODAzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSI4MzAiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE0MiIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIwIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEzNzUiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0Ny4xMDI3MjYsLTEzNC4xODU4NykiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xNTYuNTUyNzIsLTE0LjEyMDQ3NykiCiAgICAgICBpZD0iZzk2ODciPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTEwLDE0OS4wNDAxMSB2IDAuOTY5NSIKICAgICAgICAgaWQ9InBhdGg3NzgzIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjk0NzMxODIzLDAsMCwtMC44NzI4NDg4NSw2LjcwNTU2MjgsMjc2LjM3Njk5KSIKICAgICAgICAgaW5rc2NhcGU6dHJhbnNmb3JtLWNlbnRlci15PSIwLjExMDI5NDc2IgogICAgICAgICBpbmtzY2FwZTp0cmFuc2Zvcm0tY2VudGVyLXg9IjIuODA5OTA4ZS0wNiIKICAgICAgICAgZD0ibSAxMDkuNDc2NTIsMTQ2LjY0NDY5IC0wLjg3NTQ2LDAgMC40Mzc3MywtMC43NTgxNyB6IgogICAgICAgICBpbmtzY2FwZTpyYW5kb21pemVkPSIwIgogICAgICAgICBpbmtzY2FwZTpyb3VuZGVkPSIwIgogICAgICAgICBpbmtzY2FwZTpmbGF0c2lkZWQ9InRydWUiCiAgICAgICAgIHNvZGlwb2RpOmFyZzI9IjEuNTcwNzk2MyIKICAgICAgICAgc29kaXBvZGk6YXJnMT0iMC41MjM1OTg3OCIKICAgICAgICAgc29kaXBvZGk6cjI9IjAuMjUyNzIyNTkiCiAgICAgICAgIHNvZGlwb2RpOnIxPSIwLjUwNTQ0NTE4IgogICAgICAgICBzb2RpcG9kaTpjeT0iMTQ2LjM5MTk3IgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjAzODc5IgogICAgICAgICBzb2RpcG9kaTpzaWRlcz0iMyIKICAgICAgICAgaWQ9InBhdGg3ODIxIgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNjQ5NTgxNTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJzdGFyIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIxNDkuOTA2MzYiCiAgICAgICAgIHg9IjEwOS43NDg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjUiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGlkPSJyZWN0NzgyOSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTQ5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOnN0cm9rZSBmaWxsIG1hcmtlcnMiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" type="QString"/>
<Option name="offset" value="0,-0.80000290910148775" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="1.1" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4xbW0iCiAgIGhlaWdodD0iMi4xMDAwMDhtbSIKICAgdmlld0JveD0iMCAwIDEuMSAyLjEwMDAwOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTM3OCIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQzMEEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTM3MiIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iNS42IgogICAgIGlua3NjYXBlOmN4PSIyNC4yNjcwMjQiCiAgICAgaW5rc2NhcGU6Y3k9IjIxLjgyODQ5MyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjEwOTAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iODAzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSI4MzAiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE0MiIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIwIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEzNzUiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0Ny4xMDI3MjYsLTEzNC4xODU4NykiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xNTYuNTUyNzIsLTE0LjEyMDQ3NykiCiAgICAgICBpZD0iZzk2ODciPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTEwLDE0OS4wNDAxMSB2IDAuOTY5NSIKICAgICAgICAgaWQ9InBhdGg3NzgzIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjk0NzMxODIzLDAsMCwtMC44NzI4NDg4NSw2LjcwNTU2MjgsMjc2LjM3Njk5KSIKICAgICAgICAgaW5rc2NhcGU6dHJhbnNmb3JtLWNlbnRlci15PSIwLjExMDI5NDc2IgogICAgICAgICBpbmtzY2FwZTp0cmFuc2Zvcm0tY2VudGVyLXg9IjIuODA5OTA4ZS0wNiIKICAgICAgICAgZD0ibSAxMDkuNDc2NTIsMTQ2LjY0NDY5IC0wLjg3NTQ2LDAgMC40Mzc3MywtMC43NTgxNyB6IgogICAgICAgICBpbmtzY2FwZTpyYW5kb21pemVkPSIwIgogICAgICAgICBpbmtzY2FwZTpyb3VuZGVkPSIwIgogICAgICAgICBpbmtzY2FwZTpmbGF0c2lkZWQ9InRydWUiCiAgICAgICAgIHNvZGlwb2RpOmFyZzI9IjEuNTcwNzk2MyIKICAgICAgICAgc29kaXBvZGk6YXJnMT0iMC41MjM1OTg3OCIKICAgICAgICAgc29kaXBvZGk6cjI9IjAuMjUyNzIyNTkiCiAgICAgICAgIHNvZGlwb2RpOnIxPSIwLjUwNTQ0NTE4IgogICAgICAgICBzb2RpcG9kaTpjeT0iMTQ2LjM5MTk3IgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjAzODc5IgogICAgICAgICBzb2RpcG9kaTpzaWRlcz0iMyIKICAgICAgICAgaWQ9InBhdGg3ODIxIgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNjQ5NTgxNTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJzdGFyIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIxNDkuOTA2MzYiCiAgICAgICAgIHg9IjEwOS43NDg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjUiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGlkPSJyZWN0NzgyOSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTQ5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOnN0cm9rZSBmaWxsIG1hcmtlcnMiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
<prop k="offset" v="0,-0.80000290910148775"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="1.1"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="5" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNzUwMDA0bW0iCiAgIGhlaWdodD0iMi4wMDAwMDMxbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA3NTAwMDQgMi4wMDAwMDMxIgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMzc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDM1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMzcyIj4KICAgIDxtYXJrZXIKICAgICAgIGlua3NjYXBlOmlzc3RvY2s9InRydWUiCiAgICAgICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIKICAgICAgIGlkPSJtYXJrZXI5MjM3IgogICAgICAgcmVmWD0iMCIKICAgICAgIHJlZlk9IjAiCiAgICAgICBvcmllbnQ9ImF1dG8iCiAgICAgICBpbmtzY2FwZTpzdG9ja2lkPSJBcnJvdzJNc3RhcnQiPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MjM1IiAvPgogICAgPC9tYXJrZXI+CiAgICA8bWFya2VyCiAgICAgICBpbmtzY2FwZTppc3N0b2NrPSJ0cnVlIgogICAgICAgc3R5bGU9Im92ZXJmbG93OnZpc2libGUiCiAgICAgICBpZD0ibWFya2VyOTE0OSIKICAgICAgIHJlZlg9IjAiCiAgICAgICByZWZZPSIwIgogICAgICAgb3JpZW50PSJhdXRvIgogICAgICAgaW5rc2NhcGU6c3RvY2tpZD0iQXJyb3cyTWVuZCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHRyYW5zZm9ybT0ic2NhbGUoLTAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MTQ3IiAvPgogICAgPC9tYXJrZXI+CiAgPC9kZWZzPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyLjgiCiAgICAgaW5rc2NhcGU6Y3g9IjgxLjE3NDY2OSIKICAgICBpbmtzY2FwZTpjeT0iMTYuNjYzMTczIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA5MCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI4MDMiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjgzMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMTQyIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTM3NSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEwNC45OTMzMSwtMTI4LjgwNzE3KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIxNC43NDE5NCwtNzEuMTkyODI5KSIKICAgICAgIGlkPSJnOTczMyI+CiAgICAgIDxyZWN0CiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpzdHJva2UgZmlsbCBtYXJrZXJzIgogICAgICAgICBpZD0icmVjdDk1OTEiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGhlaWdodD0iMC41IgogICAgICAgICB4PSIxMDkuNzQ4NjMiCiAgICAgICAgIHk9IjIwMS41IiAvPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpZD0icGF0aDk1ODciCiAgICAgICAgIGQ9Ik0gMTA5Ljk5ODYzLDIwMC41IFYgMjAyIgogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxyZWN0CiAgICAgICAgIHk9IjIwMC4wNzUiCiAgICAgICAgIHg9IjEwOS45OTg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjU0OTk5OTg5IgogICAgICAgICB3aWR0aD0iMC43NTAwMDA0MiIKICAgICAgICAgaWQ9InJlY3Q5Njc2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwODtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" type="QString"/>
<Option name="offset" value="0.25,-0.69999999999999996" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="1.075" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNzUwMDA0bW0iCiAgIGhlaWdodD0iMi4wMDAwMDMxbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA3NTAwMDQgMi4wMDAwMDMxIgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMzc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDM1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMzcyIj4KICAgIDxtYXJrZXIKICAgICAgIGlua3NjYXBlOmlzc3RvY2s9InRydWUiCiAgICAgICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIKICAgICAgIGlkPSJtYXJrZXI5MjM3IgogICAgICAgcmVmWD0iMCIKICAgICAgIHJlZlk9IjAiCiAgICAgICBvcmllbnQ9ImF1dG8iCiAgICAgICBpbmtzY2FwZTpzdG9ja2lkPSJBcnJvdzJNc3RhcnQiPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MjM1IiAvPgogICAgPC9tYXJrZXI+CiAgICA8bWFya2VyCiAgICAgICBpbmtzY2FwZTppc3N0b2NrPSJ0cnVlIgogICAgICAgc3R5bGU9Im92ZXJmbG93OnZpc2libGUiCiAgICAgICBpZD0ibWFya2VyOTE0OSIKICAgICAgIHJlZlg9IjAiCiAgICAgICByZWZZPSIwIgogICAgICAgb3JpZW50PSJhdXRvIgogICAgICAgaW5rc2NhcGU6c3RvY2tpZD0iQXJyb3cyTWVuZCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHRyYW5zZm9ybT0ic2NhbGUoLTAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MTQ3IiAvPgogICAgPC9tYXJrZXI+CiAgPC9kZWZzPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyLjgiCiAgICAgaW5rc2NhcGU6Y3g9IjgxLjE3NDY2OSIKICAgICBpbmtzY2FwZTpjeT0iMTYuNjYzMTczIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA5MCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI4MDMiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjgzMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMTQyIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTM3NSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEwNC45OTMzMSwtMTI4LjgwNzE3KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIxNC43NDE5NCwtNzEuMTkyODI5KSIKICAgICAgIGlkPSJnOTczMyI+CiAgICAgIDxyZWN0CiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpzdHJva2UgZmlsbCBtYXJrZXJzIgogICAgICAgICBpZD0icmVjdDk1OTEiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGhlaWdodD0iMC41IgogICAgICAgICB4PSIxMDkuNzQ4NjMiCiAgICAgICAgIHk9IjIwMS41IiAvPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpZD0icGF0aDk1ODciCiAgICAgICAgIGQ9Ik0gMTA5Ljk5ODYzLDIwMC41IFYgMjAyIgogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxyZWN0CiAgICAgICAgIHk9IjIwMC4wNzUiCiAgICAgICAgIHg9IjEwOS45OTg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjU0OTk5OTg5IgogICAgICAgICB3aWR0aD0iMC43NTAwMDA0MiIKICAgICAgICAgaWQ9InJlY3Q5Njc2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwODtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
<prop k="offset" v="0.25,-0.69999999999999996"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="1.075"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="6" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMi42Mzk5MjA1bW0iCiAgIGhlaWdodD0iMy4wOTk5MDQ1bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjYzOTkyMDUgMy4wOTk5MDQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDExMjA2QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI1LjYiCiAgICAgaW5rc2NhcGU6Y3g9Ii0zNS44NTg3OTEiCiAgICAgaW5rc2NhcGU6Y3k9IjM5Ljk1NjQzMyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxMyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4zNTkzNCwtMTIwLjYzNjIyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEzMC45OTQwNyw5Ni40ODYxMTkpIgogICAgICAgaWQ9ImcyNzI2Ij4KICAgICAgPHBhdGgKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMTAzIgogICAgICAgICBkPSJtIDEwOS4zMjk3MywyNyAtMC4xLC0yLjQgaCAtMC41NSBsIC0wLjEsMi40IHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTAwMDAwMDI7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMDk1IgogICAgICAgICBkPSJtIDEwOC40NTQ3MywyNi45NSBoIDEiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuMjUiCiAgICAgICAgIGN5PSIyNi45NTAwMDEiCiAgICAgICAgIGN4PSIxMDguOTU0NzIiCiAgICAgICAgIGlkPSJwYXRoMzA5MyIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMzIxIgogICAgICAgICBkPSJtIDEwOS40NTc3MywyNC42NjUwNDggMC43Nzk0MiwtMC40NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC43MDAwMDEiCiAgICAgICAgIHg9IjEwOC43Nzk3MyIKICAgICAgICAgaGVpZ2h0PSIwLjI1IgogICAgICAgICB3aWR0aD0iMC4zNDk5OTk5OSIKICAgICAgICAgaWQ9InJlY3QxMzI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6ZmlsbCBtYXJrZXJzIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS40NTcyMywyNS4wMTUwNDggMC43Nzk0MiwwLjQ1IgogICAgICAgICBpZD0icGF0aDEzMjciCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMDguNDUxNjQsMjQuNjY1MDQ4IC0wLjc3OTQxLC0wLjQ1IgogICAgICAgICBpZD0icGF0aDEzMzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTMzMyIKICAgICAgICAgZD0ibSAxMDguNDUyMTQsMjUuMDE1MDQ4IC0wLjc3OTQxLDAuNDUiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" type="QString"/>
<Option name="offset" value="0,-1.25" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="2.63992" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMi42Mzk5MjA1bW0iCiAgIGhlaWdodD0iMy4wOTk5MDQ1bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjYzOTkyMDUgMy4wOTk5MDQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDExMjA2QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI1LjYiCiAgICAgaW5rc2NhcGU6Y3g9Ii0zNS44NTg3OTEiCiAgICAgaW5rc2NhcGU6Y3k9IjM5Ljk1NjQzMyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxMyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4zNTkzNCwtMTIwLjYzNjIyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEzMC45OTQwNyw5Ni40ODYxMTkpIgogICAgICAgaWQ9ImcyNzI2Ij4KICAgICAgPHBhdGgKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMTAzIgogICAgICAgICBkPSJtIDEwOS4zMjk3MywyNyAtMC4xLC0yLjQgaCAtMC41NSBsIC0wLjEsMi40IHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTAwMDAwMDI7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMDk1IgogICAgICAgICBkPSJtIDEwOC40NTQ3MywyNi45NSBoIDEiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuMjUiCiAgICAgICAgIGN5PSIyNi45NTAwMDEiCiAgICAgICAgIGN4PSIxMDguOTU0NzIiCiAgICAgICAgIGlkPSJwYXRoMzA5MyIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMzIxIgogICAgICAgICBkPSJtIDEwOS40NTc3MywyNC42NjUwNDggMC43Nzk0MiwtMC40NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC43MDAwMDEiCiAgICAgICAgIHg9IjEwOC43Nzk3MyIKICAgICAgICAgaGVpZ2h0PSIwLjI1IgogICAgICAgICB3aWR0aD0iMC4zNDk5OTk5OSIKICAgICAgICAgaWQ9InJlY3QxMzI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6ZmlsbCBtYXJrZXJzIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS40NTcyMywyNS4wMTUwNDggMC43Nzk0MiwwLjQ1IgogICAgICAgICBpZD0icGF0aDEzMjciCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMDguNDUxNjQsMjQuNjY1MDQ4IC0wLjc3OTQxLC0wLjQ1IgogICAgICAgICBpZD0icGF0aDEzMzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTMzMyIKICAgICAgICAgZD0ibSAxMDguNDUyMTQsMjUuMDE1MDQ4IC0wLjc3OTQxLDAuNDUiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
<prop k="offset" v="0,-1.25"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="2.63992"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="7" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4ybW0iCiAgIGhlaWdodD0iMC44MDAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMS4yIDAuOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDA0MyIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQyOUEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzNDAzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMC45ODk5NDk0OSIKICAgICBpbmtzY2FwZTpjeD0iMTUyLjI5NTc4IgogICAgIGlua3NjYXBlOmN5PSI5Ny4yMDY2MjkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxMDU5IgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9Ijc3NSIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iODYxIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIyMTYiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg3LjgzODYxOCwtMTc4LjIxMDcyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1MywtOTYuNzAxODA2KSIKICAgICAgIGlkPSJnMTM0MjIiPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIgogICAgICAgICBkPSJtIDEwOS44MjgzNywtMjc1LjcxMjUyIGEgMC42MDAwMDAwMiwwLjc5OTk5OTk1IDAgMCAxIC0wLjMsMC42OTI4MiAwLjYwMDAwMDAyLDAuNzk5OTk5OTUgMCAwIDEgLTAuNiwwIDAuNjAwMDAwMDIsMC43OTk5OTk5NSAwIDAgMSAtMC4zLC0wLjY5MjgyIGwgMC42LDAgeiIKICAgICAgICAgc29kaXBvZGk6ZW5kPSIzLjE0MTU5MjciCiAgICAgICAgIHNvZGlwb2RpOnN0YXJ0PSIwIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC43OTk5OTk5NSIKICAgICAgICAgc29kaXBvZGk6cng9IjAuNjAwMDAwMDIiCiAgICAgICAgIHNvZGlwb2RpOmN5PSItMjc1LjcxMjUyIgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjIyODM3IgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJhcmMiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9ImNpcmNsZTEzNDAyIiAvPgogICAgICA8cGF0aAogICAgICAgICBpZD0icGF0aDEzNDE2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9ImFyYyIKICAgICAgICAgc29kaXBvZGk6Y3g9IjEwOS4yMjgzNyIKICAgICAgICAgc29kaXBvZGk6Y3k9Ii0yNzUuNzEyNTIiCiAgICAgICAgIHNvZGlwb2RpOnJ4PSIwLjMwMDAwMDAxIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC41OTk5OTk5NiIKICAgICAgICAgc29kaXBvZGk6c3RhcnQ9IjAiCiAgICAgICAgIHNvZGlwb2RpOmVuZD0iMy4xNDE1OTI3IgogICAgICAgICBkPSJtIDEwOS41MjgzNywtMjc1LjcxMjUyIGEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjE1LDAuNTE5NjEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjMsMCAwLjMwMDAwMDAxLDAuNTk5OTk5OTYgMCAwIDEgLTAuMTUsLTAuNTE5NjEgbCAwLjMsMCB6IgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="1.2" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4ybW0iCiAgIGhlaWdodD0iMC44MDAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMS4yIDAuOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDA0MyIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQyOUEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzNDAzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMC45ODk5NDk0OSIKICAgICBpbmtzY2FwZTpjeD0iMTUyLjI5NTc4IgogICAgIGlua3NjYXBlOmN5PSI5Ny4yMDY2MjkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxMDU5IgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9Ijc3NSIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iODYxIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIyMTYiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg3LjgzODYxOCwtMTc4LjIxMDcyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1MywtOTYuNzAxODA2KSIKICAgICAgIGlkPSJnMTM0MjIiPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIgogICAgICAgICBkPSJtIDEwOS44MjgzNywtMjc1LjcxMjUyIGEgMC42MDAwMDAwMiwwLjc5OTk5OTk1IDAgMCAxIC0wLjMsMC42OTI4MiAwLjYwMDAwMDAyLDAuNzk5OTk5OTUgMCAwIDEgLTAuNiwwIDAuNjAwMDAwMDIsMC43OTk5OTk5NSAwIDAgMSAtMC4zLC0wLjY5MjgyIGwgMC42LDAgeiIKICAgICAgICAgc29kaXBvZGk6ZW5kPSIzLjE0MTU5MjciCiAgICAgICAgIHNvZGlwb2RpOnN0YXJ0PSIwIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC43OTk5OTk5NSIKICAgICAgICAgc29kaXBvZGk6cng9IjAuNjAwMDAwMDIiCiAgICAgICAgIHNvZGlwb2RpOmN5PSItMjc1LjcxMjUyIgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjIyODM3IgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJhcmMiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9ImNpcmNsZTEzNDAyIiAvPgogICAgICA8cGF0aAogICAgICAgICBpZD0icGF0aDEzNDE2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9ImFyYyIKICAgICAgICAgc29kaXBvZGk6Y3g9IjEwOS4yMjgzNyIKICAgICAgICAgc29kaXBvZGk6Y3k9Ii0yNzUuNzEyNTIiCiAgICAgICAgIHNvZGlwb2RpOnJ4PSIwLjMwMDAwMDAxIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC41OTk5OTk5NiIKICAgICAgICAgc29kaXBvZGk6c3RhcnQ9IjAiCiAgICAgICAgIHNvZGlwb2RpOmVuZD0iMy4xNDE1OTI3IgogICAgICAgICBkPSJtIDEwOS41MjgzNywtMjc1LjcxMjUyIGEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjE1LDAuNTE5NjEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjMsMCAwLjMwMDAwMDAxLDAuNTk5OTk5OTYgMCAwIDEgLTAuMTUsLTAuNTE5NjEgbCAwLjMsMCB6IgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="1.2"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="8" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SvgMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="35,35,35,255" type="QString"/>
<Option name="fixedAspectRatio" value="0" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMC44MDAwMDAwMW1tIgogICBoZWlnaHQ9IjEuNjAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMC43OTk5OTk5OSAxLjYwMDAwMDEiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzQwNDMiCiAgIGlua3NjYXBlOnZlcnNpb249IjAuOTIuMiA1YzNlODBkLCAyMDE3LTA4LTA2IgogICBzb2RpcG9kaTpkb2NuYW1lPSJQMjA0MjNBLnN2ZyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjEuNCIKICAgICBpbmtzY2FwZTpjeD0iNTQuNzcxNzU5IgogICAgIGlua3NjYXBlOmN5PSItNjUuNjAzMTAxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04OC4zNDUzNjYsLTE3Ny41ODY5OCkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTQsNTMuMjcwMTEpIgogICAgICAgaWQ9ImczMjg5Ij4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InJlY3QzMjIzIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICB5PSIxMjUuNDE2ODciIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS41MzUxMiwxMjQuMzE2ODcgdiAxLjYiCiAgICAgICAgIGlkPSJwYXRoMzIyNSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMjc2IgogICAgICAgICBkPSJtIDEwOS4xMzUxMiwxMjQuNjY1MyBoIDAuOCIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" type="QString"/>
<Option name="offset" value="0,-0.5" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_width" value="0.2" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="parameters"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="0.8" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="35,35,35,255"/>
<prop k="fixedAspectRatio" v="0"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMC44MDAwMDAwMW1tIgogICBoZWlnaHQ9IjEuNjAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMC43OTk5OTk5OSAxLjYwMDAwMDEiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzQwNDMiCiAgIGlua3NjYXBlOnZlcnNpb249IjAuOTIuMiA1YzNlODBkLCAyMDE3LTA4LTA2IgogICBzb2RpcG9kaTpkb2NuYW1lPSJQMjA0MjNBLnN2ZyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjEuNCIKICAgICBpbmtzY2FwZTpjeD0iNTQuNzcxNzU5IgogICAgIGlua3NjYXBlOmN5PSItNjUuNjAzMTAxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04OC4zNDUzNjYsLTE3Ny41ODY5OCkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTQsNTMuMjcwMTEpIgogICAgICAgaWQ9ImczMjg5Ij4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InJlY3QzMjIzIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICB5PSIxMjUuNDE2ODciIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS41MzUxMiwxMjQuMzE2ODcgdiAxLjYiCiAgICAgICAgIGlkPSJwYXRoMzIyNSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMjc2IgogICAgICAgICBkPSJtIDEwOS4xMzUxMiwxMjQuNjY1MyBoIDAuOCIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
<prop k="offset" v="0,-0.5"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_width" v="0.2"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="parameters" v=""/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="0.8"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="9" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="255,255,255,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="square" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="149,80,88,255" type="QString"/>
<Option name="outline_style" value="solid" type="QString"/>
<Option name="outline_width" value="0.15" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="0.8" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="255,255,255,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="square"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="149,80,88,255"/>
<prop k="outline_style" v="solid"/>
<prop k="outline_width" v="0.15"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="0.8"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="angle" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="expression" value="&quot;simb_rot&quot;" type="QString"/>
<Option name="type" value="3" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</symbols>
</renderer-v2>
<labeling type="rule-based">
<rules key="{39f22724-7b88-48af-93cb-14c6921b599a}">
<rule filter="&quot;tipo&quot; = 1212 and &quot;visivel&quot; is true" description="Sede operacional de fazenda" key="{f3cfbcd4-edad-4a07-9275-d0bdbc899098}">
<settings calloutType="simple">
<text-style fontUnderline="0" fontSize="6" blendMode="0" namedStyle="Condensed Light" capitalization="0" textOpacity="1" textOrientation="horizontal" fieldName="texto_edicao" useSubstitutions="0" fontSizeUnit="Point" allowHtml="0" fontStrikeout="0" isExpression="0" fontWordSpacing="0" fontLetterSpacing="0" textColor="0,0,0,255" multilineHeight="0.8" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fontWeight="25" fontKerning="1">
<text-buffer bufferSize="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferDraw="0"/>
<text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskOpacity="1" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskEnabled="1" maskType="0" maskSize="0.2"/>
<background shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeRadiiX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeRotation="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeUnit="MM" shapeDraw="0" shapeOffsetX="0" shapeBlendMode="0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeOffsetY="0" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0">
<symbol alpha="1" name="markerSymbol" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="231,113,72,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="circle" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_style" value="solid" type="QString"/>
<Option name="outline_width" value="0" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="2" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="231,113,72,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="circle"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_style" v="solid"/>
<prop k="outline_width" v="0"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="2"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</background>
<shadow shadowOpacity="0.7" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format rightDirectionSymbol=">" formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" plussign="0" wrapChar="|" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" autoWrapLength="0" placeDirectionSymbol="0"/>
<placement centroidWhole="0" repeatDistance="0" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" fitInPolygonOnly="0" rotationAngle="0" lineAnchorPercent="0.5" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="6" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" yOffset="-0.5" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" dist="0" quadOffset="2" offsetType="0" distUnits="MM" preserveRotation="1" priority="5" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" layerType="PointGeometry" placementFlags="10"/>
<rendering fontLimitPixelSize="0" drawLabels="1" obstacleType="1" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" obstacle="1" minFeatureSize="0" scaleVisibility="0" fontMaxPixelSize="10000" mergeLines="0" scaleMin="0" obstacleFactor="1" maxNumLabels="2000" scaleMax="0" labelPerPart="0" displayAll="1" zIndex="0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="MultiLineAlignment" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="justificativa_txt" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
<Option name="PositionX" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="label_x" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
<Option name="PositionY" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="label_y" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<callout type="simple">
<Option type="Map">
<Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
<Option name="ddProperties" type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
<Option name="drawToAllParts" value="false" type="bool"/>
<Option name="enabled" value="0" type="QString"/>
<Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
<Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
<Option name="minLength" value="0" type="double"/>
<Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="minLengthUnit" value="MM" type="QString"/>
<Option name="offsetFromAnchor" value="0" type="double"/>
<Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
<Option name="offsetFromLabel" value="0" type="double"/>
<Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offsetFromLabelUnit" value="MM" type="QString"/>
</Option>
</callout>
</settings>
</rule>
<rule filter="&quot;tipo&quot; = 1218  and &quot;visivel&quot; is true" description="Curral" key="{ee144bc3-b72e-4c56-aca1-2398b719a8ff}">
<settings calloutType="simple">
<text-style fontUnderline="0" fontSize="6" blendMode="0" namedStyle="Condensed" capitalization="0" textOpacity="1" textOrientation="horizontal" fieldName="texto_edicao" useSubstitutions="0" fontSizeUnit="Point" allowHtml="0" fontStrikeout="0" isExpression="0" fontWordSpacing="0" fontLetterSpacing="0" textColor="0,0,0,255" multilineHeight="0.8" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fontWeight="50" fontKerning="1">
<text-buffer bufferSize="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferDraw="0"/>
<text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskOpacity="1" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskEnabled="1" maskType="0" maskSize="0.2"/>
<background shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeRadiiX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeRotation="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeUnit="MM" shapeDraw="0" shapeOffsetX="0" shapeBlendMode="0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeOffsetY="0" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0">
<symbol alpha="1" name="markerSymbol" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="231,113,72,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="circle" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_style" value="solid" type="QString"/>
<Option name="outline_width" value="0" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="2" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="231,113,72,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="circle"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_style" v="solid"/>
<prop k="outline_width" v="0"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="2"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</background>
<shadow shadowOpacity="0.7" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format rightDirectionSymbol=">" formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" plussign="0" wrapChar="|" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" autoWrapLength="0" placeDirectionSymbol="0"/>
<placement centroidWhole="0" repeatDistance="0" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" fitInPolygonOnly="0" rotationAngle="0" lineAnchorPercent="0.5" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="6" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" yOffset="-0.5" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" dist="0" quadOffset="2" offsetType="0" distUnits="MM" preserveRotation="1" priority="5" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" layerType="PointGeometry" placementFlags="10"/>
<rendering fontLimitPixelSize="0" drawLabels="1" obstacleType="1" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" obstacle="1" minFeatureSize="0" scaleVisibility="0" fontMaxPixelSize="10000" mergeLines="0" scaleMin="0" obstacleFactor="1" maxNumLabels="2000" scaleMax="0" labelPerPart="0" displayAll="1" zIndex="0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="MultiLineAlignment" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="justificativa_txt" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
<Option name="PositionX" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="label_x" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
<Option name="PositionY" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="label_y" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<callout type="simple">
<Option type="Map">
<Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
<Option name="ddProperties" type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
<Option name="drawToAllParts" value="false" type="bool"/>
<Option name="enabled" value="0" type="QString"/>
<Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
<Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
<Option name="minLength" value="0" type="double"/>
<Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="minLengthUnit" value="MM" type="QString"/>
<Option name="offsetFromAnchor" value="0" type="double"/>
<Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
<Option name="offsetFromLabel" value="0" type="double"/>
<Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offsetFromLabelUnit" value="MM" type="QString"/>
</Option>
</callout>
</settings>
</rule>
<rule filter="&quot;tipo&quot; not in (1212,1218) and &quot;visivel&quot; is true" description="Edificação" key="{70717e26-8b85-4fe2-aa1f-3a813a7e17ee}">
<settings calloutType="simple">
<text-style fontUnderline="0" fontSize="6" blendMode="0" namedStyle="Condensed" capitalization="0" textOpacity="1" textOrientation="horizontal" fieldName="texto_edicao" useSubstitutions="0" fontSizeUnit="Point" allowHtml="0" fontStrikeout="0" isExpression="0" fontWordSpacing="0" fontLetterSpacing="0" textColor="0,0,0,255" multilineHeight="0.8" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fontWeight="50" fontKerning="1">
<text-buffer bufferSize="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferDraw="0"/>
<text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskOpacity="1" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskEnabled="1" maskType="0" maskSize="0.2"/>
<background shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeRadiiX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeRotation="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeUnit="MM" shapeDraw="0" shapeOffsetX="0" shapeBlendMode="0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeOffsetY="0" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0">
<symbol alpha="1" name="markerSymbol" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="231,113,72,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="circle" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
<Option name="outline_style" value="solid" type="QString"/>
<Option name="outline_width" value="0" type="QString"/>
<Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="outline_width_unit" value="MM" type="QString"/>
<Option name="scale_method" value="diameter" type="QString"/>
<Option name="size" value="2" type="QString"/>
<Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="size_unit" value="MM" type="QString"/>
<Option name="vertical_anchor_point" value="1" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="231,113,72,255"/>
<prop k="horizontal_anchor_point" v="1"/>
<prop k="joinstyle" v="bevel"/>
<prop k="name" v="circle"/>
<prop k="offset" v="0,0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="outline_color" v="35,35,35,255"/>
<prop k="outline_style" v="solid"/>
<prop k="outline_width" v="0"/>
<prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="outline_width_unit" v="MM"/>
<prop k="scale_method" v="diameter"/>
<prop k="size" v="2"/>
<prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="size_unit" v="MM"/>
<prop k="vertical_anchor_point" v="1"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</background>
<shadow shadowOpacity="0.7" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format rightDirectionSymbol=">" formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" plussign="0" wrapChar="|" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" autoWrapLength="0" placeDirectionSymbol="0"/>
<placement centroidWhole="0" repeatDistance="0" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" fitInPolygonOnly="0" rotationAngle="0" lineAnchorPercent="0.5" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="6" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" yOffset="-0.5" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" dist="0" quadOffset="2" offsetType="0" distUnits="MM" preserveRotation="1" priority="5" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" layerType="PointGeometry" placementFlags="10"/>
<rendering fontLimitPixelSize="0" drawLabels="1" obstacleType="1" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" obstacle="1" minFeatureSize="0" scaleVisibility="0" fontMaxPixelSize="10000" mergeLines="0" scaleMin="0" obstacleFactor="1" maxNumLabels="2000" scaleMax="0" labelPerPart="0" displayAll="1" zIndex="0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties" type="Map">
<Option name="MultiLineAlignment" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="justificativa_txt" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
<Option name="PositionX" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="label_x" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
<Option name="PositionY" type="Map">
<Option name="active" value="true" type="bool"/>
<Option name="field" value="label_y" type="QString"/>
<Option name="type" value="2" type="int"/>
</Option>
</Option>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<callout type="simple">
<Option type="Map">
<Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
<Option name="ddProperties" type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
<Option name="drawToAllParts" value="false" type="bool"/>
<Option name="enabled" value="0" type="QString"/>
<Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
<Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
<Option name="minLength" value="0" type="double"/>
<Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="minLengthUnit" value="MM" type="QString"/>
<Option name="offsetFromAnchor" value="0" type="double"/>
<Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
<Option name="offsetFromLabel" value="0" type="double"/>
<Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offsetFromLabelUnit" value="MM" type="QString"/>
</Option>
</callout>
</settings>
</rule>
</rules>
</labeling>
<customproperties>
<property value="&quot;nome&quot;" key="dualview/previewExpressions"/>
<property value="0" key="embeddedWidgets/count"/>
<property key="variableNames"/>
<property key="variableValues"/>
</customproperties>
<blendMode>0</blendMode>
<featureBlendMode>0</featureBlendMode>
<layerOpacity>1</layerOpacity>
<SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
<DiagramCategory width="15" maxScaleDenominator="1e+08" spacing="5" penAlpha="255" backgroundColor="#ffffff" scaleBasedVisibility="0" rotationOffset="270" direction="0" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" lineSizeType="MM" opacity="1" sizeType="MM" showAxis="1" penWidth="0" scaleDependency="Area" penColor="#000000" diagramOrientation="Up" barWidth="5" minimumSize="0" minScaleDenominator="0" height="15" enabled="0" sizeScale="3x:0,0,0,0,0,0" spacingUnit="MM" spacingUnitScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight">
<fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
<attribute color="#000000" label="" field=""/>
<axisSymbol>
<symbol alpha="1" name="" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="square" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.26" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="square"/>
<prop k="customdash" v="5;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.26"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</axisSymbol>
</DiagramCategory>
</SingleCategoryDiagramRenderer>
<DiagramLayerSettings dist="0" linePlacementFlags="18" priority="0" showAll="1" placement="0" zIndex="0" obstacle="0">
<properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</properties>
</DiagramLayerSettings>
<geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
<activeChecks/>
<checkConfiguration/>
</geometryOptions>
<legend type="default-vector"/>
<referencedLayers/>
<fieldConfiguration>
<field name="id" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="nome" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option name="IsMultiline" value="false" type="bool"/>
<Option name="UseHtml" value="false" type="bool"/>
</Option>
</config>
</editWidget>
</field>
<field name="tipo" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abast - Administrativa (304)" value="304" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abast - Edificação de captação de água (301)" value="301" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abast - Edificação de recalque de água (303)" value="303" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abast - Edificação de tratamento de água (302)" value="302" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abast - Mista (395)" value="395" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abast - Outros (398)" value="398" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Administração (2431)" value="2431" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Hangar (2429)" value="2429" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Outros (2498)" value="2498" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Serviço de Combate à incendios (SCI) (2430)" value="2430" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Terminal de cargas (2427)" value="2427" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Terminal de passageiros (2426)" value="2426" type="QString"/>
</Option>
<Option type="Map">
<Option name="Aero - Torre de controle (2428)" value="2428" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Apiário (1214)" value="1214" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Aviário (1213)" value="1213" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Curral (1218)" value="1218" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Outros (1298)" value="1298" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Pocilga (1217)" value="1217" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Sede operacional de fazenda (1212)" value="1212" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Viveiro de plantas (1215)" value="1215" type="QString"/>
</Option>
<Option type="Map">
<Option name="Agro - Viveiro para aquicultura (1216)" value="1216" type="QString"/>
</Option>
<Option type="Map">
<Option name="Com - Administrativo (105)" value="105" type="QString"/>
</Option>
<Option type="Map">
<Option name="Com - Central de comutação e transmissão (102)" value="102" type="QString"/>
</Option>
<Option type="Map">
<Option name="Com - Centro de operações de comunicação (101)" value="101" type="QString"/>
</Option>
<Option type="Map">
<Option name="Com - Estação repetidora (104)" value="104" type="QString"/>
</Option>
<Option type="Map">
<Option name="Com - Estação rádio-base (103)" value="103" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Banco (908)" value="908" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Centro comercial (903)" value="903" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Centro de convenções (905)" value="905" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Centro de exposições (909)" value="909" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Hotel / motel / pousada (907)" value="907" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Mercado (904)" value="904" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Mercado público (910)" value="910" type="QString"/>
</Option>
<Option type="Map">
<Option name="Comerc - Outros (998)" value="998" type="QString"/>
</Option>
<Option type="Map">
<Option name="Dip – Consulado (2901)" value="2901" type="QString"/>
</Option>
<Option type="Map">
<Option name="Dip – Embaixada (2902)" value="2902" type="QString"/>
</Option>
<Option type="Map">
<Option name="Edificação abandonada (2)" value="2" type="QString"/>
</Option>
<Option type="Map">
<Option name="Edificação de energia (201)" value="201" type="QString"/>
</Option>
<Option type="Map">
<Option name="Edificação de medição de fenômenos (1501)" value="1501" type="QString"/>
</Option>
<Option type="Map">
<Option name="Edificação destruída (1)" value="1" type="QString"/>
</Option>
<Option type="Map">
<Option name="Edificação genérica (0)" value="0" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação infantil - pré-escola (517)" value="517" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação infantil – creche (516)" value="516" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação professional de nível técnico (523)" value="523" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação profissional de nível tecnológico (524)" value="524" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação superior – Graduação (520)" value="520" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação superior – graduação e pós-graduação (521)" value="521" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de educação superior – pós-graduação e extensão (522)" value="522" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de ensino fundamental (518)" value="518" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Edificação de ensino médio (519)" value="519" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ens - Outras atividades de ensino (525)" value="525" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ext Min - Extração de carvão mineral (1110)" value="1110" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ext Min - Extração de minerais metálicos (1113)" value="1113" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ext Min - Extração de minerais não-metálicos (1114)" value="1114" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ext Min - Extração de petróleo e serviços relacionados (1111)" value="1111" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ext Min - Outros (1198)" value="1198" type="QString"/>
</Option>
<Option type="Map">
<Option name="Farol (2804)" value="2804" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Administração (2321)" value="2321" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Estação ferroviária de passageiros (2316)" value="2316" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Estação metroviária (2317)" value="2317" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Oficina de manutenção (2320)" value="2320" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Outros (2398)" value="2398" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Terminal ferroviário de cargas (2318)" value="2318" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ferrov - Terminal ferroviário de passageiros e cargas (2319)" value="2319" type="QString"/>
</Option>
<Option type="Map">
<Option name="Habitacão indigena (1401)" value="1401" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Confecção de artigos de vestuário e acessórios (1018)" value="1018" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabriação de máquinas de escritório e equipamentos de informática (1030)" value="1030" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação alimentícia e bebidas (1015)" value="1015" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de artigos de borracha e material plástico (1025)" value="1025" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de celulose, papel e produtos de papel (1021)" value="1021" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de coque, refino de petróleo, elaboração de combustíveis nucleares e produção de álcool (1023)" value="1023" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de equipamentos de instrumentação médico-hospitalares, instrumentos de precisão e ópticos, automação industrial, cronômetros e relógios (1033)" value="1033" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de material eletrônico, de aparelhos e equipamentos de comunicações (1032)" value="1032" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de máquinas e equipamentos (1029)" value="1029" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de máquinas, aparelhos e materiais elétricos (1031)" value="1031" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de móveis e indústrias diversas (1036)" value="1036" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de outros equipamentos de transporte (1035)" value="1035" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de produtos de madeira e celulose (1020)" value="1020" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de produtos de metal (1028)" value="1028" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de produtos de minerais não-metálicos (1026)" value="1026" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de produtos do fumo (1016)" value="1016" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de produtos químicos (1024)" value="1024" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação de produtos têxteis (1017)" value="1017" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Fabricação e montagem de veículos automotores, reboques e carrocerias (1034)" value="1034" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Industria de edição, impressão e reprodução de gravações (1022)" value="1022" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Indústria de construção (1045)" value="1045" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Indústria de metalurgia básica (1027)" value="1027" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Indústria reciclagem (1037)" value="1037" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Outros (1098)" value="1098" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ind - Preparação de couros, artefatos de couro, artigos de viagem e calçados (1019)" value="1019" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Anfiteatro (805)" value="805" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Arquivo (809)" value="809" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Biblioteca (810)" value="810" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Centro cultural (807)" value="807" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Cinema (806)" value="806" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Concha acústica (811)" value="811" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Conservatório (812)" value="812" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Coreto ou tribuna (813)" value="813" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Equipamentos culturais diversos (814)" value="814" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Espaço de eventos e ou cultural (815)" value="815" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Estádio (801)" value="801" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Ginásio (802)" value="802" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Museu (803)" value="803" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Outros (898)" value="898" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Plataforma de pesca (808)" value="808" type="QString"/>
</Option>
<Option type="Map">
<Option name="Laz - Teatro (804)" value="804" type="QString"/>
</Option>
<Option type="Map">
<Option name="Port - Edificação portuária (2501)" value="2501" type="QString"/>
</Option>
<Option type="Map">
<Option name="Posto Fisc - Fiscalização (1911)" value="1911" type="QString"/>
</Option>
<Option type="Map">
<Option name="Posto Fisc - Misto (1995)" value="1995" type="QString"/>
</Option>
<Option type="Map">
<Option name="Posto Fisc - Posto de pesagem (1912)" value="1912" type="QString"/>
</Option>
<Option type="Map">
<Option name="Posto Fisc - Tributação (1910)" value="1910" type="QString"/>
</Option>
<Option type="Map">
<Option name="Posto de combustivel (2601)" value="2601" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Assembléia legislativa (1309)" value="1309" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Autarquia (1314)" value="1314" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Bombeiros (1323)" value="1323" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Cartorial (1303)" value="1303" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Câmara municipal (1308)" value="1308" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Eleitoral (1305)" value="1305" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Fundação (1312)" value="1312" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Fórum (1310)" value="1310" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Gestão pública (1304)" value="1304" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Outros (1398)" value="1398" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Prefeitura (1322)" value="1322" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Procuradoria (1313)" value="1313" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Produção ou pequisa pública (1306)" value="1306" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Secretaria (1311)" value="1311" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Civ - Seguridade social (1307)" value="1307" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Mil - Aquartelamento (1712)" value="1712" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Mil - Delegacia de serviço militar (1718)" value="1718" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Mil - Hotel de trânsito (1717)" value="1717" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pub Mil - Outros (1798)" value="1798" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Administração (610)" value="610" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Centro religioso (603)" value="603" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Convento (605)" value="605" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Igreja (601)" value="601" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Mesquita (606)" value="606" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Mosteiro (604)" value="604" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Outros (698)" value="698" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Sinagoga (607)" value="607" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Templo (602)" value="602" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rel - Terreiro (609)" value="609" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rod - Outros (2298)" value="2298" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rod - Parada interestadual (2210)" value="2210" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rod - Posto de fiscalização rodoviária (2214)" value="2214" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rod - Posto de pedágio (2213)" value="2213" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rod - Terminal interestadual (2208)" value="2208" type="QString"/>
</Option>
<Option type="Map">
<Option name="Rod - Terminal urbano (2209)" value="2209" type="QString"/>
</Option>
<Option type="Map">
<Option name="Saneam - Administração (408)" value="408" type="QString"/>
</Option>
<Option type="Map">
<Option name="Saneam - Edificação de recalque de resíduos (403)" value="403" type="QString"/>
</Option>
<Option type="Map">
<Option name="Saneam - Edificação de tratamento de esgoto (405)" value="405" type="QString"/>
</Option>
<Option type="Map">
<Option name="Saneam - Incinerador de resíduos (407)" value="407" type="QString"/>
</Option>
<Option type="Map">
<Option name="Saneam - Outros (498)" value="498" type="QString"/>
</Option>
<Option type="Map">
<Option name="Saneam - Usina de reciclagem (406)" value="406" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Atendimento a urgência e emergências (pronto socorro) (2027)" value="2027" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Atendimento hospitalar (2025)" value="2025" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Atendimento hospitalar especializado (2026)" value="2026" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Atenção ambulatorial (posto e centro de saúde) (2028)" value="2028" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Outras atividades relacionadas com a atenção à saúde (instituto de pesquisa) (2030)" value="2030" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Serviços de complementação diagnóstica ou terapêutica (2029)" value="2029" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sau - Serviços veterinários (2031)" value="2031" type="QString"/>
</Option>
<Option type="Map">
<Option name="Seg – Delegacia de polícia civil (3001)" value="3001" type="QString"/>
</Option>
<Option type="Map">
<Option name="Seg – Outras polícias (3098)" value="3098" type="QString"/>
</Option>
<Option type="Map">
<Option name="Seg – Polícia militar (3005)" value="3005" type="QString"/>
</Option>
<Option type="Map">
<Option name="Seg – Posto de polícia rodoviária federal (3004)" value="3004" type="QString"/>
</Option>
<Option type="Map">
<Option name="Seg – Posto guarda municipal (3003)" value="3003" type="QString"/>
</Option>
<Option type="Map">
<Option name="Seg – Posto policia militar (3002)" value="3002" type="QString"/>
</Option>
<Option type="Map">
<Option name="Ssoc – Serviço Social (2101)" value="2101" type="QString"/>
</Option>
<Option type="Map">
<Option name="Tur - Cruzeiro (709)" value="709" type="QString"/>
</Option>
<Option type="Map">
<Option name="Tur - Estátua (710)" value="710" type="QString"/>
</Option>
<Option type="Map">
<Option name="Tur - Mirante (711)" value="711" type="QString"/>
</Option>
<Option type="Map">
<Option name="Tur - Monumento (712)" value="712" type="QString"/>
</Option>
<Option type="Map">
<Option name="Tur - Outros (798)" value="798" type="QString"/>
</Option>
<Option type="Map">
<Option name="Tur - Panteão (713)" value="713" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="material_construcao" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
<Option name="Alvenaria (1)" value="1" type="QString"/>
<Option name="Concreto (2)" value="2" type="QString"/>
<Option name="Desconhecido (0)" value="0" type="QString"/>
<Option name="Madeira (5)" value="5" type="QString"/>
<Option name="Metal (3)" value="3" type="QString"/>
<Option name="Não aplicável (97)" value="97" type="QString"/>
<Option name="Outros (98)" value="98" type="QString"/>
<Option name="Rocha (4)" value="4" type="QString"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="observacao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option name="IsMultiline" value="false" type="bool"/>
<Option name="UseHtml" value="false" type="bool"/>
</Option>
</config>
</editWidget>
</field>
<field name="data_modificacao" configurationFlags="None">
<editWidget type="DateTime">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="controle_uuid" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="usuario_criacao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="usuario_atualizacao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="insumo" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="data_insumo" configurationFlags="None">
<editWidget type="DateTime">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="visivel" configurationFlags="None">
<editWidget type="CheckBox">
<config>
<Option type="Map">
<Option name="CheckedState" value="" type="QString"/>
<Option name="TextDisplayMethod" value="0" type="int"/>
<Option name="UncheckedState" value="" type="QString"/>
</Option>
</config>
</editWidget>
</field>
<field name="texto_edicao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="carta_mini" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="label_x" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="label_y" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="justificativa_txt" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="simb_x" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="simb_y" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="simb_rot" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
</fieldConfiguration>
<aliases>
<alias name="" index="0" field="id"/>
<alias name="" index="1" field="nome"/>
<alias name="" index="2" field="tipo"/>
<alias name="" index="3" field="material_construcao"/>
<alias name="" index="4" field="observacao"/>
<alias name="" index="5" field="data_modificacao"/>
<alias name="" index="6" field="controle_uuid"/>
<alias name="" index="7" field="usuario_criacao"/>
<alias name="" index="8" field="usuario_atualizacao"/>
<alias name="" index="9" field="insumo"/>
<alias name="" index="10" field="data_insumo"/>
<alias name="" index="11" field="visivel"/>
<alias name="" index="12" field="texto_edicao"/>
<alias name="" index="13" field="carta_mini"/>
<alias name="" index="14" field="label_x"/>
<alias name="" index="15" field="label_y"/>
<alias name="" index="16" field="justificativa_txt"/>
<alias name="" index="17" field="simb_x"/>
<alias name="" index="18" field="simb_y"/>
<alias name="" index="19" field="simb_rot"/>
</aliases>
<defaults>
<default field="id" expression="" applyOnUpdate="0"/>
<default field="nome" expression="" applyOnUpdate="0"/>
<default field="tipo" expression="" applyOnUpdate="0"/>
<default field="material_construcao" expression="" applyOnUpdate="0"/>
<default field="observacao" expression="" applyOnUpdate="0"/>
<default field="data_modificacao" expression="" applyOnUpdate="0"/>
<default field="controle_uuid" expression="" applyOnUpdate="0"/>
<default field="usuario_criacao" expression="" applyOnUpdate="0"/>
<default field="usuario_atualizacao" expression="" applyOnUpdate="0"/>
<default field="insumo" expression="" applyOnUpdate="0"/>
<default field="data_insumo" expression="" applyOnUpdate="0"/>
<default field="visivel" expression="" applyOnUpdate="0"/>
<default field="texto_edicao" expression="" applyOnUpdate="0"/>
<default field="carta_mini" expression="" applyOnUpdate="0"/>
<default field="label_x" expression="" applyOnUpdate="0"/>
<default field="label_y" expression="" applyOnUpdate="0"/>
<default field="justificativa_txt" expression="" applyOnUpdate="0"/>
<default field="simb_x" expression="" applyOnUpdate="0"/>
<default field="simb_y" expression="" applyOnUpdate="0"/>
<default field="simb_rot" expression="" applyOnUpdate="0"/>
</defaults>
<constraints>
<constraint unique_strength="1" field="id" constraints="3" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="nome" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="tipo" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="material_construcao" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="observacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="data_modificacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="controle_uuid" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="usuario_criacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="usuario_atualizacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="insumo" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="data_insumo" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="visivel" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="texto_edicao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="carta_mini" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="label_x" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="label_y" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="justificativa_txt" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="simb_x" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="simb_y" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="simb_rot" constraints="0" notnull_strength="0" exp_strength="0"/>
</constraints>
<constraintExpressions>
<constraint field="id" exp="" desc=""/>
<constraint field="nome" exp="" desc=""/>
<constraint field="tipo" exp="" desc=""/>
<constraint field="material_construcao" exp="" desc=""/>
<constraint field="observacao" exp="" desc=""/>
<constraint field="data_modificacao" exp="" desc=""/>
<constraint field="controle_uuid" exp="" desc=""/>
<constraint field="usuario_criacao" exp="" desc=""/>
<constraint field="usuario_atualizacao" exp="" desc=""/>
<constraint field="insumo" exp="" desc=""/>
<constraint field="data_insumo" exp="" desc=""/>
<constraint field="visivel" exp="" desc=""/>
<constraint field="texto_edicao" exp="" desc=""/>
<constraint field="carta_mini" exp="" desc=""/>
<constraint field="label_x" exp="" desc=""/>
<constraint field="label_y" exp="" desc=""/>
<constraint field="justificativa_txt" exp="" desc=""/>
<constraint field="simb_x" exp="" desc=""/>
<constraint field="simb_y" exp="" desc=""/>
<constraint field="simb_rot" exp="" desc=""/>
</constraintExpressions>
<expressionfields/>
<attributeactions>
<defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
</attributeactions>
<attributetableconfig sortExpression="&quot;simb_rot&quot;" sortOrder="1" actionWidgetStyle="dropDown">
<columns>
<column name="id" width="-1" type="field" hidden="0"/>
<column name="nome" width="140" type="field" hidden="0"/>
<column name="tipo" width="346" type="field" hidden="0"/>
<column name="material_construcao" width="-1" type="field" hidden="0"/>
<column name="observacao" width="352" type="field" hidden="0"/>
<column name="data_modificacao" width="-1" type="field" hidden="0"/>
<column name="controle_uuid" width="-1" type="field" hidden="0"/>
<column name="usuario_criacao" width="-1" type="field" hidden="0"/>
<column name="usuario_atualizacao" width="-1" type="field" hidden="0"/>
<column name="insumo" width="-1" type="field" hidden="0"/>
<column name="data_insumo" width="-1" type="field" hidden="0"/>
<column width="-1" type="actions" hidden="1"/>
<column name="visivel" width="-1" type="field" hidden="0"/>
<column name="texto_edicao" width="327" type="field" hidden="0"/>
<column name="carta_mini" width="-1" type="field" hidden="0"/>
<column name="label_x" width="-1" type="field" hidden="0"/>
<column name="label_y" width="-1" type="field" hidden="0"/>
<column name="justificativa_txt" width="-1" type="field" hidden="0"/>
<column name="simb_x" width="-1" type="field" hidden="0"/>
<column name="simb_y" width="-1" type="field" hidden="0"/>
<column name="simb_rot" width="-1" type="field" hidden="0"/>
</columns>
</attributetableconfig>
<conditionalstyles>
<rowstyles/>
<fieldstyles/>
</conditionalstyles>
<storedexpressions/>
<editform tolerant="1"></editform>
<editforminit/>
<editforminitcodesource>0</editforminitcodesource>
<editforminitfilepath></editforminitfilepath>
<editforminitcode><![CDATA[# -*- código: utf-8 -*-
"""
Formas QGIS podem ter uma função Python que é chamada quando o formulário é
aberto.

Use esta função para adicionar lógica extra para seus formulários.

Digite o nome da função na "função Python Init"
campo.
Um exemplo a seguir:
"""
de qgis.PyQt.QtWidgets importar QWidget

def my_form_open(diálogo, camada, feição):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
<featformsuppress>0</featformsuppress>
<editorlayout>generatedlayout</editorlayout>
<editable>
<field name="carta_mini" editable="1"/>
<field name="controle_uuid" editable="1"/>
<field name="data_insumo" editable="1"/>
<field name="data_modificacao" editable="1"/>
<field name="id" editable="1"/>
<field name="insumo" editable="1"/>
<field name="justificativa_txt" editable="1"/>
<field name="label_x" editable="1"/>
<field name="label_y" editable="1"/>
<field name="material_construcao" editable="1"/>
<field name="nome" editable="1"/>
<field name="observacao" editable="1"/>
<field name="simb_rot" editable="1"/>
<field name="simb_x" editable="1"/>
<field name="simb_y" editable="1"/>
<field name="texto_edicao" editable="1"/>
<field name="tipo" editable="1"/>
<field name="usuario_atualizacao" editable="1"/>
<field name="usuario_criacao" editable="1"/>
<field name="visivel" editable="1"/>
</editable>
<labelOnTop>
<field name="carta_mini" labelOnTop="0"/>
<field name="controle_uuid" labelOnTop="0"/>
<field name="data_insumo" labelOnTop="0"/>
<field name="data_modificacao" labelOnTop="0"/>
<field name="id" labelOnTop="0"/>
<field name="insumo" labelOnTop="0"/>
<field name="justificativa_txt" labelOnTop="0"/>
<field name="label_x" labelOnTop="0"/>
<field name="label_y" labelOnTop="0"/>
<field name="material_construcao" labelOnTop="0"/>
<field name="nome" labelOnTop="0"/>
<field name="observacao" labelOnTop="0"/>
<field name="simb_rot" labelOnTop="0"/>
<field name="simb_x" labelOnTop="0"/>
<field name="simb_y" labelOnTop="0"/>
<field name="texto_edicao" labelOnTop="0"/>
<field name="tipo" labelOnTop="0"/>
<field name="usuario_atualizacao" labelOnTop="0"/>
<field name="usuario_criacao" labelOnTop="0"/>
<field name="visivel" labelOnTop="0"/>
</labelOnTop>
<dataDefinedFieldProperties/>
<widgets/>
<previewExpression>"nome"</previewExpression>
<mapTip></mapTip>
<layerGeometryType>0</layerGeometryType>
</qgis>
