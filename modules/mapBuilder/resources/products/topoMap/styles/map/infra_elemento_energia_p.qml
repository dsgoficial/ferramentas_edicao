<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 forceraster="0" type="RuleRenderer" symbollevels="0" referencescale="-1" enableorderby="0">
    <rules key="{7a9efdbe-2548-4e64-a3f2-2a3482b5be1e}">
      <rule label="Visível" key="{13610b09-0185-4a86-9089-9a7fc27d07b6}" filter="&quot;visivel&quot; = 1">
        <rule label="Estação geradora de energia" key="{b1804ae4-4c32-4b01-8a4e-6fcf5e5ad631}" filter="&quot;tipo&quot; in (406, 408, 409, 498)" symbol="0"/>
        <rule key="{569c5f98-6eb2-472f-92b5-3ef6489cddc9}" filter="&quot;tipo&quot; = 1401" symbol="1"/>
        <rule label="Substação de energia" key="{820c3349-8d4d-47e3-a779-3923c9bbd6e9}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (18)" symbol="2"/>
        <rule label="Aerogerador" key="{595fe633-b083-4911-9fad-c8e84e433727}" filter="tipo = 1701" symbol="3"/>
        <rule key="{cbf853d9-f8ab-47de-b6ab-0663551ce14a}" filter="ELSE" symbol="4"/>
      </rule>
    </rules>
    <symbols>
      <symbol type="marker" name="0" force_rhr="0" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="cap_style" value="square"/>
            <Option type="QString" name="color" value="0,0,0,255"/>
            <Option type="QString" name="horizontal_anchor_point" value="1"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="name" value="square"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_style" value="no"/>
            <Option type="QString" name="outline_width" value="0"/>
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="scale_method" value="diameter"/>
            <Option type="QString" name="size" value="0.8"/>
            <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="size_unit" value="MM"/>
            <Option type="QString" name="vertical_anchor_point" value="1"/>
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
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="field" value="simb_rot"/>
                  <Option type="int" name="type" value="2"/>
                </Option>
                <Option type="Map" name="fillColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="1" force_rhr="0" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="cap_style" value="square"/>
            <Option type="QString" name="color" value="243,166,178,255"/>
            <Option type="QString" name="horizontal_anchor_point" value="1"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="name" value="circle"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0"/>
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="scale_method" value="diameter"/>
            <Option type="QString" name="size" value="0"/>
            <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="size_unit" value="MM"/>
            <Option type="QString" name="vertical_anchor_point" value="1"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="2" force_rhr="0" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SvgMarker" locked="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="color" value="141,90,153,255"/>
            <Option type="QString" name="fixedAspectRatio" value="0"/>
            <Option type="QString" name="horizontal_anchor_point" value="1"/>
            <Option type="QString" name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9InN1YmVzdGFjYW8uc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTU2NyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSItNy42MzkyNzg2IgogICAgIGlua3NjYXBlOmN5PSI3LjMyMzYwNTkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTU3MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAuNzQwNDQyNTgsLTIwMC42MjEyOSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xMDAuNzQwNDQsNzYuMTIxMTg1KSIKICAgICAgIGlkPSJnMTE0NSIKICAgICAgIHN0eWxlPSJzdHJva2U6IzI0MWYyMTtzdHJva2Utb3BhY2l0eToxIj4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiM3OTg3Yzg7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTMwMzI1MTc7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwMC4wNjUxNiwxMjYuNSB2IC0wLjQzNDg0IEggMTAwLjUgMTAwLjkzNDg0IFYgMTI2LjUgMTI2LjkzNDg0IEggMTAwLjUgMTAwLjA2NTE2IFoiCiAgICAgICAgIGlkPSJwYXRoNDE5NiIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjpiZXZlbDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwMC41LDEyNC41Mzc1NSAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICAgIGlkPSJwYXRoMTEyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
            <Option type="QString" name="offset" value="0,-0.80000000000000004"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_width" value="0"/>
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option name="parameters"/>
            <Option type="QString" name="scale_method" value="diameter"/>
            <Option type="QString" name="size" value="1"/>
            <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="size_unit" value="MM"/>
            <Option type="QString" name="vertical_anchor_point" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="141,90,153,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9InN1YmVzdGFjYW8uc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTU2NyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSItNy42MzkyNzg2IgogICAgIGlua3NjYXBlOmN5PSI3LjMyMzYwNTkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTU3MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAuNzQwNDQyNTgsLTIwMC42MjEyOSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xMDAuNzQwNDQsNzYuMTIxMTg1KSIKICAgICAgIGlkPSJnMTE0NSIKICAgICAgIHN0eWxlPSJzdHJva2U6IzI0MWYyMTtzdHJva2Utb3BhY2l0eToxIj4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiM3OTg3Yzg7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTMwMzI1MTc7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwMC4wNjUxNiwxMjYuNSB2IC0wLjQzNDg0IEggMTAwLjUgMTAwLjkzNDg0IFYgMTI2LjUgMTI2LjkzNDg0IEggMTAwLjUgMTAwLjA2NTE2IFoiCiAgICAgICAgIGlkPSJwYXRoNDE5NiIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjpiZXZlbDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwMC41LDEyNC41Mzc1NSAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICAgIGlkPSJwYXRoMTEyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
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
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="field" value="simb_rot"/>
                  <Option type="int" name="type" value="2"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="3" force_rhr="0" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SvgMarker" locked="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="color" value="141,90,153,255"/>
            <Option type="QString" name="fixedAspectRatio" value="0"/>
            <Option type="QString" name="horizontal_anchor_point" value="1"/>
            <Option type="QString" name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS43NTAwMDE1bW0iCiAgIGhlaWdodD0iMy4wMDAyMTQzbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjc1MDAwMTUgMy4wMDAyMTQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAxMDEwMUEuc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTUzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSItMC4yODQxMDU0IgogICAgIGlua3NjYXBlOmN5PSIzLjQ0MDgzMjEiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImcyMTkyIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDcuNjUyNzI3LC0xOTIuODMxMTgpIj4KICAgIDxnCiAgICAgICBpZD0iZzIyMDEiCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTU2Ljc3MzUyLDE2OC44MzEzOSkiPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE5OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Ik0gMTEwLjEyMzcxLDI1LjAwMjY4OSBWIDI2LjQ2NyIKICAgICAgICAgaWQ9InBhdGg5NDkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxnCiAgICAgICAgIHN0eWxlPSJzdHJva2Utd2lkdGg6MC45NjU3MTE1MyIKICAgICAgICAgdHJhbnNmb3JtPSJtYXRyaXgoMS4wMzU1MjE0LDAsMCwxLjAzNTQ5MDIsLTMuOTExNTYyMywwLjM1MzgzNTcyKSIKICAgICAgICAgaWQ9ImcyMTkyIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY3pjemMiCiAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgICBpZD0icGF0aDEwODIiCiAgICAgICAgICAgZD0ibSAxMTAuMzY5OTgsMjIuODg0NDg3IGMgMCwwIC0wLjE2MTc4LDAuMjkwNDA1IC0wLjIwMzA0LDAuNDQ1OTU1IC0wLjA0MTMsMC4xNTU1NTIgLTAuMDQzNCwwLjQ3MzYwMiAtMC4wNDM0LDAuNDczNjAyIDAsMCAwLjE2NzAyLC0wLjI2NzA4NSAwLjIwOTYzLC0wLjQyMzAzNSAwLjA0MjcsLTAuMTU1OTQxIDAuMDM2OCwtMC40OTY1MjIgMC4wMzY4LC0wLjQ5NjUyMiIKICAgICAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjA5NjU3MTE3O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICAgIDxwYXRoCiAgICAgICAgICAgc3R5bGU9ImZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4wOTY1NzExNztzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICBkPSJtIDEwOS4yMDM5OSwyNC4wNTA0MDQgYyAwLDAgMC4zMzIzOCwtMC4wMDUgMC40ODc3MiwtMC4wNDcxIDAuMTU1MzQsLTAuMDQyMSAwLjQzMTgzLC0wLjE5OTI2IDAuNDMxODMsLTAuMTk5MjYgMCwwIC0wLjMxNDgxLC0wLjAxMTEgLTAuNDcxMTcsMC4wMyAtMC4xNTYzOCwwLjA0MSAtMC40NDgzOCwwLjIxNjQzIC0wLjQ0ODM4LDAuMjE2NDMiCiAgICAgICAgICAgaWQ9InBhdGgxMDg0IgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjemN6YyIgLz4KICAgICAgICA8cGF0aAogICAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMDk2NTcxMTc7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMTAuMTIzNTQsMjMuODA0MDQ0IGMgMCwwIDAuMTcwNjIsMC4yODUzMDcgMC4yODQ3LDAuMzk4ODE4IDAuMTE0MDgsMC4xMTM1MDQgMC4zODg0NywwLjI3NDM0MiAwLjM4ODQ3LDAuMjc0MzQyIDAsMCAtMC4xNDc4LC0wLjI3ODE4NSAtMC4yNjE1NSwtMC4zOTMwNjggLTAuMTEzNzIsLTAuMTE0OTA5IC0wLjQxMTYxLC0wLjI4MDA5MyAtMC40MTE2MSwtMC4yODAwOTMiCiAgICAgICAgICAgaWQ9InBhdGgxMDg2IgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjemN6YyIgLz4KICAgICAgPC9nPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMTAuNjIzNzIsMjYuNzAwMDAxIGggLTEiCiAgICAgICAgIGlkPSJwYXRoMTA5MCIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPGNpcmNsZQogICAgICAgICByPSIwLjI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xO3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGgxMDg4IgogICAgICAgICBjeD0iMTEwLjEyMzcyIgogICAgICAgICBjeT0iMjYuNzAwMDAxIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
            <Option type="QString" name="offset" value="-0.12,-1.25"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_width" value="0"/>
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option name="parameters"/>
            <Option type="QString" name="scale_method" value="diameter"/>
            <Option type="QString" name="size" value="1.74988"/>
            <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="size_unit" value="MM"/>
            <Option type="QString" name="vertical_anchor_point" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="141,90,153,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS43NTAwMDE1bW0iCiAgIGhlaWdodD0iMy4wMDAyMTQzbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjc1MDAwMTUgMy4wMDAyMTQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAxMDEwMUEuc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTUzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSItMC4yODQxMDU0IgogICAgIGlua3NjYXBlOmN5PSIzLjQ0MDgzMjEiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImcyMTkyIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDcuNjUyNzI3LC0xOTIuODMxMTgpIj4KICAgIDxnCiAgICAgICBpZD0iZzIyMDEiCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTU2Ljc3MzUyLDE2OC44MzEzOSkiPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE5OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Ik0gMTEwLjEyMzcxLDI1LjAwMjY4OSBWIDI2LjQ2NyIKICAgICAgICAgaWQ9InBhdGg5NDkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxnCiAgICAgICAgIHN0eWxlPSJzdHJva2Utd2lkdGg6MC45NjU3MTE1MyIKICAgICAgICAgdHJhbnNmb3JtPSJtYXRyaXgoMS4wMzU1MjE0LDAsMCwxLjAzNTQ5MDIsLTMuOTExNTYyMywwLjM1MzgzNTcyKSIKICAgICAgICAgaWQ9ImcyMTkyIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY3pjemMiCiAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgICBpZD0icGF0aDEwODIiCiAgICAgICAgICAgZD0ibSAxMTAuMzY5OTgsMjIuODg0NDg3IGMgMCwwIC0wLjE2MTc4LDAuMjkwNDA1IC0wLjIwMzA0LDAuNDQ1OTU1IC0wLjA0MTMsMC4xNTU1NTIgLTAuMDQzNCwwLjQ3MzYwMiAtMC4wNDM0LDAuNDczNjAyIDAsMCAwLjE2NzAyLC0wLjI2NzA4NSAwLjIwOTYzLC0wLjQyMzAzNSAwLjA0MjcsLTAuMTU1OTQxIDAuMDM2OCwtMC40OTY1MjIgMC4wMzY4LC0wLjQ5NjUyMiIKICAgICAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjA5NjU3MTE3O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICAgIDxwYXRoCiAgICAgICAgICAgc3R5bGU9ImZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4wOTY1NzExNztzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICBkPSJtIDEwOS4yMDM5OSwyNC4wNTA0MDQgYyAwLDAgMC4zMzIzOCwtMC4wMDUgMC40ODc3MiwtMC4wNDcxIDAuMTU1MzQsLTAuMDQyMSAwLjQzMTgzLC0wLjE5OTI2IDAuNDMxODMsLTAuMTk5MjYgMCwwIC0wLjMxNDgxLC0wLjAxMTEgLTAuNDcxMTcsMC4wMyAtMC4xNTYzOCwwLjA0MSAtMC40NDgzOCwwLjIxNjQzIC0wLjQ0ODM4LDAuMjE2NDMiCiAgICAgICAgICAgaWQ9InBhdGgxMDg0IgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjemN6YyIgLz4KICAgICAgICA8cGF0aAogICAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMDk2NTcxMTc7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMTAuMTIzNTQsMjMuODA0MDQ0IGMgMCwwIDAuMTcwNjIsMC4yODUzMDcgMC4yODQ3LDAuMzk4ODE4IDAuMTE0MDgsMC4xMTM1MDQgMC4zODg0NywwLjI3NDM0MiAwLjM4ODQ3LDAuMjc0MzQyIDAsMCAtMC4xNDc4LC0wLjI3ODE4NSAtMC4yNjE1NSwtMC4zOTMwNjggLTAuMTEzNzIsLTAuMTE0OTA5IC0wLjQxMTYxLC0wLjI4MDA5MyAtMC40MTE2MSwtMC4yODAwOTMiCiAgICAgICAgICAgaWQ9InBhdGgxMDg2IgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjemN6YyIgLz4KICAgICAgPC9nPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMTAuNjIzNzIsMjYuNzAwMDAxIGggLTEiCiAgICAgICAgIGlkPSJwYXRoMTA5MCIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPGNpcmNsZQogICAgICAgICByPSIwLjI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xO3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGgxMDg4IgogICAgICAgICBjeD0iMTEwLjEyMzcyIgogICAgICAgICBjeT0iMjYuNzAwMDAxIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
          <prop k="offset" v="-0.12,-1.25"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.74988"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="field" value="simb_rot"/>
                  <Option type="int" name="type" value="2"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="4" force_rhr="0" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="0"/>
            <Option type="QString" name="cap_style" value="square"/>
            <Option type="QString" name="color" value="219,30,42,255"/>
            <Option type="QString" name="horizontal_anchor_point" value="1"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="name" value="diamond"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="128,17,25,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.4"/>
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="scale_method" value="diameter"/>
            <Option type="QString" name="size" value="4.4"/>
            <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="size_unit" value="MM"/>
            <Option type="QString" name="vertical_anchor_point" value="1"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{35368574-7953-4909-bf42-768a13a61307}">
      <rule key="{c179b9a1-3c6a-4431-b2f7-a9e725f5ab1e}" filter="&quot;visivel&quot; = 1">
        <rule key="{b34fe797-4ab0-4d7a-97de-28976f94e7c6}" description="Elemento energia">
          <settings calloutType="simple">
            <text-style fieldName="texto_edicao" fontStrikeout="0" fontItalic="0" multilineHeight="0.80000000000000004" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" isExpression="0" textOrientation="horizontal" fontWeight="50" useSubstitutions="0" allowHtml="0" legendString="Aa" fontSize="6" textColor="75,75,75,255" fontUnderline="0" fontSizeUnit="Point" fontKerning="1" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" capitalization="0" fontWordSpacing="0" blendMode="0" textOpacity="1" namedStyle="Condensed">
              <families/>
              <text-buffer bufferSize="1" bufferNoFill="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM" bufferDraw="0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferOpacity="1" bufferJoinStyle="128"/>
              <text-mask maskType="0" maskedSymbolLayers="" maskJoinStyle="128" maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="1" maskSizeUnits="MM" maskSize="0.20000000000000001"/>
              <background shapeSizeY="0" shapeRadiiUnit="MM" shapeSVGFile="" shapeOffsetX="0" shapeRadiiX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeBlendMode="0" shapeRotationType="0" shapeFillColor="255,255,255,255" shapeDraw="0" shapeOffsetY="0" shapeBorderWidth="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRotation="0" shapeSizeUnit="MM" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeSizeX="0">
                <symbol type="marker" name="markerSymbol" force_rhr="0" clip_to_extent="1" alpha="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                    <Option type="Map">
                      <Option type="QString" name="angle" value="0"/>
                      <Option type="QString" name="cap_style" value="square"/>
                      <Option type="QString" name="color" value="231,113,72,255"/>
                      <Option type="QString" name="horizontal_anchor_point" value="1"/>
                      <Option type="QString" name="joinstyle" value="bevel"/>
                      <Option type="QString" name="name" value="circle"/>
                      <Option type="QString" name="offset" value="0,0"/>
                      <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                      <Option type="QString" name="offset_unit" value="MM"/>
                      <Option type="QString" name="outline_color" value="0,0,0,255"/>
                      <Option type="QString" name="outline_style" value="solid"/>
                      <Option type="QString" name="outline_width" value="0"/>
                      <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                      <Option type="QString" name="outline_width_unit" value="MM"/>
                      <Option type="QString" name="scale_method" value="diameter"/>
                      <Option type="QString" name="size" value="2"/>
                      <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                      <Option type="QString" name="size_unit" value="MM"/>
                      <Option type="QString" name="vertical_anchor_point" value="1"/>
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
                        <Option type="QString" name="name" value=""/>
                        <Option name="properties"/>
                        <Option type="QString" name="type" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol type="fill" name="fillSymbol" force_rhr="0" clip_to_extent="1" alpha="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                    <Option type="Map">
                      <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                      <Option type="QString" name="color" value="255,255,255,255"/>
                      <Option type="QString" name="joinstyle" value="bevel"/>
                      <Option type="QString" name="offset" value="0,0"/>
                      <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                      <Option type="QString" name="offset_unit" value="MM"/>
                      <Option type="QString" name="outline_color" value="128,128,128,255"/>
                      <Option type="QString" name="outline_style" value="no"/>
                      <Option type="QString" name="outline_width" value="0"/>
                      <Option type="QString" name="outline_width_unit" value="MM"/>
                      <Option type="QString" name="style" value="solid"/>
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
                        <Option type="QString" name="name" value=""/>
                        <Option name="properties"/>
                        <Option type="QString" name="type" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowUnder="0" shadowRadius="1.5" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetDist="1" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1"/>
              <dd_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format wrapChar="|" reverseDirectionSymbol="0" rightDirectionSymbol=">" autoWrapLength="0" addDirectionSymbol="0" formatNumbers="0" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" decimals="3" placeDirectionSymbol="0" plussign="0" multilineAlign="0"/>
            <placement fitInPolygonOnly="0" overrunDistanceUnit="MM" lineAnchorPercent="0.5" geometryGeneratorEnabled="1" xOffset="0.5" geometryGeneratorType="PointGeometry" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" placement="6" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" overrunDistance="0" lineAnchorClipping="0" preserveRotation="1" placementFlags="10" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" quadOffset="2" centroidInside="0" maxCurvedCharAngleOut="-25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" rotationUnit="AngleDegrees" priority="5" dist="0" repeatDistance="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="-0.5" repeatDistanceUnits="MM" layerType="PointGeometry" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" centroidWhole="0"/>
            <rendering fontMaxPixelSize="10000" obstacleFactor="1" maxNumLabels="2000" zIndex="0" scaleMax="0" limitNumLabels="0" displayAll="1" obstacle="1" upsidedownLabels="0" drawLabels="1" obstacleType="1" minFeatureSize="0" fontMinPixelSize="3" scaleVisibility="0" scaleMin="0" unplacedVisibility="0" labelPerPart="0" fontLimitPixelSize="0" mergeLines="0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="Color">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                  <Option type="Map" name="MultiLineAlignment">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                  <Option type="Map" name="PositionX">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="field" value="label_x"/>
                    <Option type="int" name="type" value="2"/>
                  </Option>
                  <Option type="Map" name="PositionY">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="field" value="label_y"/>
                    <Option type="int" name="type" value="2"/>
                  </Option>
                  <Option type="Map" name="Show">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
                <Option type="int" name="blendMode" value="0"/>
                <Option type="Map" name="ddProperties">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
                <Option type="bool" name="drawToAllParts" value="false"/>
                <Option type="QString" name="enabled" value="0"/>
                <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
                <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option type="double" name="minLength" value="0"/>
                <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="minLengthUnit" value="MM"/>
                <Option type="double" name="offsetFromAnchor" value="0"/>
                <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
                <Option type="double" name="offsetFromLabel" value="0"/>
                <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
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
