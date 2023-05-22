<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 symbollevels="0" referencescale="-1" enableorderby="0" type="RuleRenderer" forceraster="0">
    <rules key="{25682ab1-6685-4b72-bd84-ab43b1b6be63}">
      <rule key="{e279d530-d87b-4cd5-87af-0a11b5963c2a}" label="Subestação" symbol="0" filter="&quot;visivel&quot; = 1 and tipo in (1801, 1802)"/>
      <rule key="{ac588ad9-be9d-49cf-9c76-93912c479a6e}" label="Estação" symbol="1" filter="visivel = 1 and tipo in (405,406,407,408,409,498)"/>
    </rules>
    <symbols>
      <symbol alpha="1" name="0" force_rhr="0" clip_to_extent="1" type="marker">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="EllipseMarker" pass="0">
          <Option type="Map">
            <Option name="angle" value="90" type="QString"/>
            <Option name="cap_style" value="square" type="QString"/>
            <Option name="color" value="255,255,255,255" type="QString"/>
            <Option name="horizontal_anchor_point" value="1" type="QString"/>
            <Option name="joinstyle" value="round" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="0,0,0,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.15" type="QString"/>
            <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="size" value="3.2" type="QString"/>
            <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="size_unit" value="MM" type="QString"/>
            <Option name="symbol_height" value="1.7" type="QString"/>
            <Option name="symbol_height_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="symbol_height_unit" value="MM" type="QString"/>
            <Option name="symbol_name" value="rectangle" type="QString"/>
            <Option name="symbol_width" value="3.2" type="QString"/>
            <Option name="symbol_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="symbol_width_unit" value="MM" type="QString"/>
            <Option name="vertical_anchor_point" value="1" type="QString"/>
          </Option>
          <prop k="angle" v="90"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="size" v="3.2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="symbol_height" v="1.7"/>
          <prop k="symbol_height_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="symbol_height_unit" v="MM"/>
          <prop k="symbol_name" v="rectangle"/>
          <prop k="symbol_width" v="3.2"/>
          <prop k="symbol_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="symbol_width_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('branco-100_255-255-255_#FFFFFF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('preto-0_0-0-0_#000000')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" class="SvgMarker" pass="0">
          <Option type="Map">
            <Option name="angle" value="0" type="QString"/>
            <Option name="color" value="121,135,200,255" type="QString"/>
            <Option name="fixedAspectRatio" value="0" type="QString"/>
            <Option name="horizontal_anchor_point" value="1" type="QString"/>
            <Option name="name" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVsZW1fZW5lcmdpYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxMjYuNzEzNTQiCiAgICAgaW5rc2NhcGU6Y3g9IjAuNDgxNDAwODIiCiAgICAgaW5rc2NhcGU6Y3k9IjYuMjM0NTM1MiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTcwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC43NDA0NDI1OCwtMjAwLjYyMTI5KSI+CiAgICA8cGF0aAogICAgICAgc3R5bGU9ImZpbGw6cGFyYW0oZmlsbCkgIzc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNDcxMDU7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0iTSAtMC42NzY3MjcyOSwyMDIuNjExMzQgViAyMDIuMTg0OSBIIC0wLjI1MDI4IDAuMTc2MTY3MjggdiAwLjQyNjQ0IDAuNDI2NDYgSCAtMC4yNTAyOCAtMC42NzY3MjcyOSBaIgogICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIC0wLjI0MDQ0LDIwMC42NTg3MyAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICBpZD0icGF0aDExMjciCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogIDwvZz4KPC9zdmc+Cg==" type="QString"/>
            <Option name="offset" value="-0.00000000000000006,-0.00000000000000006" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="0,0,0,255" type="QString"/>
            <Option name="outline_width" value="0" type="QString"/>
            <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="parameters"/>
            <Option name="scale_method" value="diameter" type="QString"/>
            <Option name="size" value="1" type="QString"/>
            <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="size_unit" value="MM" type="QString"/>
            <Option name="vertical_anchor_point" value="1" type="QString"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="121,135,200,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVsZW1fZW5lcmdpYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxMjYuNzEzNTQiCiAgICAgaW5rc2NhcGU6Y3g9IjAuNDgxNDAwODIiCiAgICAgaW5rc2NhcGU6Y3k9IjYuMjM0NTM1MiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTcwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC43NDA0NDI1OCwtMjAwLjYyMTI5KSI+CiAgICA8cGF0aAogICAgICAgc3R5bGU9ImZpbGw6cGFyYW0oZmlsbCkgIzc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNDcxMDU7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0iTSAtMC42NzY3MjcyOSwyMDIuNjExMzQgViAyMDIuMTg0OSBIIC0wLjI1MDI4IDAuMTc2MTY3MjggdiAwLjQyNjQ0IDAuNDI2NDYgSCAtMC4yNTAyOCAtMC42NzY3MjcyOSBaIgogICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIC0wLjI0MDQ0LDIwMC42NTg3MyAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICBpZD0icGF0aDExMjciCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogIDwvZz4KPC9zdmc+Cg=="/>
          <prop k="offset" v="-0.00000000000000006,-0.00000000000000006"/>
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('azul72-42_121-135-200_#7987C8')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('preto-0_0-0-0_#000000')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="1" force_rhr="0" clip_to_extent="1" type="marker">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
          <Option type="Map">
            <Option name="angle" value="0" type="QString"/>
            <Option name="cap_style" value="square" type="QString"/>
            <Option name="color" value="255,255,255,0" type="QString"/>
            <Option name="horizontal_anchor_point" value="1" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="name" value="circle" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="no" type="QString"/>
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
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
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
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{5e506be9-850d-43a5-8011-3ea31a8f4ef0}">
      <rule description="Elemento energia" key="{5ef26269-d027-48a3-ae58-c18ab2e2957a}" filter="&quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" allowHtml="0" fontSizeUnit="Point" fontWeight="50" fontUnderline="0" fontStrikeout="0" fieldName="texto_edicao" blendMode="0" fontSize="7" legendString="Aa" textOrientation="horizontal" namedStyle="Condensed" textOpacity="1" fontKerning="1" fontItalic="0" fontWordSpacing="0" useSubstitutions="0" fontFamily="Noto Sans" capitalization="0" fontLetterSpacing="0" multilineHeight="0.80000000000000004" textColor="255,255,255,255" isExpression="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferOpacity="1" bufferSizeUnits="Point" bufferBlendMode="0" bufferColor="0,0,0,255" bufferJoinStyle="128" bufferNoFill="1" bufferSize="1" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <text-mask maskSizeUnits="MM" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0.20000000000000001" maskEnabled="1" maskedSymbolLayers="auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},1,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},2,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},3,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},4,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},5,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},6,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},7,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},8,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},9,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},10,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},11,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},12,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},13,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},14,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},15,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},16,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},17,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},18,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},19,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},20,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},21,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},22,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},23,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},24,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},25,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},26,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},27,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},28,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},29,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},30,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},31,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},32,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},33,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},34,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},35,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},36,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},37,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},38,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},39,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},40,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},41,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},42,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},43,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},44,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},45,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},46,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},47,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},48,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},49,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},50,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},51,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},52,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},53,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},54,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},55,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},56,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},57,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},58,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},59,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},60,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},61,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},62,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},63,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},64,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},65,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},66,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},67,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},68,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},69,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},70,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},71,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},72,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},73,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},74,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},75,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},76,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},77,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},78,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},79,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},80,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},81,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},82,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},83,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},84,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},85,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},86,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},87,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},88,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},89,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},90,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},91,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},92,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},93,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},94,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},95,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},96,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},97,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},98,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},99,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},100,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},101,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},102,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},103,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},104,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},105,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},106,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},107,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},108,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},109,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},110,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},111,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},112,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},113,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},114,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},115,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},116,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},117,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},118,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},119,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},120,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},121,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},122,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},123,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},124,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},125,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},126,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},127,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},128,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},129,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},130,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},131,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},132,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},133,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},134,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},135,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},136,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},137,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},138,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},139,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},140,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},141,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},142,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},143,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},144,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},145,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},146,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},147,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},148,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},149,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},150,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},151,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},152,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},153,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},154,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},155,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},156,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},157,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},158,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},159,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},160,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},161,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},162,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},163,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},164,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},165,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},166,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},167,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},168,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},169,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},170,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},171,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},172,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},173,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},174,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},175,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},176,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},177,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},178,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},179,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},180,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},181,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},182,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},183,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},184,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},185,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},186,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},187,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},188,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},189,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},190,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},191,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},192,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},193,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},194,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},195,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},196,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},197,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},198,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},199,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},200,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},201,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},202,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},203,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},204,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},205,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},206,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},207,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},208,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},209,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},210,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},211,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},212,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},213,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},214,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},215,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},216,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},217,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},218,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},219,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},220,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},221,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},222,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},223,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},224,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},225,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},226,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},227,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},228,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},229,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},230,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},231,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},232,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},233,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},234,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},235,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},236,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},237,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},238,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},239,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},240,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},241,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},242,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},243,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},244,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},245,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},246,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},247,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},248,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},249,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},250,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},251,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},252,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},253,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},254,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},255,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},256,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},257,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},258,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},259,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},260,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},261,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},262,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},263,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},264,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},265,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},266,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},267,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},268,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},269,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},270,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},271,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},272,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},273,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},274,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},275,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},276,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},277,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},278,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},279,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},280,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},281,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},282,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},283,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},284,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},285,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},286,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},287,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},288,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},289,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},290,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},291,0" maskOpacity="1"/>
            <background shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeBlendMode="0" shapeType="0" shapeBorderWidth="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSizeY="0" shapeSizeX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeRotation="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeUnit="MM" shapeRotationType="0" shapeJoinStyle="64" shapeRadiiUnit="MM" shapeOpacity="1" shapeRadiiY="0">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="231,113,72,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="0,0,0,255" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleFill" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowDraw="0" shadowRadius="1.5" shadowOffsetUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowOffsetGlobal="1" shadowBlendMode="6" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" autoWrapLength="0" multilineAlign="0" wrapChar="|" rightDirectionSymbol=">" reverseDirectionSymbol="0" formatNumbers="0" decimals="3" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" placeDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" yOffset="-0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="1.5" lineAnchorPercent="0.5" lineAnchorType="0" offsetUnits="MM" xOffset="0.5" repeatDistanceUnits="MM" lineAnchorClipping="0" layerType="PointGeometry" preserveRotation="1" overrunDistanceUnit="MM" placement="0" centroidInside="0" rotationAngle="0" priority="5" fitInPolygonOnly="0" placementFlags="10" centroidWhole="0" geometryGeneratorEnabled="1" quadOffset="2" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" polygonPlacementFlags="2" overrunDistance="0" repeatDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" distUnits="MM"/>
          <rendering scaleMin="0" minFeatureSize="0" scaleMax="0" scaleVisibility="0" limitNumLabels="0" labelPerPart="0" fontMinPixelSize="3" mergeLines="0" drawLabels="1" obstacleType="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" maxNumLabels="2000" zIndex="0" unplacedVisibility="0" displayAll="0" upsidedownLabels="0" obstacleFactor="1" obstacle="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('preto-0_0-0-0_#000000')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('branco-100_255-255-255_#FFFFFF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" type="QString"/>
                  <Option name="type" value="3" type="int"/>
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
                <Option name="Show" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
