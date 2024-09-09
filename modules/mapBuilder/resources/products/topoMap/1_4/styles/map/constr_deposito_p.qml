<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.38.2-Grenoble" labelsEnabled="1">
  <renderer-v2 symbollevels="0" type="RuleRenderer" referencescale="-1" enableorderby="0" forceraster="0">
    <rules key="{15e09ec0-9841-4520-b07a-26e1ce1469e9}">
      <rule filter=" &quot;visivel&quot; = 1" label="Visível" key="{dd502e66-043d-4cdc-b98a-e7b7d0ffe2eb}">
        <rule filter="&quot;tipo&quot; in (101, 110, 108, 111, 112, 132, 198)" label="P20214E" key="{7cd9d25e-c353-460b-9708-b4f3f0dcd74f}" symbol="0" description="Galpão, armazém"/>
        <rule filter="&quot;tipo&quot; = 109" label="P20214A" key="{9578b293-d8bc-4df0-9394-00e3dc45ca84}" symbol="1"/>
        <rule filter="&quot;tipo&quot; in (113, 298, 306, 305, 304, 398)" label="P20214B" key="{c985b851-ad25-4a76-9625-5c2552703ea0}" symbol="2"/>
        <rule filter="&quot;tipo&quot; in (201,204,301)" label="P20214C" key="{f2dbd971-2a05-4177-a181-42a55334620f}" symbol="3" description="Tanque dagua"/>
        <rule filter="&quot;tipo&quot; = 202" label="P10704A" key="{2de32ca8-9fc1-41c9-a306-3cfefb65aa34}" symbol="4"/>
        <rule filter="&quot;tipo&quot; = 203" label="P10704B" key="{d4f82235-073f-404c-a548-19a152bbb46d}" symbol="5" description="Cisterna"/>
        <rule filter="ELSE" key="{93e1af9a-e884-4697-9b99-1670f82aa670}" symbol="6"/>
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
        <layer pass="0" enabled="1" id="{d790aded-9983-47a2-818e-afb814655d9b}" locked="0" class="SimpleMarker">
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
            <Option type="QString" value="0.5" name="size"/>
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
        <layer pass="0" enabled="1" id="{120ebd99-7db1-463a-bae8-38e0d3478ac6}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,0,4,0,rgb:0,0,0.01568627450980392,0" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.15" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="1.25" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" enabled="1" id="{b403212b-c179-4dac-b048-62a41dd8d0b7}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.3" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
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
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="2" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{fa896ac3-af47-4873-aea3-5bd0ce7732f7}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
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
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="3" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{6a182c0a-b153-401d-8f88-76f523aed775}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="square" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.1" name="outline_width"/>
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
                  <Option type="QString" value="project_color('ciano-31_158-210-241_#9ED2F1')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="outlineColor">
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
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="4" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{c9dc918e-e4b4-4c30-ac8a-b986098237c9}" locked="0" class="SvgMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="0,160,222,255,rgb:0,0.62745098039215685,0.87058823529411766,1" name="color"/>
            <Option type="QString" value="0" name="fixedAspectRatio"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDAxbW0iCiAgIGhlaWdodD0iMi43NTAwMDA3bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwMDIgMi43NTAwMDA1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAxMDcwNEEuc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTI2MCIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzIiCiAgICAgaW5rc2NhcGU6Y3g9Ii0wLjkzNzUiCiAgICAgaW5rc2NhcGU6Y3k9IjQuMzEyNSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExMjYzIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMjEuMDYxOTYsLTEwNi4zMjQyNykiPgogICAgPGcKICAgICAgIGlkPSJnOTQ1Ij4KICAgICAgPGNpcmNsZQogICAgICAgICByPSIwLjI1IgogICAgICAgICBjeT0iMTA4Ljc3NDI3IgogICAgICAgICBjeD0iLTIwLjU2MTk2IgogICAgICAgICBpZD0icGF0aDEwNDMiCiAgICAgICAgIHN0eWxlPSJmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOnBhcmFtKG91dGxpbmUpICMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6bWFya2VycyBmaWxsIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMTQ5IgogICAgICAgICBkPSJtIC0yMC44NjIxMSwxMDguNzQ4MzkgMC4xMDAwNCwtMS41NjUgaCAwLjQwMDE5IGwgMC4xMDAwNiwxLjU2NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuNDQ5OTk5OTkiCiAgICAgICAgIGN5PSIxMDYuODI0MjciCiAgICAgICAgIGN4PSItMjAuNTYxOTYiCiAgICAgICAgIGlkPSJwYXRoMTM1NC0zIgogICAgICAgICBzdHlsZT0iZmlsbDpwYXJhbShmaWxsKSAjMDBhMGRlO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGg4MzEiCiAgICAgICAgIGQ9Im0gLTIwLjMxMTYxOCwxMDguNzc0MjcgaCAwLjI0OTY1OCIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoODMxLTQiCiAgICAgICAgIGQ9Im0gLTIxLjA2MTk2LDEwOC43NzQyNyBoIDAuMjQzNDU3IgogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" name="name"/>
            <Option type="QString" value="0,-1.09999999999999987" name="offset"/>
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
                <Option type="Map" name="fillColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="outlineColor">
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
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="5" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{cb22154d-d46d-4085-9b18-b3fa7093d915}" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" name="color"/>
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
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="6" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{076ce0c7-a483-4759-b31f-4892153aefac}" locked="0" class="SimpleMarker">
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
    <rules key="{2e5ca1ab-b6f9-4ece-af56-1ff1d82724a8}">
      <rule filter="&quot;visivel&quot; = 1" key="{9ba70418-dae1-47fb-8ab0-df8e49ecfcd6}" description="Depósito">
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
          <placement geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" lineAnchorPercent="0.5" centroidWhole="0" geometryGeneratorType="PointGeometry" offsetUnits="MM" lineAnchorClipping="0" maxCurvedCharAngleIn="25" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" repeatDistanceUnits="MM" offsetType="0" allowDegraded="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" distUnits="MM" overlapHandling="PreventOverlap" maximumDistanceUnit="MM" xOffset="0.5" dist="0.40000000000000002" rotationAngle="0" layerType="PointGeometry" maximumDistance="0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" repeatDistance="0" quadOffset="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" prioritization="PreferCloser" fitInPolygonOnly="0" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorEnabled="1" lineAnchorTextPoint="CenterOfText" placementFlags="10" centroidInside="0" placement="0" overrunDistance="0" yOffset="-0.5" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" labelPerPart="0" zIndex="0" unplacedVisibility="0" obstacleFactor="1" fontMinPixelSize="3" minFeatureSize="0" obstacleType="1" scaleMin="0" obstacle="1" upsidedownLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" drawLabels="1" mergeLines="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="AlwaysShow">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="CalloutDraw">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="if(  &quot;exibir_linha_rotulo&quot; = 1 ,1,0)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
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
                  <Option type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)" name="expression"/>
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
              <Option type="QString" value="1" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; type=&quot;line&quot; is_animated=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; id=&quot;{fee5684a-738c-4f06-9366-572fa660efb6}&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.1&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option type=&quot;Map&quot; name=&quot;properties&quot;>&lt;Option type=&quot;Map&quot; name=&quot;outlineColor&quot;>&lt;Option type=&quot;bool&quot; value=&quot;true&quot; name=&quot;active&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;project_color('preto-75_75-75-75_#4B4B4B')&quot; name=&quot;expression&quot;/>&lt;Option type=&quot;int&quot; value=&quot;3&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/Option>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
