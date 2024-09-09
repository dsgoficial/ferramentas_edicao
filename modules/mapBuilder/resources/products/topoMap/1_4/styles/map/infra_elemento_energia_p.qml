<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.38.2-Grenoble" labelsEnabled="1">
  <renderer-v2 symbollevels="0" type="RuleRenderer" referencescale="-1" enableorderby="0" forceraster="0">
    <rules key="{7a9efdbe-2548-4e64-a3f2-2a3482b5be1e}">
      <rule filter="&quot;visivel&quot; = 1" label="Visível" key="{13610b09-0185-4a86-9089-9a7fc27d07b6}">
        <rule filter="&quot;tipo&quot; in (406, 408, 409, 498)" label="Estação geradora de energia" key="{b1804ae4-4c32-4b01-8a4e-6fcf5e5ad631}" symbol="0"/>
        <rule filter="&quot;tipo&quot; = 1401" key="{569c5f98-6eb2-472f-92b5-3ef6489cddc9}" symbol="1"/>
        <rule filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (18)" label="Substação de energia" key="{820c3349-8d4d-47e3-a779-3923c9bbd6e9}" symbol="2"/>
        <rule filter="tipo in (405, 1701)" label="Aerogerador" key="{595fe633-b083-4911-9fad-c8e84e433727}" symbol="3"/>
        <rule filter="ELSE" key="{cbf853d9-f8ab-47de-b6ab-0663551ce14a}" symbol="4"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{4768beff-0aa9-47be-9ddc-f913c8d8dd06}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="square" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.8" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="simb_rot" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
                <Option type="Map" name="fillColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{35bc9bdb-18b6-474e-91b4-28cd90561eb1}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="243,166,178,255,rgb:0.95294117647058818,0.65098039215686276,0.69803921568627447,1" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="2" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{bfd8326c-3b51-4e77-8030-734b7eb720f8}" locked="0" class="SvgMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="141,90,153,255,rgb:0.55294117647058827,0.35294117647058826,0.59999999999999998,1" name="color"/>
            <Option type="QString" value="0" name="fixedAspectRatio"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9InN1YmVzdGFjYW8uc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTU2NyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSItNy42MzkyNzg2IgogICAgIGlua3NjYXBlOmN5PSI3LjMyMzYwNTkiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTU3MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAuNzQwNDQyNTgsLTIwMC42MjEyOSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xMDAuNzQwNDQsNzYuMTIxMTg1KSIKICAgICAgIGlkPSJnMTE0NSIKICAgICAgIHN0eWxlPSJzdHJva2U6IzI0MWYyMTtzdHJva2Utb3BhY2l0eToxIj4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiM3OTg3Yzg7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTMwMzI1MTc7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwMC4wNjUxNiwxMjYuNSB2IC0wLjQzNDg0IEggMTAwLjUgMTAwLjkzNDg0IFYgMTI2LjUgMTI2LjkzNDg0IEggMTAwLjUgMTAwLjA2NTE2IFoiCiAgICAgICAgIGlkPSJwYXRoNDE5NiIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjpiZXZlbDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwMC41LDEyNC41Mzc1NSAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICAgIGlkPSJwYXRoMTEyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" name="name"/>
            <Option type="QString" value="0,-0.80000000000000004" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option name="parameters"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="1" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="simb_rot" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="3" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{d8efd677-f280-4de4-b266-7205619168eb}" locked="0" class="SvgMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="141,90,153,255,rgb:0.55294117647058827,0.35294117647058826,0.59999999999999998,1" name="color"/>
            <Option type="QString" value="0" name="fixedAspectRatio"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS43NTAwMDE1bW0iCiAgIGhlaWdodD0iMy4wMDAyMTQzbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjc1MDAwMTUgMy4wMDAyMTQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAxMDEwMUEuc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTUzNyIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSItMC4yODQxMDU0IgogICAgIGlua3NjYXBlOmN5PSIzLjQ0MDgzMjEiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImcyMTkyIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDcuNjUyNzI3LC0xOTIuODMxMTgpIj4KICAgIDxnCiAgICAgICBpZD0iZzIyMDEiCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTU2Ljc3MzUyLDE2OC44MzEzOSkiPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE5OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Ik0gMTEwLjEyMzcxLDI1LjAwMjY4OSBWIDI2LjQ2NyIKICAgICAgICAgaWQ9InBhdGg5NDkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxnCiAgICAgICAgIHN0eWxlPSJzdHJva2Utd2lkdGg6MC45NjU3MTE1MyIKICAgICAgICAgdHJhbnNmb3JtPSJtYXRyaXgoMS4wMzU1MjE0LDAsMCwxLjAzNTQ5MDIsLTMuOTExNTYyMywwLjM1MzgzNTcyKSIKICAgICAgICAgaWQ9ImcyMTkyIj4KICAgICAgICA8cGF0aAogICAgICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY3pjemMiCiAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgICBpZD0icGF0aDEwODIiCiAgICAgICAgICAgZD0ibSAxMTAuMzY5OTgsMjIuODg0NDg3IGMgMCwwIC0wLjE2MTc4LDAuMjkwNDA1IC0wLjIwMzA0LDAuNDQ1OTU1IC0wLjA0MTMsMC4xNTU1NTIgLTAuMDQzNCwwLjQ3MzYwMiAtMC4wNDM0LDAuNDczNjAyIDAsMCAwLjE2NzAyLC0wLjI2NzA4NSAwLjIwOTYzLC0wLjQyMzAzNSAwLjA0MjcsLTAuMTU1OTQxIDAuMDM2OCwtMC40OTY1MjIgMC4wMzY4LC0wLjQ5NjUyMiIKICAgICAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjA5NjU3MTE3O3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICAgIDxwYXRoCiAgICAgICAgICAgc3R5bGU9ImZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4wOTY1NzExNztzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICBkPSJtIDEwOS4yMDM5OSwyNC4wNTA0MDQgYyAwLDAgMC4zMzIzOCwtMC4wMDUgMC40ODc3MiwtMC4wNDcxIDAuMTU1MzQsLTAuMDQyMSAwLjQzMTgzLC0wLjE5OTI2IDAuNDMxODMsLTAuMTk5MjYgMCwwIC0wLjMxNDgxLC0wLjAxMTEgLTAuNDcxMTcsMC4wMyAtMC4xNTYzOCwwLjA0MSAtMC40NDgzOCwwLjIxNjQzIC0wLjQ0ODM4LDAuMjE2NDMiCiAgICAgICAgICAgaWQ9InBhdGgxMDg0IgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjemN6YyIgLz4KICAgICAgICA8cGF0aAogICAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMDk2NTcxMTc7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgZD0ibSAxMTAuMTIzNTQsMjMuODA0MDQ0IGMgMCwwIDAuMTcwNjIsMC4yODUzMDcgMC4yODQ3LDAuMzk4ODE4IDAuMTE0MDgsMC4xMTM1MDQgMC4zODg0NywwLjI3NDM0MiAwLjM4ODQ3LDAuMjc0MzQyIDAsMCAtMC4xNDc4LC0wLjI3ODE4NSAtMC4yNjE1NSwtMC4zOTMwNjggLTAuMTEzNzIsLTAuMTE0OTA5IC0wLjQxMTYxLC0wLjI4MDA5MyAtMC40MTE2MSwtMC4yODAwOTMiCiAgICAgICAgICAgaWQ9InBhdGgxMDg2IgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjemN6YyIgLz4KICAgICAgPC9nPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMTAuNjIzNzIsMjYuNzAwMDAxIGggLTEiCiAgICAgICAgIGlkPSJwYXRoMTA5MCIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPGNpcmNsZQogICAgICAgICByPSIwLjI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xO3N0cm9rZS1saW5lY2FwOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InBhdGgxMDg4IgogICAgICAgICBjeD0iMTEwLjEyMzcyIgogICAgICAgICBjeT0iMjYuNzAwMDAxIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" name="name"/>
            <Option type="QString" value="-0.12,-1.25" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option name="parameters"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="1.74988" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="simb_rot" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="4" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{fdaefa0a-3cb3-4de5-8174-d6e471a04ec0}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="219,30,42,255,rgb:0.85882352941176465,0.11764705882352941,0.16470588235294117,1" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="diamond" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="128,17,25,255,rgb:0.50196078431372548,0.06666666666666667,0.09803921568627451,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.4" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="4.4" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
  </selection>
  <labeling type="rule-based">
    <rules key="{31418637-f225-4907-b538-c7e8bb31b4e1}">
      <rule filter="visivel = 1" key="{d9555a87-b545-4f62-8c3c-bc0f6ed9679d}" description="Elemento energia">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" fontKerning="1" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedBold="0" multilineHeightUnit="Percentage" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="0" namedStyle="Condensed" fontStrikeout="0" isExpression="0" useSubstitutions="0" textOrientation="horizontal" blendMode="0" textOpacity="1" legendString="Aa" tabStopDistanceUnit="Point" textColor="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" fontSize="6" fontFamily="Noto Sans" fieldName="texto_edicao" fontWordSpacing="0" fontSizeUnit="Point" fontWeight="50" multilineHeight="0.80000000000000004" capitalization="0" forcedItalic="0" allowHtml="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferBlendMode="0" bufferDraw="0"/>
            <text-mask maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;infra_vala_l_7ede732b_2965_4761_bea9_f09bf9259c66;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;infra_elemento_energia_l_4368b0e4_d9fd_4646_a037_ce18e441e1cc;" maskSize="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskSizeUnits="MM" maskSize2="0.20000000000000001"/>
            <background shapeSizeUnit="MM" shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeRadiiY="0" shapeRadiiX="0" shapeRotation="0" shapeOpacity="1" shapeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeSVGFile="">
              <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="markerSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="231,113,72,255,rgb:0.90588235294117647,0.44313725490196076,0.28235294117647058,1" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="fillSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleFill">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetGlobal="1" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowUnder="0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="|" useMaxLineLengthForAutoWrap="1" multilineAlign="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" rightDirectionSymbol=">" plussign="0"/>
          <placement geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" lineAnchorPercent="0.5" centroidWhole="0" geometryGeneratorType="PointGeometry" offsetUnits="MM" lineAnchorClipping="0" maxCurvedCharAngleIn="25" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" repeatDistanceUnits="MM" offsetType="0" allowDegraded="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" distUnits="MM" overlapHandling="PreventOverlap" maximumDistanceUnit="MM" xOffset="0.5" dist="0.80000000000000004" rotationAngle="0" layerType="PointGeometry" maximumDistance="0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" repeatDistance="0" quadOffset="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" prioritization="PreferCloser" fitInPolygonOnly="0" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorEnabled="1" lineAnchorTextPoint="CenterOfText" placementFlags="10" centroidInside="0" placement="6" overrunDistance="0" yOffset="-0.5" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" labelPerPart="0" zIndex="0" unplacedVisibility="0" obstacleFactor="1" fontMinPixelSize="3" minFeatureSize="0" obstacleType="1" scaleMin="0" obstacle="1" upsidedownLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" drawLabels="1" mergeLines="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Color">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="PositionX">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="label_x" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="label_y" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
                <Option type="Map" name="Show">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="int" value="0" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; type=&quot;line&quot; is_animated=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; id=&quot;{e4aa1644-5937-4b43-bafb-1dfbe377860b}&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
