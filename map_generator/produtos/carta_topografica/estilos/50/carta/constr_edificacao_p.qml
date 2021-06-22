<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" minScale="100000000" hasScaleBasedVisibilityFlag="0" version="3.18.3-Zürich" simplifyDrawingHints="0" simplifyAlgorithm="0" simplifyMaxScale="1" labelsEnabled="1" readOnly="0" styleCategories="AllStyleCategories" maxScale="0" simplifyDrawingTol="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal startField="" durationUnit="min" endExpression="" accumulate="0" startExpression="" durationField="" fixedDuration="0" enabled="0" mode="0" endField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" forceraster="0" type="RuleRenderer" symbollevels="0">
    <rules key="{af709a54-88ca-4a27-bba5-e0a7ac6ce840}">
      <rule key="{4bdda895-97c4-4ad7-919c-b2b6ccf321c8}" filter=" &quot;visivel&quot; is true" label="Visível">
        <rule description="Edificação operacional" symbol="0" key="{1d0aafdd-64b6-4744-852d-94b2496d4aa9}" filter=" (&quot;tipo&quot; = 0 or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (24, 11, 8, 3, 1, 9, 2, 15, 23, 25, 21, 7)) and &quot;tipo&quot; not in (2429)" label="P20403A"/>
        <rule symbol="1" key="{2c13ba21-feb1-44c7-94dd-c3a568665480}" filter="(&quot;tipo&quot; in (2429) or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (12, 10, 13, 17, 30, 19, 22, 4)) and &quot;tipo&quot; not in (1218)" label="P20418A"/>
        <rule symbol="2" key="{d05c1075-ce2e-4596-8ffb-9c464ea12b2b}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 = 5" label="P20415A"/>
        <rule symbol="3" key="{2206c7ec-9232-4947-809d-577712a147c2}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 = 20" label="P20427A"/>
        <rule symbol="4" key="{7ccb2fca-e544-4540-81d0-bc49b7d09326}" filter="&quot;tipo&quot; = 2601" label="P20430A"/>
        <rule symbol="5" key="{63b54aab-2b56-45eb-bc0e-4118677465ac}" filter=" (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (29)" label="P20435A"/>
        <rule symbol="6" key="{1e337d26-a0c4-4728-820d-028c924da0cd}" filter="&quot;tipo&quot; = 2804" label="P11206A"/>
        <rule symbol="7" key="{600f7ed1-4510-4ec4-a0f9-51b523c4847e}" filter="&quot;tipo&quot; = 1401" label="P20429A"/>
        <rule symbol="8" key="{e982ad82-d248-40a1-8101-55180c2e7976}" filter="&quot;tipo&quot; = 601" label="P20423A"/>
        <rule symbol="9" key="{ee175899-d73f-4256-9cba-8e9802db23c2}" filter="&quot;tipo&quot; = 1218" label="P20405D"/>
        <rule description="Edificação não operacional" symbol="10" key="{593e8ac9-227a-476b-ade0-e3fdce7c6973}" filter=" &quot;tipo&quot; in (1,2)" label="P20403B"/>
        <rule symbol="11" key="{f1a08c62-a732-4ad8-92da-b287df07f287}" filter="ELSE"/>
      </rule>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" name="0" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="0,0,0,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="square" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="no" name="outline_style" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="0.5" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.5" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="1" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="0,0,0,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="square" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="no" name="outline_style" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="0.8" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.8" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="10" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="224,224,224,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="quarter_square" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.1" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="0.6" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="224,224,224,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="quarter_square" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.1" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.6" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="11" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="219,30,42,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="diamond" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="128,17,25,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.4" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="4.4" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="219,30,42,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="diamond" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="128,17,25,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.4" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="4.4" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="2" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNDk4ODE5bW0iCiAgIGhlaWdodD0iMS43bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA0OTg4MTkgMS43IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0OTQwIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDE1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0OTM0IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxLjk3OTg5OSIKICAgICBpbmtzY2FwZTpjeD0iLTEwNC4wODU4OSIKICAgICBpbmtzY2FwZTpjeT0iMTMyLjY5NjUyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDEzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDkzNyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2NC40NzkzLC0zMi41MTI4NTkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjczLjc2NDQyLDkuMjMzNjg5MikiCiAgICAgICBpZD0iZzI1OTgiPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC40NzkxNyIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgd2lkdGg9IjAuNSIKICAgICAgICAgaWQ9InJlY3QxOTYxNiIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTg1IgogICAgICAgICBkPSJtIDEwOS41MzUxMiwyMy4yNzkxNyB2IDEuNyIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTkzIgogICAgICAgICBkPSJtIDEwOS42MzUsMjMuMjc5MTcgMC43LDAuMjQ2NiAtMC43LDAuMjUzNCB2IC0wLjUiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMDk5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" name="name" type="QString"/>
            <Option value="0.2549995142311231,-0.59999885701440725" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.04988" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNDk4ODE5bW0iCiAgIGhlaWdodD0iMS43bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA0OTg4MTkgMS43IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0OTQwIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDE1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0OTM0IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxLjk3OTg5OSIKICAgICBpbmtzY2FwZTpjeD0iLTEwNC4wODU4OSIKICAgICBpbmtzY2FwZTpjeT0iMTMyLjY5NjUyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDEzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIwIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDkzNyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2NC40NzkzLC0zMi41MTI4NTkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjczLjc2NDQyLDkuMjMzNjg5MikiCiAgICAgICBpZD0iZzI1OTgiPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC40NzkxNyIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgd2lkdGg9IjAuNSIKICAgICAgICAgaWQ9InJlY3QxOTYxNiIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTg1IgogICAgICAgICBkPSJtIDEwOS41MzUxMiwyMy4yNzkxNyB2IDEuNyIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgyNTkzIgogICAgICAgICBkPSJtIDEwOS42MzUsMjMuMjc5MTcgMC43LDAuMjQ2NiAtMC43LDAuMjUzNCB2IC0wLjUiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMDk5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" k="name"/>
          <prop v="0.2549995142311231,-0.59999885701440725" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1.04988" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="3" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS43NW1tIgogICBoZWlnaHQ9IjEuNzVtbSIKICAgdmlld0JveD0iMCAwIDEuNzQ5OTk5OSAxLjc1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0MDQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDI3QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0MDM3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIwLjciCiAgICAgaW5rc2NhcGU6Y3g9Ii0xOC41NDI1OCIKICAgICBpbmtzY2FwZTpjeT0iNzQuOTM0MTgxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04Ny44Mzg2MTksLTE3OC4wNDgxNSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTMsLTQ2LjcwMTg1KSIKICAgICAgIGlkPSJnNzk4NCI+CiAgICAgIDxjaXJjbGUKICAgICAgICAgcj0iMC44NzUiCiAgICAgICAgIGN5PSIyMjUuNjI1IgogICAgICAgICBjeD0iMTA5LjUwMzM3IgogICAgICAgICBpZD0icGF0aDc5NjQiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPGcKICAgICAgICAgc3R5bGU9InN0cm9rZTojZmZmZmZmO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDIuNzM2NjcyMiwwLjgzMDE2KSIKICAgICAgICAgaWQ9Imc3OTcwIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgaWQ9InBhdGg3OTUwIgogICAgICAgICAgIGQ9Im0gMTA2Ljc2NjcsMjI0LjE2OTg0IHYgMS4yNSIKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgICAgPHBhdGgKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMDYuMTQxNywyMjQuNzk0ODQgaCAxLjI1IgogICAgICAgICAgIGlkPSJwYXRoNzk1MiIKICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8L2c+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.75" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS43NW1tIgogICBoZWlnaHQ9IjEuNzVtbSIKICAgdmlld0JveD0iMCAwIDEuNzQ5OTk5OSAxLjc1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0MDQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDI3QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0MDM3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIwLjciCiAgICAgaW5rc2NhcGU6Y3g9Ii0xOC41NDI1OCIKICAgICBpbmtzY2FwZTpjeT0iNzQuOTM0MTgxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04Ny44Mzg2MTksLTE3OC4wNDgxNSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTMsLTQ2LjcwMTg1KSIKICAgICAgIGlkPSJnNzk4NCI+CiAgICAgIDxjaXJjbGUKICAgICAgICAgcj0iMC44NzUiCiAgICAgICAgIGN5PSIyMjUuNjI1IgogICAgICAgICBjeD0iMTA5LjUwMzM3IgogICAgICAgICBpZD0icGF0aDc5NjQiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPGcKICAgICAgICAgc3R5bGU9InN0cm9rZTojZmZmZmZmO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDIuNzM2NjcyMiwwLjgzMDE2KSIKICAgICAgICAgaWQ9Imc3OTcwIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgaWQ9InBhdGg3OTUwIgogICAgICAgICAgIGQ9Im0gMTA2Ljc2NjcsMjI0LjE2OTg0IHYgMS4yNSIKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgICAgPHBhdGgKICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMDYuMTQxNywyMjQuNzk0ODQgaCAxLjI1IgogICAgICAgICAgIGlkPSJwYXRoNzk1MiIKICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8L2c+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1.75" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="4" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4xbW0iCiAgIGhlaWdodD0iMi4xMDAwMDhtbSIKICAgdmlld0JveD0iMCAwIDEuMSAyLjEwMDAwOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTM3OCIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQzMEEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTM3MiIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iNS42IgogICAgIGlua3NjYXBlOmN4PSIyNC4yNjcwMjQiCiAgICAgaW5rc2NhcGU6Y3k9IjIxLjgyODQ5MyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjEwOTAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iODAzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSI4MzAiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE0MiIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIwIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEzNzUiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0Ny4xMDI3MjYsLTEzNC4xODU4NykiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xNTYuNTUyNzIsLTE0LjEyMDQ3NykiCiAgICAgICBpZD0iZzk2ODciPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTEwLDE0OS4wNDAxMSB2IDAuOTY5NSIKICAgICAgICAgaWQ9InBhdGg3NzgzIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjk0NzMxODIzLDAsMCwtMC44NzI4NDg4NSw2LjcwNTU2MjgsMjc2LjM3Njk5KSIKICAgICAgICAgaW5rc2NhcGU6dHJhbnNmb3JtLWNlbnRlci15PSIwLjExMDI5NDc2IgogICAgICAgICBpbmtzY2FwZTp0cmFuc2Zvcm0tY2VudGVyLXg9IjIuODA5OTA4ZS0wNiIKICAgICAgICAgZD0ibSAxMDkuNDc2NTIsMTQ2LjY0NDY5IC0wLjg3NTQ2LDAgMC40Mzc3MywtMC43NTgxNyB6IgogICAgICAgICBpbmtzY2FwZTpyYW5kb21pemVkPSIwIgogICAgICAgICBpbmtzY2FwZTpyb3VuZGVkPSIwIgogICAgICAgICBpbmtzY2FwZTpmbGF0c2lkZWQ9InRydWUiCiAgICAgICAgIHNvZGlwb2RpOmFyZzI9IjEuNTcwNzk2MyIKICAgICAgICAgc29kaXBvZGk6YXJnMT0iMC41MjM1OTg3OCIKICAgICAgICAgc29kaXBvZGk6cjI9IjAuMjUyNzIyNTkiCiAgICAgICAgIHNvZGlwb2RpOnIxPSIwLjUwNTQ0NTE4IgogICAgICAgICBzb2RpcG9kaTpjeT0iMTQ2LjM5MTk3IgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjAzODc5IgogICAgICAgICBzb2RpcG9kaTpzaWRlcz0iMyIKICAgICAgICAgaWQ9InBhdGg3ODIxIgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNjQ5NTgxNTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJzdGFyIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIxNDkuOTA2MzYiCiAgICAgICAgIHg9IjEwOS43NDg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjUiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGlkPSJyZWN0NzgyOSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTQ5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOnN0cm9rZSBmaWxsIG1hcmtlcnMiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" name="name" type="QString"/>
            <Option value="0,-0.80000290910148775" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.1" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4xbW0iCiAgIGhlaWdodD0iMi4xMDAwMDhtbSIKICAgdmlld0JveD0iMCAwIDEuMSAyLjEwMDAwOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTM3OCIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQzMEEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTM3MiIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iNS42IgogICAgIGlua3NjYXBlOmN4PSIyNC4yNjcwMjQiCiAgICAgaW5rc2NhcGU6Y3k9IjIxLjgyODQ5MyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjEwOTAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iODAzIgogICAgIGlua3NjYXBlOndpbmRvdy14PSI4MzAiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE0MiIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIwIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEzNzUiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0Ny4xMDI3MjYsLTEzNC4xODU4NykiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xNTYuNTUyNzIsLTE0LjEyMDQ3NykiCiAgICAgICBpZD0iZzk2ODciPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTEwLDE0OS4wNDAxMSB2IDAuOTY5NSIKICAgICAgICAgaWQ9InBhdGg3NzgzIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjk0NzMxODIzLDAsMCwtMC44NzI4NDg4NSw2LjcwNTU2MjgsMjc2LjM3Njk5KSIKICAgICAgICAgaW5rc2NhcGU6dHJhbnNmb3JtLWNlbnRlci15PSIwLjExMDI5NDc2IgogICAgICAgICBpbmtzY2FwZTp0cmFuc2Zvcm0tY2VudGVyLXg9IjIuODA5OTA4ZS0wNiIKICAgICAgICAgZD0ibSAxMDkuNDc2NTIsMTQ2LjY0NDY5IC0wLjg3NTQ2LDAgMC40Mzc3MywtMC43NTgxNyB6IgogICAgICAgICBpbmtzY2FwZTpyYW5kb21pemVkPSIwIgogICAgICAgICBpbmtzY2FwZTpyb3VuZGVkPSIwIgogICAgICAgICBpbmtzY2FwZTpmbGF0c2lkZWQ9InRydWUiCiAgICAgICAgIHNvZGlwb2RpOmFyZzI9IjEuNTcwNzk2MyIKICAgICAgICAgc29kaXBvZGk6YXJnMT0iMC41MjM1OTg3OCIKICAgICAgICAgc29kaXBvZGk6cjI9IjAuMjUyNzIyNTkiCiAgICAgICAgIHNvZGlwb2RpOnIxPSIwLjUwNTQ0NTE4IgogICAgICAgICBzb2RpcG9kaTpjeT0iMTQ2LjM5MTk3IgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjAzODc5IgogICAgICAgICBzb2RpcG9kaTpzaWRlcz0iMyIKICAgICAgICAgaWQ9InBhdGg3ODIxIgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNjQ5NTgxNTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJzdGFyIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIxNDkuOTA2MzYiCiAgICAgICAgIHg9IjEwOS43NDg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjUiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGlkPSJyZWN0NzgyOSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTQ5OTk5OTk7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOnN0cm9rZSBmaWxsIG1hcmtlcnMiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" k="name"/>
          <prop v="0,-0.80000290910148775" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1.1" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="5" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNzUwMDA0bW0iCiAgIGhlaWdodD0iMi4wMDAwMDMxbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA3NTAwMDQgMi4wMDAwMDMxIgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMzc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDM1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMzcyIj4KICAgIDxtYXJrZXIKICAgICAgIGlua3NjYXBlOmlzc3RvY2s9InRydWUiCiAgICAgICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIKICAgICAgIGlkPSJtYXJrZXI5MjM3IgogICAgICAgcmVmWD0iMCIKICAgICAgIHJlZlk9IjAiCiAgICAgICBvcmllbnQ9ImF1dG8iCiAgICAgICBpbmtzY2FwZTpzdG9ja2lkPSJBcnJvdzJNc3RhcnQiPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MjM1IiAvPgogICAgPC9tYXJrZXI+CiAgICA8bWFya2VyCiAgICAgICBpbmtzY2FwZTppc3N0b2NrPSJ0cnVlIgogICAgICAgc3R5bGU9Im92ZXJmbG93OnZpc2libGUiCiAgICAgICBpZD0ibWFya2VyOTE0OSIKICAgICAgIHJlZlg9IjAiCiAgICAgICByZWZZPSIwIgogICAgICAgb3JpZW50PSJhdXRvIgogICAgICAgaW5rc2NhcGU6c3RvY2tpZD0iQXJyb3cyTWVuZCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHRyYW5zZm9ybT0ic2NhbGUoLTAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MTQ3IiAvPgogICAgPC9tYXJrZXI+CiAgPC9kZWZzPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyLjgiCiAgICAgaW5rc2NhcGU6Y3g9IjgxLjE3NDY2OSIKICAgICBpbmtzY2FwZTpjeT0iMTYuNjYzMTczIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA5MCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI4MDMiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjgzMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMTQyIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTM3NSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEwNC45OTMzMSwtMTI4LjgwNzE3KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIxNC43NDE5NCwtNzEuMTkyODI5KSIKICAgICAgIGlkPSJnOTczMyI+CiAgICAgIDxyZWN0CiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpzdHJva2UgZmlsbCBtYXJrZXJzIgogICAgICAgICBpZD0icmVjdDk1OTEiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGhlaWdodD0iMC41IgogICAgICAgICB4PSIxMDkuNzQ4NjMiCiAgICAgICAgIHk9IjIwMS41IiAvPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpZD0icGF0aDk1ODciCiAgICAgICAgIGQ9Ik0gMTA5Ljk5ODYzLDIwMC41IFYgMjAyIgogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxyZWN0CiAgICAgICAgIHk9IjIwMC4wNzUiCiAgICAgICAgIHg9IjEwOS45OTg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjU0OTk5OTg5IgogICAgICAgICB3aWR0aD0iMC43NTAwMDA0MiIKICAgICAgICAgaWQ9InJlY3Q5Njc2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwODtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
            <Option value="0.25,-0.69999999999999996" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.075" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wNzUwMDA0bW0iCiAgIGhlaWdodD0iMi4wMDAwMDMxbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA3NTAwMDQgMi4wMDAwMDMxIgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMzc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDIwNDM1QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMzcyIj4KICAgIDxtYXJrZXIKICAgICAgIGlua3NjYXBlOmlzc3RvY2s9InRydWUiCiAgICAgICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIKICAgICAgIGlkPSJtYXJrZXI5MjM3IgogICAgICAgcmVmWD0iMCIKICAgICAgIHJlZlk9IjAiCiAgICAgICBvcmllbnQ9ImF1dG8iCiAgICAgICBpbmtzY2FwZTpzdG9ja2lkPSJBcnJvdzJNc3RhcnQiPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MjM1IiAvPgogICAgPC9tYXJrZXI+CiAgICA8bWFya2VyCiAgICAgICBpbmtzY2FwZTppc3N0b2NrPSJ0cnVlIgogICAgICAgc3R5bGU9Im92ZXJmbG93OnZpc2libGUiCiAgICAgICBpZD0ibWFya2VyOTE0OSIKICAgICAgIHJlZlg9IjAiCiAgICAgICByZWZZPSIwIgogICAgICAgb3JpZW50PSJhdXRvIgogICAgICAgaW5rc2NhcGU6c3RvY2tpZD0iQXJyb3cyTWVuZCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHRyYW5zZm9ybT0ic2NhbGUoLTAuNikiCiAgICAgICAgIGQ9Ik0gOC43MTg1ODc4LDQuMDMzNzM1MiAtMi4yMDcyODk1LDAuMDE2MDEzMjYgOC43MTg1ODg0LC00LjAwMTcwNzggYyAtMS43NDU0OTg0LDIuMzcyMDYwOSAtMS43MzU0NDA4LDUuNjE3NDUxOSAtNmUtNyw4LjAzNTQ0MyB6IgogICAgICAgICBzdHlsZT0iZmlsbDojODA4MDgwO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpldmVub2RkO3N0cm9rZTojODA4MDgwO3N0cm9rZS13aWR0aDowLjYyNTtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGg5MTQ3IiAvPgogICAgPC9tYXJrZXI+CiAgPC9kZWZzPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyLjgiCiAgICAgaW5rc2NhcGU6Y3g9IjgxLjE3NDY2OSIKICAgICBpbmtzY2FwZTpjeT0iMTYuNjYzMTczIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA5MCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI4MDMiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjgzMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMTQyIgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTM3NSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEwNC45OTMzMSwtMTI4LjgwNzE3KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIxNC43NDE5NCwtNzEuMTkyODI5KSIKICAgICAgIGlkPSJnOTczMyI+CiAgICAgIDxyZWN0CiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpzdHJva2UgZmlsbCBtYXJrZXJzIgogICAgICAgICBpZD0icmVjdDk1OTEiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGhlaWdodD0iMC41IgogICAgICAgICB4PSIxMDkuNzQ4NjMiCiAgICAgICAgIHk9IjIwMS41IiAvPgogICAgICA8cGF0aAogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpZD0icGF0aDk1ODciCiAgICAgICAgIGQ9Ik0gMTA5Ljk5ODYzLDIwMC41IFYgMjAyIgogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxyZWN0CiAgICAgICAgIHk9IjIwMC4wNzUiCiAgICAgICAgIHg9IjEwOS45OTg2MyIKICAgICAgICAgaGVpZ2h0PSIwLjU0OTk5OTg5IgogICAgICAgICB3aWR0aD0iMC43NTAwMDA0MiIKICAgICAgICAgaWQ9InJlY3Q5Njc2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwODtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bm9ybWFsIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" k="name"/>
          <prop v="0.25,-0.69999999999999996" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1.075" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="6" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMi42Mzk5MjA1bW0iCiAgIGhlaWdodD0iMy4wOTk5MDQ1bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjYzOTkyMDUgMy4wOTk5MDQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDExMjA2QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI1LjYiCiAgICAgaW5rc2NhcGU6Y3g9Ii0zNS44NTg3OTEiCiAgICAgaW5rc2NhcGU6Y3k9IjM5Ljk1NjQzMyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxMyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4zNTkzNCwtMTIwLjYzNjIyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEzMC45OTQwNyw5Ni40ODYxMTkpIgogICAgICAgaWQ9ImcyNzI2Ij4KICAgICAgPHBhdGgKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMTAzIgogICAgICAgICBkPSJtIDEwOS4zMjk3MywyNyAtMC4xLC0yLjQgaCAtMC41NSBsIC0wLjEsMi40IHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTAwMDAwMDI7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMDk1IgogICAgICAgICBkPSJtIDEwOC40NTQ3MywyNi45NSBoIDEiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuMjUiCiAgICAgICAgIGN5PSIyNi45NTAwMDEiCiAgICAgICAgIGN4PSIxMDguOTU0NzIiCiAgICAgICAgIGlkPSJwYXRoMzA5MyIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMzIxIgogICAgICAgICBkPSJtIDEwOS40NTc3MywyNC42NjUwNDggMC43Nzk0MiwtMC40NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC43MDAwMDEiCiAgICAgICAgIHg9IjEwOC43Nzk3MyIKICAgICAgICAgaGVpZ2h0PSIwLjI1IgogICAgICAgICB3aWR0aD0iMC4zNDk5OTk5OSIKICAgICAgICAgaWQ9InJlY3QxMzI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6ZmlsbCBtYXJrZXJzIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS40NTcyMywyNS4wMTUwNDggMC43Nzk0MiwwLjQ1IgogICAgICAgICBpZD0icGF0aDEzMjciCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMDguNDUxNjQsMjQuNjY1MDQ4IC0wLjc3OTQxLC0wLjQ1IgogICAgICAgICBpZD0icGF0aDEzMzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTMzMyIKICAgICAgICAgZD0ibSAxMDguNDUyMTQsMjUuMDE1MDQ4IC0wLjc3OTQxLDAuNDUiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" name="name" type="QString"/>
            <Option value="0,-1.25" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="2.63992" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMi42Mzk5MjA1bW0iCiAgIGhlaWdodD0iMy4wOTk5MDQ1bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjYzOTkyMDUgMy4wOTk5MDQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDExMjA2QS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI1LjYiCiAgICAgaW5rc2NhcGU6Y3g9Ii0zNS44NTg3OTEiCiAgICAgaW5rc2NhcGU6Y3k9IjM5Ljk1NjQzMyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxMyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4zNTkzNCwtMTIwLjYzNjIyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEzMC45OTQwNyw5Ni40ODYxMTkpIgogICAgICAgaWQ9ImcyNzI2Ij4KICAgICAgPHBhdGgKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMTAzIgogICAgICAgICBkPSJtIDEwOS4zMjk3MywyNyAtMC4xLC0yLjQgaCAtMC41NSBsIC0wLjEsMi40IHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTAwMDAwMDI7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMDk1IgogICAgICAgICBkPSJtIDEwOC40NTQ3MywyNi45NSBoIDEiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuMjUiCiAgICAgICAgIGN5PSIyNi45NTAwMDEiCiAgICAgICAgIGN4PSIxMDguOTU0NzIiCiAgICAgICAgIGlkPSJwYXRoMzA5MyIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMzIxIgogICAgICAgICBkPSJtIDEwOS40NTc3MywyNC42NjUwNDggMC43Nzk0MiwtMC40NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC43MDAwMDEiCiAgICAgICAgIHg9IjEwOC43Nzk3MyIKICAgICAgICAgaGVpZ2h0PSIwLjI1IgogICAgICAgICB3aWR0aD0iMC4zNDk5OTk5OSIKICAgICAgICAgaWQ9InJlY3QxMzI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6ZmlsbCBtYXJrZXJzIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS40NTcyMywyNS4wMTUwNDggMC43Nzk0MiwwLjQ1IgogICAgICAgICBpZD0icGF0aDEzMjciCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMDguNDUxNjQsMjQuNjY1MDQ4IC0wLjc3OTQxLC0wLjQ1IgogICAgICAgICBpZD0icGF0aDEzMzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTMzMyIKICAgICAgICAgZD0ibSAxMDguNDUyMTQsMjUuMDE1MDQ4IC0wLjc3OTQxLDAuNDUiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" k="name"/>
          <prop v="0,-1.25" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="2.63992" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="7" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4ybW0iCiAgIGhlaWdodD0iMC44MDAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMS4yIDAuOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDA0MyIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQyOUEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzNDAzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMC45ODk5NDk0OSIKICAgICBpbmtzY2FwZTpjeD0iMTUyLjI5NTc4IgogICAgIGlua3NjYXBlOmN5PSI5Ny4yMDY2MjkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxMDU5IgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9Ijc3NSIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iODYxIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIyMTYiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg3LjgzODYxOCwtMTc4LjIxMDcyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1MywtOTYuNzAxODA2KSIKICAgICAgIGlkPSJnMTM0MjIiPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIgogICAgICAgICBkPSJtIDEwOS44MjgzNywtMjc1LjcxMjUyIGEgMC42MDAwMDAwMiwwLjc5OTk5OTk1IDAgMCAxIC0wLjMsMC42OTI4MiAwLjYwMDAwMDAyLDAuNzk5OTk5OTUgMCAwIDEgLTAuNiwwIDAuNjAwMDAwMDIsMC43OTk5OTk5NSAwIDAgMSAtMC4zLC0wLjY5MjgyIGwgMC42LDAgeiIKICAgICAgICAgc29kaXBvZGk6ZW5kPSIzLjE0MTU5MjciCiAgICAgICAgIHNvZGlwb2RpOnN0YXJ0PSIwIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC43OTk5OTk5NSIKICAgICAgICAgc29kaXBvZGk6cng9IjAuNjAwMDAwMDIiCiAgICAgICAgIHNvZGlwb2RpOmN5PSItMjc1LjcxMjUyIgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjIyODM3IgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJhcmMiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9ImNpcmNsZTEzNDAyIiAvPgogICAgICA8cGF0aAogICAgICAgICBpZD0icGF0aDEzNDE2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9ImFyYyIKICAgICAgICAgc29kaXBvZGk6Y3g9IjEwOS4yMjgzNyIKICAgICAgICAgc29kaXBvZGk6Y3k9Ii0yNzUuNzEyNTIiCiAgICAgICAgIHNvZGlwb2RpOnJ4PSIwLjMwMDAwMDAxIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC41OTk5OTk5NiIKICAgICAgICAgc29kaXBvZGk6c3RhcnQ9IjAiCiAgICAgICAgIHNvZGlwb2RpOmVuZD0iMy4xNDE1OTI3IgogICAgICAgICBkPSJtIDEwOS41MjgzNywtMjc1LjcxMjUyIGEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjE1LDAuNTE5NjEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjMsMCAwLjMwMDAwMDAxLDAuNTk5OTk5OTYgMCAwIDEgLTAuMTUsLTAuNTE5NjEgbCAwLjMsMCB6IgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.2" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4ybW0iCiAgIGhlaWdodD0iMC44MDAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMS4yIDAuOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDA0MyIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMC45Mi4yIDVjM2U4MGQsIDIwMTctMDgtMDYiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAyMDQyOUEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzNDAzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMC45ODk5NDk0OSIKICAgICBpbmtzY2FwZTpjeD0iMTUyLjI5NTc4IgogICAgIGlua3NjYXBlOmN5PSI5Ny4yMDY2MjkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxMDU5IgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9Ijc3NSIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iODYxIgogICAgIGlua3NjYXBlOndpbmRvdy15PSIyMTYiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg3LjgzODYxOCwtMTc4LjIxMDcyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1MywtOTYuNzAxODA2KSIKICAgICAgIGlkPSJnMTM0MjIiPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIgogICAgICAgICBkPSJtIDEwOS44MjgzNywtMjc1LjcxMjUyIGEgMC42MDAwMDAwMiwwLjc5OTk5OTk1IDAgMCAxIC0wLjMsMC42OTI4MiAwLjYwMDAwMDAyLDAuNzk5OTk5OTUgMCAwIDEgLTAuNiwwIDAuNjAwMDAwMDIsMC43OTk5OTk5NSAwIDAgMSAtMC4zLC0wLjY5MjgyIGwgMC42LDAgeiIKICAgICAgICAgc29kaXBvZGk6ZW5kPSIzLjE0MTU5MjciCiAgICAgICAgIHNvZGlwb2RpOnN0YXJ0PSIwIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC43OTk5OTk5NSIKICAgICAgICAgc29kaXBvZGk6cng9IjAuNjAwMDAwMDIiCiAgICAgICAgIHNvZGlwb2RpOmN5PSItMjc1LjcxMjUyIgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjIyODM3IgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJhcmMiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMDAwMDAwO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9ImNpcmNsZTEzNDAyIiAvPgogICAgICA8cGF0aAogICAgICAgICBpZD0icGF0aDEzNDE2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9ImFyYyIKICAgICAgICAgc29kaXBvZGk6Y3g9IjEwOS4yMjgzNyIKICAgICAgICAgc29kaXBvZGk6Y3k9Ii0yNzUuNzEyNTIiCiAgICAgICAgIHNvZGlwb2RpOnJ4PSIwLjMwMDAwMDAxIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC41OTk5OTk5NiIKICAgICAgICAgc29kaXBvZGk6c3RhcnQ9IjAiCiAgICAgICAgIHNvZGlwb2RpOmVuZD0iMy4xNDE1OTI3IgogICAgICAgICBkPSJtIDEwOS41MjgzNywtMjc1LjcxMjUyIGEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjE1LDAuNTE5NjEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjMsMCAwLjMwMDAwMDAxLDAuNTk5OTk5OTYgMCAwIDEgLTAuMTUsLTAuNTE5NjEgbCAwLjMsMCB6IgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1.2" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="8" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SvgMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="35,35,35,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMC44MDAwMDAwMW1tIgogICBoZWlnaHQ9IjEuNjAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMC43OTk5OTk5OSAxLjYwMDAwMDEiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzQwNDMiCiAgIGlua3NjYXBlOnZlcnNpb249IjAuOTIuMiA1YzNlODBkLCAyMDE3LTA4LTA2IgogICBzb2RpcG9kaTpkb2NuYW1lPSJQMjA0MjNBLnN2ZyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjEuNCIKICAgICBpbmtzY2FwZTpjeD0iNTQuNzcxNzU5IgogICAgIGlua3NjYXBlOmN5PSItNjUuNjAzMTAxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04OC4zNDUzNjYsLTE3Ny41ODY5OCkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTQsNTMuMjcwMTEpIgogICAgICAgaWQ9ImczMjg5Ij4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InJlY3QzMjIzIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICB5PSIxMjUuNDE2ODciIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS41MzUxMiwxMjQuMzE2ODcgdiAxLjYiCiAgICAgICAgIGlkPSJwYXRoMzIyNSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMjc2IgogICAgICAgICBkPSJtIDEwOS4xMzUxMiwxMjQuNjY1MyBoIDAuOCIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" name="name" type="QString"/>
            <Option value="0,-0.5" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="0.2" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="0.8" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="35,35,35,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMC44MDAwMDAwMW1tIgogICBoZWlnaHQ9IjEuNjAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMC43OTk5OTk5OSAxLjYwMDAwMDEiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzQwNDMiCiAgIGlua3NjYXBlOnZlcnNpb249IjAuOTIuMiA1YzNlODBkLCAyMDE3LTA4LTA2IgogICBzb2RpcG9kaTpkb2NuYW1lPSJQMjA0MjNBLnN2ZyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjEuNCIKICAgICBpbmtzY2FwZTpjeD0iNTQuNzcxNzU5IgogICAgIGlua3NjYXBlOmN5PSItNjUuNjAzMTAxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA1OSIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSI3NzUiCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ijg2MSIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMjE2IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04OC4zNDUzNjYsLTE3Ny41ODY5OCkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTQsNTMuMjcwMTEpIgogICAgICAgaWQ9ImczMjg5Ij4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMwMDAwMDA7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InJlY3QzMjIzIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICB5PSIxMjUuNDE2ODciIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS41MzUxMiwxMjQuMzE2ODcgdiAxLjYiCiAgICAgICAgIGlkPSJwYXRoMzIyNSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMjc2IgogICAgICAgICBkPSJtIDEwOS4xMzUxMiwxMjQuNjY1MyBoIDAuOCIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" k="name"/>
          <prop v="0,-0.5" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.8" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="9" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="255,255,255,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="square" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="149,80,88,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.15" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="0.8" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="255,255,255,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="149,80,88,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.15" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.8" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;simb_rot&quot;" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{b9cf0f3d-2d69-4f01-972e-8e88518e2536}">
      <rule description="Sede operacional de fazenda" key="{d66dae3c-eb33-4b10-87d1-a5b26861bbb0}" filter="&quot;tipo&quot; = 1212 and &quot;visivel&quot; is true">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" capitalization="0" textOrientation="horizontal" fontSize="6" fontStrikeout="0" fontUnderline="0" fontItalic="0" fieldName="texto_edicao" isExpression="0" useSubstitutions="0" fontSizeUnit="Point" multilineHeight="0.8" fontWordSpacing="0" namedStyle="Condensed Light" fontWeight="25" fontFamily="Noto Sans" allowHtml="0" textOpacity="1" fontKerning="1" blendMode="0" textColor="0,0,0,255">
            <text-buffer bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="128" bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskEnabled="1" maskType="0" maskSize="0.2"/>
            <background shapeSizeX="0" shapeType="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeSizeUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeDraw="0" shapeRadiiUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeRotation="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeType="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeRadiiY="0" shapeJoinStyle="64">
              <symbol clip_to_extent="1" name="markerSymbol" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="231,113,72,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="231,113,72,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowScale="100" shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetUnit="MM" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOpacity="0.7" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" leftDirectionSymbol="&lt;" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" rightDirectionSymbol=">" multilineAlign="0" reverseDirectionSymbol="0" decimals="3" wrapChar="|" autoWrapLength="0"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="-0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" centroidWhole="0" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" offsetType="0" dist="0.7" preserveRotation="1" geometryGeneratorEnabled="1" lineAnchorType="0" layerType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" priority="5" maxCurvedCharAngleIn="25" overrunDistanceUnit="MM" rotationAngle="0" overrunDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" placement="6" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" offsetUnits="MM" repeatDistance="0" distUnits="MM" quadOffset="2" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" placementFlags="10"/>
          <rendering mergeLines="0" minFeatureSize="0" obstacle="1" labelPerPart="0" upsidedownLabels="0" scaleMin="0" fontMinPixelSize="3" maxNumLabels="2000" scaleVisibility="0" limitNumLabels="0" zIndex="0" obstacleType="1" fontMaxPixelSize="10000" obstacleFactor="1" fontLimitPixelSize="0" displayAll="1" drawLabels="1" scaleMax="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="justificativa_txt" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_x" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_y" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule description="Curral" key="{72de67e5-d551-434b-bad4-f19ade016ada}" filter="&quot;tipo&quot; = 1218  and &quot;visivel&quot; is true">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" capitalization="0" textOrientation="horizontal" fontSize="6" fontStrikeout="0" fontUnderline="0" fontItalic="0" fieldName="texto_edicao" isExpression="0" useSubstitutions="0" fontSizeUnit="Point" multilineHeight="0.8" fontWordSpacing="0" namedStyle="Condensed" fontWeight="50" fontFamily="Noto Sans" allowHtml="0" textOpacity="1" fontKerning="1" blendMode="0" textColor="0,0,0,255">
            <text-buffer bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="128" bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskEnabled="1" maskType="0" maskSize="0.2"/>
            <background shapeSizeX="0" shapeType="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeSizeUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeDraw="0" shapeRadiiUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeRotation="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeType="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeRadiiY="0" shapeJoinStyle="64">
              <symbol clip_to_extent="1" name="markerSymbol" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="231,113,72,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="231,113,72,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowScale="100" shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetUnit="MM" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOpacity="0.7" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" leftDirectionSymbol="&lt;" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" rightDirectionSymbol=">" multilineAlign="0" reverseDirectionSymbol="0" decimals="3" wrapChar="|" autoWrapLength="0"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="-0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" centroidWhole="0" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" offsetType="0" dist="0.6" preserveRotation="1" geometryGeneratorEnabled="1" lineAnchorType="0" layerType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" priority="5" maxCurvedCharAngleIn="25" overrunDistanceUnit="MM" rotationAngle="0" overrunDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" placement="6" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" offsetUnits="MM" repeatDistance="0" distUnits="MM" quadOffset="2" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" placementFlags="10"/>
          <rendering mergeLines="0" minFeatureSize="0" obstacle="1" labelPerPart="0" upsidedownLabels="0" scaleMin="0" fontMinPixelSize="3" maxNumLabels="2000" scaleVisibility="0" limitNumLabels="0" zIndex="0" obstacleType="1" fontMaxPixelSize="10000" obstacleFactor="1" fontLimitPixelSize="0" displayAll="1" drawLabels="1" scaleMax="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="justificativa_txt" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_x" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_y" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule description="Edificação" key="{1fb6d046-d367-48b0-b944-8a938fb1cc9a}" filter="&quot;tipo&quot; not in (1212,1218) and &quot;visivel&quot; is true">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" capitalization="0" textOrientation="horizontal" fontSize="6" fontStrikeout="0" fontUnderline="0" fontItalic="0" fieldName="texto_edicao" isExpression="0" useSubstitutions="0" fontSizeUnit="Point" multilineHeight="0.8" fontWordSpacing="0" namedStyle="Condensed" fontWeight="50" fontFamily="Noto Sans" allowHtml="0" textOpacity="1" fontKerning="1" blendMode="0" textColor="0,0,0,255">
            <text-buffer bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="128" bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskEnabled="1" maskType="0" maskSize="0.2"/>
            <background shapeSizeX="0" shapeType="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeSizeUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeDraw="0" shapeRadiiUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeRotation="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeType="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeRadiiY="0" shapeJoinStyle="64">
              <symbol clip_to_extent="1" name="markerSymbol" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="231,113,72,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="231,113,72,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowScale="100" shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetUnit="MM" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOpacity="0.7" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" leftDirectionSymbol="&lt;" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" rightDirectionSymbol=">" multilineAlign="0" reverseDirectionSymbol="0" decimals="3" wrapChar="|" autoWrapLength="0"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="-0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" centroidWhole="0" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" offsetType="0" dist="0.6" preserveRotation="1" geometryGeneratorEnabled="1" lineAnchorType="0" layerType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" priority="5" maxCurvedCharAngleIn="25" overrunDistanceUnit="MM" rotationAngle="0" overrunDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" placement="6" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" offsetUnits="MM" repeatDistance="0" distUnits="MM" quadOffset="2" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" placementFlags="10"/>
          <rendering mergeLines="0" minFeatureSize="0" obstacle="1" labelPerPart="0" upsidedownLabels="0" scaleMin="0" fontMinPixelSize="3" maxNumLabels="2000" scaleVisibility="0" limitNumLabels="0" zIndex="0" obstacleType="1" fontMaxPixelSize="10000" obstacleFactor="1" fontLimitPixelSize="0" displayAll="1" drawLabels="1" scaleMax="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="CalloutDraw" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="leader_line" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="justificativa_txt" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_x" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_y" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="1" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0,0,0,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.1&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;0,0,0,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.1&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"nome"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeType="MM" rotationOffset="270" barWidth="5" spacingUnitScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" scaleDependency="Area" minimumSize="0" height="15" spacingUnit="MM" enabled="0" penWidth="0" scaleBasedVisibility="0" penColor="#000000" backgroundColor="#ffffff" opacity="1" maxScaleDenominator="1e+08" spacing="5" penAlpha="255" direction="0" showAxis="1" backgroundAlpha="255" labelPlacementMethod="XHeight" width="15" minScaleDenominator="0" lineSizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" label="" field=""/>
      <axisSymbol>
        <symbol clip_to_extent="1" name="" force_rhr="0" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" locked="0" pass="0" enabled="1">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="35,35,35,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.26" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" linePlacementFlags="18" priority="0" showAll="1" placement="0" dist="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="tipo" configurationFlags="None">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
              <Option value="304" name="Abast - Administrativa (304)" type="QString"/>
              <Option value="301" name="Abast - Edificação de captação de água (301)" type="QString"/>
              <Option value="303" name="Abast - Edificação de recalque de água (303)" type="QString"/>
              <Option value="302" name="Abast - Edificação de tratamento de água (302)" type="QString"/>
              <Option value="395" name="Abast - Mista (395)" type="QString"/>
              <Option value="398" name="Abast - Outros (398)" type="QString"/>
              <Option value="2431" name="Aero - Administração (2431)" type="QString"/>
              <Option value="2429" name="Aero - Hangar (2429)" type="QString"/>
              <Option value="2498" name="Aero - Outros (2498)" type="QString"/>
              <Option value="2430" name="Aero - Serviço de Combate à incendios (SCI) (2430)" type="QString"/>
              <Option value="2427" name="Aero - Terminal de cargas (2427)" type="QString"/>
              <Option value="2426" name="Aero - Terminal de passageiros (2426)" type="QString"/>
              <Option value="2428" name="Aero - Torre de controle (2428)" type="QString"/>
              <Option value="1214" name="Agro - Apiário (1214)" type="QString"/>
              <Option value="1213" name="Agro - Aviário (1213)" type="QString"/>
              <Option value="1218" name="Agro - Curral (1218)" type="QString"/>
              <Option value="1298" name="Agro - Outros (1298)" type="QString"/>
              <Option value="1217" name="Agro - Pocilga (1217)" type="QString"/>
              <Option value="1212" name="Agro - Sede operacional de fazenda (1212)" type="QString"/>
              <Option value="1215" name="Agro - Viveiro de plantas (1215)" type="QString"/>
              <Option value="1216" name="Agro - Viveiro para aquicultura (1216)" type="QString"/>
              <Option value="105" name="Com - Administrativo (105)" type="QString"/>
              <Option value="102" name="Com - Central de comutação e transmissão (102)" type="QString"/>
              <Option value="101" name="Com - Centro de operações de comunicação (101)" type="QString"/>
              <Option value="104" name="Com - Estação repetidora (104)" type="QString"/>
              <Option value="103" name="Com - Estação rádio-base (103)" type="QString"/>
              <Option value="908" name="Comerc - Banco (908)" type="QString"/>
              <Option value="903" name="Comerc - Centro comercial (903)" type="QString"/>
              <Option value="905" name="Comerc - Centro de convenções (905)" type="QString"/>
              <Option value="909" name="Comerc - Centro de exposições (909)" type="QString"/>
              <Option value="907" name="Comerc - Hotel / motel / pousada (907)" type="QString"/>
              <Option value="904" name="Comerc - Mercado (904)" type="QString"/>
              <Option value="910" name="Comerc - Mercado público (910)" type="QString"/>
              <Option value="998" name="Comerc - Outros (998)" type="QString"/>
              <Option value="2901" name="Dip – Consulado (2901)" type="QString"/>
              <Option value="2902" name="Dip – Embaixada (2902)" type="QString"/>
              <Option value="2" name="Edificação abandonada (2)" type="QString"/>
              <Option value="201" name="Edificação de energia (201)" type="QString"/>
              <Option value="1501" name="Edificação de medição de fenômenos (1501)" type="QString"/>
              <Option value="1" name="Edificação destruída (1)" type="QString"/>
              <Option value="0" name="Edificação genérica (0)" type="QString"/>
              <Option value="517" name="Ens - Edificação de educação infantil - pré-escola (517)" type="QString"/>
              <Option value="516" name="Ens - Edificação de educação infantil – creche (516)" type="QString"/>
              <Option value="523" name="Ens - Edificação de educação professional de nível técnico (523)" type="QString"/>
              <Option value="524" name="Ens - Edificação de educação profissional de nível tecnológico (524)" type="QString"/>
              <Option value="520" name="Ens - Edificação de educação superior – Graduação (520)" type="QString"/>
              <Option value="521" name="Ens - Edificação de educação superior – graduação e pós-graduação (521)" type="QString"/>
              <Option value="522" name="Ens - Edificação de educação superior – pós-graduação e extensão (522)" type="QString"/>
              <Option value="518" name="Ens - Edificação de ensino fundamental (518)" type="QString"/>
              <Option value="519" name="Ens - Edificação de ensino médio (519)" type="QString"/>
              <Option value="525" name="Ens - Outras atividades de ensino (525)" type="QString"/>
              <Option value="1603" name="Estação Agroclimatológica (1603)" type="QString"/>
              <Option value="1602" name="Estação Climatológica Auxiliar (1602)" type="QString"/>
              <Option value="1601" name="Estação Climatológica Principal (1601)" type="QString"/>
              <Option value="1606" name="Estação Evaporimétrica (1606)" type="QString"/>
              <Option value="1605" name="Estação Eólica (1605)" type="QString"/>
              <Option value="1610" name="Estação Fluviométrica (1610)" type="QString"/>
              <Option value="1611" name="Estação Maregráfica (1611)" type="QString"/>
              <Option value="1604" name="Estação Pluviométrica (1604)" type="QString"/>
              <Option value="1607" name="Estação Solarimétrica (1607)" type="QString"/>
              <Option value="1612" name="Estação de Marés Terrestre - Crosta (1612)" type="QString"/>
              <Option value="1608" name="Estação de Radar Metereológico (1608)" type="QString"/>
              <Option value="1609" name="Estação de Radiossonda (1609)" type="QString"/>
              <Option value="1110" name="Ext Min - Extração de carvão mineral (1110)" type="QString"/>
              <Option value="1113" name="Ext Min - Extração de minerais metálicos (1113)" type="QString"/>
              <Option value="1114" name="Ext Min - Extração de minerais não-metálicos (1114)" type="QString"/>
              <Option value="1111" name="Ext Min - Extração de petróleo e serviços relacionados (1111)" type="QString"/>
              <Option value="1198" name="Ext Min - Outros (1198)" type="QString"/>
              <Option value="2804" name="Farol (2804)" type="QString"/>
              <Option value="2321" name="Ferrov - Administração (2321)" type="QString"/>
              <Option value="2316" name="Ferrov - Estação ferroviária de passageiros (2316)" type="QString"/>
              <Option value="2317" name="Ferrov - Estação metroviária (2317)" type="QString"/>
              <Option value="2320" name="Ferrov - Oficina de manutenção (2320)" type="QString"/>
              <Option value="2398" name="Ferrov - Outros (2398)" type="QString"/>
              <Option value="2318" name="Ferrov - Terminal ferroviário de cargas (2318)" type="QString"/>
              <Option value="2319" name="Ferrov - Terminal ferroviário de passageiros e cargas (2319)" type="QString"/>
              <Option value="1401" name="Habitacão indigena (1401)" type="QString"/>
              <Option value="1018" name="Ind - Confecção de artigos de vestuário e acessórios (1018)" type="QString"/>
              <Option value="1030" name="Ind - Fabriação de máquinas de escritório e equipamentos de informática (1030)" type="QString"/>
              <Option value="1015" name="Ind - Fabricação alimentícia e bebidas (1015)" type="QString"/>
              <Option value="1025" name="Ind - Fabricação de artigos de borracha e material plástico (1025)" type="QString"/>
              <Option value="1021" name="Ind - Fabricação de celulose, papel e produtos de papel (1021)" type="QString"/>
              <Option value="1023" name="Ind - Fabricação de coque, refino de petróleo, elaboração de combustíveis nucleares e produção de álcool (1023)" type="QString"/>
              <Option value="1033" name="Ind - Fabricação de equipamentos de instrumentação médico-hospitalares, instrumentos de precisão e ópticos, automação industrial, cronômetros e relógios (1033)" type="QString"/>
              <Option value="1032" name="Ind - Fabricação de material eletrônico, de aparelhos e equipamentos de comunicações (1032)" type="QString"/>
              <Option value="1029" name="Ind - Fabricação de máquinas e equipamentos (1029)" type="QString"/>
              <Option value="1031" name="Ind - Fabricação de máquinas, aparelhos e materiais elétricos (1031)" type="QString"/>
              <Option value="1036" name="Ind - Fabricação de móveis e indústrias diversas (1036)" type="QString"/>
              <Option value="1035" name="Ind - Fabricação de outros equipamentos de transporte (1035)" type="QString"/>
              <Option value="1020" name="Ind - Fabricação de produtos de madeira e celulose (1020)" type="QString"/>
              <Option value="1028" name="Ind - Fabricação de produtos de metal (1028)" type="QString"/>
              <Option value="1026" name="Ind - Fabricação de produtos de minerais não-metálicos (1026)" type="QString"/>
              <Option value="1016" name="Ind - Fabricação de produtos do fumo (1016)" type="QString"/>
              <Option value="1024" name="Ind - Fabricação de produtos químicos (1024)" type="QString"/>
              <Option value="1017" name="Ind - Fabricação de produtos têxteis (1017)" type="QString"/>
              <Option value="1034" name="Ind - Fabricação e montagem de veículos automotores, reboques e carrocerias (1034)" type="QString"/>
              <Option value="1022" name="Ind - Industria de edição, impressão e reprodução de gravações (1022)" type="QString"/>
              <Option value="1045" name="Ind - Indústria de construção (1045)" type="QString"/>
              <Option value="1027" name="Ind - Indústria de metalurgia básica (1027)" type="QString"/>
              <Option value="1037" name="Ind - Indústria reciclagem (1037)" type="QString"/>
              <Option value="1098" name="Ind - Outros (1098)" type="QString"/>
              <Option value="1019" name="Ind - Preparação de couros, artefatos de couro, artigos de viagem e calçados (1019)" type="QString"/>
              <Option value="805" name="Laz - Anfiteatro (805)" type="QString"/>
              <Option value="809" name="Laz - Arquivo (809)" type="QString"/>
              <Option value="810" name="Laz - Biblioteca (810)" type="QString"/>
              <Option value="807" name="Laz - Centro cultural (807)" type="QString"/>
              <Option value="806" name="Laz - Cinema (806)" type="QString"/>
              <Option value="811" name="Laz - Concha acústica (811)" type="QString"/>
              <Option value="812" name="Laz - Conservatório (812)" type="QString"/>
              <Option value="813" name="Laz - Coreto ou tribuna (813)" type="QString"/>
              <Option value="814" name="Laz - Equipamentos culturais diversos (814)" type="QString"/>
              <Option value="815" name="Laz - Espaço de eventos e ou cultural (815)" type="QString"/>
              <Option value="801" name="Laz - Estádio (801)" type="QString"/>
              <Option value="802" name="Laz - Ginásio (802)" type="QString"/>
              <Option value="803" name="Laz - Museu (803)" type="QString"/>
              <Option value="898" name="Laz - Outros (898)" type="QString"/>
              <Option value="808" name="Laz - Plataforma de pesca (808)" type="QString"/>
              <Option value="804" name="Laz - Teatro (804)" type="QString"/>
              <Option value="2501" name="Port - Edificação portuária (2501)" type="QString"/>
              <Option value="1911" name="Posto Fisc - Fiscalização (1911)" type="QString"/>
              <Option value="1995" name="Posto Fisc - Misto (1995)" type="QString"/>
              <Option value="1912" name="Posto Fisc - Posto de pesagem (1912)" type="QString"/>
              <Option value="1910" name="Posto Fisc - Tributação (1910)" type="QString"/>
              <Option value="2601" name="Posto de combustivel (2601)" type="QString"/>
              <Option value="1309" name="Pub Civ - Assembléia legislativa (1309)" type="QString"/>
              <Option value="1314" name="Pub Civ - Autarquia (1314)" type="QString"/>
              <Option value="1323" name="Pub Civ - Bombeiros (1323)" type="QString"/>
              <Option value="1303" name="Pub Civ - Cartorial (1303)" type="QString"/>
              <Option value="1308" name="Pub Civ - Câmara municipal (1308)" type="QString"/>
              <Option value="1305" name="Pub Civ - Eleitoral (1305)" type="QString"/>
              <Option value="1312" name="Pub Civ - Fundação (1312)" type="QString"/>
              <Option value="1310" name="Pub Civ - Fórum (1310)" type="QString"/>
              <Option value="1304" name="Pub Civ - Gestão pública (1304)" type="QString"/>
              <Option value="1398" name="Pub Civ - Outros (1398)" type="QString"/>
              <Option value="1322" name="Pub Civ - Prefeitura (1322)" type="QString"/>
              <Option value="1313" name="Pub Civ - Procuradoria (1313)" type="QString"/>
              <Option value="1306" name="Pub Civ - Produção ou pequisa pública (1306)" type="QString"/>
              <Option value="1311" name="Pub Civ - Secretaria (1311)" type="QString"/>
              <Option value="1307" name="Pub Civ - Seguridade social (1307)" type="QString"/>
              <Option value="1712" name="Pub Mil - Aquartelamento (1712)" type="QString"/>
              <Option value="1718" name="Pub Mil - Delegacia de serviço militar (1718)" type="QString"/>
              <Option value="1717" name="Pub Mil - Hotel de trânsito (1717)" type="QString"/>
              <Option value="1798" name="Pub Mil - Outros (1798)" type="QString"/>
              <Option value="610" name="Rel - Administração (610)" type="QString"/>
              <Option value="608" name="Rel - Capela Mortuária (608)" type="QString"/>
              <Option value="603" name="Rel - Centro religioso (603)" type="QString"/>
              <Option value="605" name="Rel - Convento (605)" type="QString"/>
              <Option value="601" name="Rel - Igreja (601)" type="QString"/>
              <Option value="606" name="Rel - Mesquita (606)" type="QString"/>
              <Option value="604" name="Rel - Mosteiro (604)" type="QString"/>
              <Option value="698" name="Rel - Outros (698)" type="QString"/>
              <Option value="607" name="Rel - Sinagoga (607)" type="QString"/>
              <Option value="602" name="Rel - Templo (602)" type="QString"/>
              <Option value="609" name="Rel - Terreiro (609)" type="QString"/>
              <Option value="2298" name="Rod - Outros (2298)" type="QString"/>
              <Option value="2210" name="Rod - Parada interestadual (2210)" type="QString"/>
              <Option value="2214" name="Rod - Posto de fiscalização rodoviária (2214)" type="QString"/>
              <Option value="2213" name="Rod - Posto de pedágio (2213)" type="QString"/>
              <Option value="2208" name="Rod - Terminal interestadual (2208)" type="QString"/>
              <Option value="2209" name="Rod - Terminal urbano (2209)" type="QString"/>
              <Option value="408" name="Saneam - Administração (408)" type="QString"/>
              <Option value="403" name="Saneam - Edificação de recalque de resíduos (403)" type="QString"/>
              <Option value="405" name="Saneam - Edificação de tratamento de esgoto (405)" type="QString"/>
              <Option value="407" name="Saneam - Incinerador de resíduos (407)" type="QString"/>
              <Option value="498" name="Saneam - Outros (498)" type="QString"/>
              <Option value="406" name="Saneam - Usina de reciclagem (406)" type="QString"/>
              <Option value="2027" name="Sau - Atendimento a urgência e emergências (pronto socorro) (2027)" type="QString"/>
              <Option value="2025" name="Sau - Atendimento hospitalar (2025)" type="QString"/>
              <Option value="2026" name="Sau - Atendimento hospitalar especializado (2026)" type="QString"/>
              <Option value="2028" name="Sau - Atenção ambulatorial (posto e centro de saúde) (2028)" type="QString"/>
              <Option value="2030" name="Sau - Outras atividades relacionadas com a atenção à saúde (instituto de pesquisa) (2030)" type="QString"/>
              <Option value="2029" name="Sau - Serviços de complementação diagnóstica ou terapêutica (2029)" type="QString"/>
              <Option value="2031" name="Sau - Serviços veterinários (2031)" type="QString"/>
              <Option value="3006" name="Seg - Prisional (3006)" type="QString"/>
              <Option value="3001" name="Seg – Delegacia de polícia civil (3001)" type="QString"/>
              <Option value="3098" name="Seg – Outras polícias (3098)" type="QString"/>
              <Option value="3005" name="Seg – Polícia militar (3005)" type="QString"/>
              <Option value="3004" name="Seg – Posto de polícia rodoviária federal (3004)" type="QString"/>
              <Option value="3003" name="Seg – Posto guarda municipal (3003)" type="QString"/>
              <Option value="3002" name="Seg – Posto policia militar (3002)" type="QString"/>
              <Option value="2101" name="Ssoc – Serviço Social (2101)" type="QString"/>
              <Option value="709" name="Tur - Cruzeiro (709)" type="QString"/>
              <Option value="710" name="Tur - Estátua (710)" type="QString"/>
              <Option value="711" name="Tur - Mirante (711)" type="QString"/>
              <Option value="712" name="Tur - Monumento (712)" type="QString"/>
              <Option value="798" name="Tur - Outros (798)" type="QString"/>
              <Option value="713" name="Tur - Panteão (713)" type="QString"/>
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
              <Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
              <Option value="1" name="Alvenaria (1)" type="QString"/>
              <Option value="2" name="Concreto (2)" type="QString"/>
              <Option value="0" name="Desconhecido (0)" type="QString"/>
              <Option value="5" name="Madeira (5)" type="QString"/>
              <Option value="3" name="Metal (3)" type="QString"/>
              <Option value="97" name="Não aplicável (97)" type="QString"/>
              <Option value="98" name="Outros (98)" type="QString"/>
              <Option value="4" name="Rocha (4)" type="QString"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="observacao" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
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
            <Option value="" name="CheckedState" type="QString"/>
            <Option value="0" name="TextDisplayMethod" type="int"/>
            <Option value="" name="UncheckedState" type="QString"/>
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
    <field name="leader_line" configurationFlags="None">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option value="" name="CheckedState" type="QString"/>
            <Option value="0" name="TextDisplayMethod" type="int"/>
            <Option value="" name="UncheckedState" type="QString"/>
          </Option>
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
    <alias name="" index="20" field="leader_line"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="nome"/>
    <default applyOnUpdate="0" expression="" field="tipo"/>
    <default applyOnUpdate="0" expression="" field="material_construcao"/>
    <default applyOnUpdate="0" expression="" field="observacao"/>
    <default applyOnUpdate="0" expression="" field="data_modificacao"/>
    <default applyOnUpdate="0" expression="" field="controle_uuid"/>
    <default applyOnUpdate="0" expression="" field="usuario_criacao"/>
    <default applyOnUpdate="0" expression="" field="usuario_atualizacao"/>
    <default applyOnUpdate="0" expression="" field="insumo"/>
    <default applyOnUpdate="0" expression="" field="data_insumo"/>
    <default applyOnUpdate="0" expression="" field="visivel"/>
    <default applyOnUpdate="0" expression="" field="texto_edicao"/>
    <default applyOnUpdate="0" expression="" field="carta_mini"/>
    <default applyOnUpdate="0" expression="" field="label_x"/>
    <default applyOnUpdate="0" expression="" field="label_y"/>
    <default applyOnUpdate="0" expression="" field="justificativa_txt"/>
    <default applyOnUpdate="0" expression="" field="simb_x"/>
    <default applyOnUpdate="0" expression="" field="simb_y"/>
    <default applyOnUpdate="0" expression="" field="simb_rot"/>
    <default applyOnUpdate="0" expression="" field="leader_line"/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1" field="id"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="nome"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="tipo"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="material_construcao"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="observacao"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="data_modificacao"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="controle_uuid"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="usuario_criacao"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="usuario_atualizacao"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="insumo"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="data_insumo"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="visivel"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="texto_edicao"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="carta_mini"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="label_x"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="label_y"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="justificativa_txt"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="simb_x"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="simb_y"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="simb_rot"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="leader_line"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id"/>
    <constraint desc="" exp="" field="nome"/>
    <constraint desc="" exp="" field="tipo"/>
    <constraint desc="" exp="" field="material_construcao"/>
    <constraint desc="" exp="" field="observacao"/>
    <constraint desc="" exp="" field="data_modificacao"/>
    <constraint desc="" exp="" field="controle_uuid"/>
    <constraint desc="" exp="" field="usuario_criacao"/>
    <constraint desc="" exp="" field="usuario_atualizacao"/>
    <constraint desc="" exp="" field="insumo"/>
    <constraint desc="" exp="" field="data_insumo"/>
    <constraint desc="" exp="" field="visivel"/>
    <constraint desc="" exp="" field="texto_edicao"/>
    <constraint desc="" exp="" field="carta_mini"/>
    <constraint desc="" exp="" field="label_x"/>
    <constraint desc="" exp="" field="label_y"/>
    <constraint desc="" exp="" field="justificativa_txt"/>
    <constraint desc="" exp="" field="simb_x"/>
    <constraint desc="" exp="" field="simb_y"/>
    <constraint desc="" exp="" field="simb_rot"/>
    <constraint desc="" exp="" field="leader_line"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;texto_edicao&quot;" sortOrder="1" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" hidden="0" name="id" type="field"/>
      <column width="140" hidden="0" name="nome" type="field"/>
      <column width="346" hidden="0" name="tipo" type="field"/>
      <column width="-1" hidden="0" name="material_construcao" type="field"/>
      <column width="530" hidden="0" name="observacao" type="field"/>
      <column width="-1" hidden="0" name="data_modificacao" type="field"/>
      <column width="-1" hidden="0" name="controle_uuid" type="field"/>
      <column width="-1" hidden="0" name="usuario_criacao" type="field"/>
      <column width="-1" hidden="0" name="usuario_atualizacao" type="field"/>
      <column width="-1" hidden="0" name="insumo" type="field"/>
      <column width="-1" hidden="0" name="data_insumo" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" name="visivel" type="field"/>
      <column width="327" hidden="0" name="texto_edicao" type="field"/>
      <column width="-1" hidden="0" name="carta_mini" type="field"/>
      <column width="-1" hidden="0" name="label_x" type="field"/>
      <column width="-1" hidden="0" name="label_y" type="field"/>
      <column width="-1" hidden="0" name="justificativa_txt" type="field"/>
      <column width="-1" hidden="0" name="simb_x" type="field"/>
      <column width="-1" hidden="0" name="simb_y" type="field"/>
      <column width="-1" hidden="0" name="simb_rot" type="field"/>
      <column width="-1" hidden="0" name="leader_line" type="field"/>
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
    <field editable="1" name="carta_mini"/>
    <field editable="1" name="controle_uuid"/>
    <field editable="1" name="data_insumo"/>
    <field editable="1" name="data_modificacao"/>
    <field editable="1" name="id"/>
    <field editable="1" name="insumo"/>
    <field editable="1" name="justificativa_txt"/>
    <field editable="1" name="label_x"/>
    <field editable="1" name="label_y"/>
    <field editable="1" name="leader_line"/>
    <field editable="1" name="material_construcao"/>
    <field editable="1" name="nome"/>
    <field editable="1" name="observacao"/>
    <field editable="1" name="simb_rot"/>
    <field editable="1" name="simb_x"/>
    <field editable="1" name="simb_y"/>
    <field editable="1" name="texto_edicao"/>
    <field editable="1" name="tipo"/>
    <field editable="1" name="usuario_atualizacao"/>
    <field editable="1" name="usuario_criacao"/>
    <field editable="1" name="visivel"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="carta_mini"/>
    <field labelOnTop="0" name="controle_uuid"/>
    <field labelOnTop="0" name="data_insumo"/>
    <field labelOnTop="0" name="data_modificacao"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="insumo"/>
    <field labelOnTop="0" name="justificativa_txt"/>
    <field labelOnTop="0" name="label_x"/>
    <field labelOnTop="0" name="label_y"/>
    <field labelOnTop="0" name="leader_line"/>
    <field labelOnTop="0" name="material_construcao"/>
    <field labelOnTop="0" name="nome"/>
    <field labelOnTop="0" name="observacao"/>
    <field labelOnTop="0" name="simb_rot"/>
    <field labelOnTop="0" name="simb_x"/>
    <field labelOnTop="0" name="simb_y"/>
    <field labelOnTop="0" name="texto_edicao"/>
    <field labelOnTop="0" name="tipo"/>
    <field labelOnTop="0" name="usuario_atualizacao"/>
    <field labelOnTop="0" name="usuario_criacao"/>
    <field labelOnTop="0" name="visivel"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"nome"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
