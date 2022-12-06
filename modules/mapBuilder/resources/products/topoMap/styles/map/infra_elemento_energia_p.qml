<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 referencescale="-1" type="RuleRenderer" forceraster="0" symbollevels="0" enableorderby="0">
    <rules key="{7a9efdbe-2548-4e64-a3f2-2a3482b5be1e}">
      <rule filter="&quot;visivel&quot; = 1" label="Visível" key="{13610b09-0185-4a86-9089-9a7fc27d07b6}">
        <rule symbol="0" filter="&quot;tipo&quot; in (406, 409)" label="Estação geradora de energia" key="{b1804ae4-4c32-4b01-8a4e-6fcf5e5ad631}"/>
        <rule symbol="1" filter="&quot;tipo&quot; = 1401" key="{569c5f98-6eb2-472f-92b5-3ef6489cddc9}"/>
        <rule symbol="2" filter="&quot;tipo&quot; = 1801" label="Substação de energia" key="{595fe633-b083-4911-9fad-c8e84e433727}"/>
        <rule symbol="3" filter="ELSE" key="{cbf853d9-f8ab-47de-b6ab-0663551ce14a}"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" type="marker" force_rhr="0" name="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="0,0,0,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="square" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0,0,0,255" type="QString" name="outline_color"/>
            <Option value="no" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="0.8" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
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
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="simb_rot" type="QString" name="field"/>
                  <Option value="2" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="marker" force_rhr="0" name="1" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="243,166,178,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="0" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="243,166,178,255"/>
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
          <prop k="size" v="0"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="marker" force_rhr="0" name="2" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SvgMarker">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="141,90,153,255" type="QString" name="color"/>
            <Option value="0" type="QString" name="fixedAspectRatio"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDEwMTEwQS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIzMS42NzgzODQiCiAgICAgaW5rc2NhcGU6Y3g9Ii03LjYyOTk2MTUiCiAgICAgaW5rc2NhcGU6Y3k9IjcuMzIxNDAwMSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxMyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTE1NzAiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjc0MDQ0MjU4LC0yMDAuNjIxMjkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTAwLjc0MDQ0LDc2LjEyMTE4NSkiCiAgICAgICBpZD0iZzExNDUiPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6Izc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xMzAzMjUxNztzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAwLjA2NTE2LDEyNi41IHYgLTAuNDM0ODQgSCAxMDAuNSAxMDAuOTM0ODQgViAxMjYuNSAxMjYuOTM0ODQgSCAxMDAuNSAxMDAuMDY1MTYgWiIKICAgICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAwLjUsMTI0LjUzNzU1IC0wLjQyNSwwLjczNzUgaCAwLjg1IGwgLTAuNDQ5NjIsMC43NzA4MSIKICAgICAgICAgaWQ9InBhdGgxMTI3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9ImNjY2MiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" type="QString" name="name"/>
            <Option value="0,-0.80000000000000004" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0,0,0,255" type="QString" name="outline_color"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option name="parameters"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="1" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="141,90,153,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjIgNWMzZTgwZCwgMjAxNy0wOC0wNiIKICAgc29kaXBvZGk6ZG9jbmFtZT0iUDEwMTEwQS5zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIzMS42NzgzODQiCiAgICAgaW5rc2NhcGU6Y3g9Ii03LjYyOTk2MTUiCiAgICAgaW5rc2NhcGU6Y3k9IjcuMzIxNDAwMSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxMyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTE1NzAiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjc0MDQ0MjU4LC0yMDAuNjIxMjkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTAwLjc0MDQ0LDc2LjEyMTE4NSkiCiAgICAgICBpZD0iZzExNDUiPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6Izc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xMzAzMjUxNztzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAwLjA2NTE2LDEyNi41IHYgLTAuNDM0ODQgSCAxMDAuNSAxMDAuOTM0ODQgViAxMjYuNSAxMjYuOTM0ODQgSCAxMDAuNSAxMDAuMDY1MTYgWiIKICAgICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1MDAwMDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAwLjUsMTI0LjUzNzU1IC0wLjQyNSwwLjczNzUgaCAwLjg1IGwgLTAuNDQ5NjIsMC43NzA4MSIKICAgICAgICAgaWQ9InBhdGgxMTI3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9ImNjY2MiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
          <prop k="offset" v="0,-0.80000000000000004"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="simb_rot" type="QString" name="field"/>
                  <Option value="2" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="marker" force_rhr="0" name="3" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="219,30,42,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="diamond" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="128,17,25,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.4" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="4.4" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{742a0cf3-8b25-45f0-822e-4e7a31ba8d7d}">
      <rule filter="&quot;visivel&quot; = 1" key="{1a34f11c-4784-4ef2-b9ea-3c9dee121047}">
        <rule description="Elemento energia" key="{b738f58a-2c62-49ba-8c88-e194375af688}">
          <settings calloutType="simple">
            <text-style multilineHeight="0.80000000000000004" namedStyle="Condensed" fontSizeUnit="Point" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="75,75,75,255" blendMode="0" capitalization="0" textOpacity="1" fontSize="6" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fieldName="texto_edicao" isExpression="0" fontKerning="1" allowHtml="0" fontItalic="0" fontLetterSpacing="0" fontStrikeout="0" legendString="Aa" textOrientation="horizontal" fontUnderline="0" fontWordSpacing="0">
              <families/>
              <text-buffer bufferSizeUnits="MM" bufferNoFill="1" bufferOpacity="1" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128"/>
              <text-mask maskSizeUnits="MM" maskOpacity="1" maskType="0" maskedSymbolLayers="" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0.20000000000000001"/>
              <background shapeOpacity="1" shapeSizeY="0" shapeOffsetX="0" shapeBlendMode="0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSizeType="0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRotation="0" shapeRadiiY="0" shapeDraw="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeOffsetUnit="MM" shapeSizeX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeRadiiUnit="MM" shapeRadiiX="0">
                <symbol alpha="1" type="marker" force_rhr="0" name="markerSymbol" clip_to_extent="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                    <Option type="Map">
                      <Option value="0" type="QString" name="angle"/>
                      <Option value="square" type="QString" name="cap_style"/>
                      <Option value="231,113,72,255" type="QString" name="color"/>
                      <Option value="1" type="QString" name="horizontal_anchor_point"/>
                      <Option value="bevel" type="QString" name="joinstyle"/>
                      <Option value="circle" type="QString" name="name"/>
                      <Option value="0,0" type="QString" name="offset"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="0,0,0,255" type="QString" name="outline_color"/>
                      <Option value="solid" type="QString" name="outline_style"/>
                      <Option value="0" type="QString" name="outline_width"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                      <Option value="MM" type="QString" name="outline_width_unit"/>
                      <Option value="diameter" type="QString" name="scale_method"/>
                      <Option value="2" type="QString" name="size"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                      <Option value="MM" type="QString" name="size_unit"/>
                      <Option value="1" type="QString" name="vertical_anchor_point"/>
                    </Option>
                    <prop k="angle" v="0"/>
                    <prop k="cap_style" v="square"/>
                    <prop k="color" v="231,113,72,255"/>
                    <prop k="horizontal_anchor_point" v="1"/>
                    <prop k="joinstyle" v="bevel"/>
                    <prop k="name" v="circle"/>
                    <prop k="offset" v="0,0"/>
                    <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="offset_unit" v="MM"/>
                    <prop k="outline_color" v="0,0,0,255"/>
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
                        <Option value="" type="QString" name="name"/>
                        <Option name="properties"/>
                        <Option value="collection" type="QString" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" type="fill" force_rhr="0" name="fillSymbol" clip_to_extent="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                    <Option type="Map">
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                      <Option value="255,255,255,255" type="QString" name="color"/>
                      <Option value="bevel" type="QString" name="joinstyle"/>
                      <Option value="0,0" type="QString" name="offset"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="128,128,128,255" type="QString" name="outline_color"/>
                      <Option value="no" type="QString" name="outline_style"/>
                      <Option value="0" type="QString" name="outline_width"/>
                      <Option value="MM" type="QString" name="outline_width_unit"/>
                      <Option value="solid" type="QString" name="style"/>
                    </Option>
                    <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color" v="255,255,255,255"/>
                    <prop k="joinstyle" v="bevel"/>
                    <prop k="offset" v="0,0"/>
                    <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="offset_unit" v="MM"/>
                    <prop k="outline_color" v="128,128,128,255"/>
                    <prop k="outline_style" v="no"/>
                    <prop k="outline_width" v="0"/>
                    <prop k="outline_width_unit" v="MM"/>
                    <prop k="style" v="solid"/>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option value="" type="QString" name="name"/>
                        <Option name="properties"/>
                        <Option value="collection" type="QString" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowDraw="0" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOffsetDist="1" shadowBlendMode="6" shadowUnder="0" shadowRadius="1.5" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
              <dd_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" formatNumbers="0" multilineAlign="0" placeDirectionSymbol="0" wrapChar="|" autoWrapLength="0" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" useMaxLineLengthForAutoWrap="1"/>
            <placement offsetUnits="MM" geometryGeneratorEnabled="1" dist="0" geometryGeneratorType="PointGeometry" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" lineAnchorType="0" quadOffset="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" fitInPolygonOnly="0" repeatDistance="0" repeatDistanceUnits="MM" placement="6" centroidInside="0" overrunDistanceUnit="MM" offsetType="0" rotationAngle="0" preserveRotation="1" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" yOffset="-0.5" layerType="PointGeometry" maxCurvedCharAngleIn="25" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" distMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" placementFlags="10" xOffset="0.5" maxCurvedCharAngleOut="-25" distUnits="MM"/>
            <rendering obstacleType="1" limitNumLabels="0" minFeatureSize="0" displayAll="1" scaleMin="0" scaleVisibility="0" obstacle="1" scaleMax="0" fontMinPixelSize="3" zIndex="0" drawLabels="1" labelPerPart="0" fontMaxPixelSize="10000" fontLimitPixelSize="0" upsidedownLabels="0" mergeLines="0" maxNumLabels="2000" obstacleFactor="1" unplacedVisibility="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="Color">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="PositionX">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="label_x" type="QString" name="field"/>
                    <Option value="2" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="PositionY">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="label_y" type="QString" name="field"/>
                    <Option value="2" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="Show">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
                <Option value="0" type="int" name="blendMode"/>
                <Option type="Map" name="ddProperties">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
                <Option value="false" type="bool" name="drawToAllParts"/>
                <Option value="0" type="QString" name="enabled"/>
                <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
                <Option value="&lt;symbol alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
                <Option value="0" type="double" name="minLength"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
                <Option value="MM" type="QString" name="minLengthUnit"/>
                <Option value="0" type="double" name="offsetFromAnchor"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
                <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
                <Option value="0" type="double" name="offsetFromLabel"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
                <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
              </Option>
            </callout>
          </settings>
        </rule>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
