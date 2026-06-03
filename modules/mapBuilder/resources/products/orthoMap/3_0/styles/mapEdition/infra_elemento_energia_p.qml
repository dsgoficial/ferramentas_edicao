<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.24.3-Tisler" labelsEnabled="1">
  <renderer-v2 enableorderby="0" forceraster="0" type="RuleRenderer" symbollevels="0" referencescale="-1">
    <rules key="{25682ab1-6685-4b72-bd84-ab43b1b6be63}">
      <rule label="Subestação" symbol="0" filter="&quot;visivel&quot; = 1 and tipo in (1801, 1802)" key="{f3c9e054-ac03-49cd-8f47-aef832fa7175}"/>
      <rule label="Estação" symbol="1" filter="visivel = 1 and tipo in (405,406,407,408,409,498)" key="{ac588ad9-be9d-49cf-9c76-93912c479a6e}"/>
      <rule label="Não visível" symbol="2" filter="ELSE" key="{bdeda3ad-d92d-49f8-a29c-d1f4e15e43c5}"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" name="0" alpha="1" type="marker" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="EllipseMarker" pass="0">
          <Option type="Map">
            <Option value="90" name="angle" type="QString"/>
            <Option value="square" name="cap_style" type="QString"/>
            <Option value="255,255,255,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="round" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.15" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="3.2" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1.7" name="symbol_height" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="symbol_height_map_unit_scale" type="QString"/>
            <Option value="MM" name="symbol_height_unit" type="QString"/>
            <Option value="rectangle" name="symbol_name" type="QString"/>
            <Option value="3.2" name="symbol_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="symbol_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="symbol_width_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="90" k="angle"/>
          <prop v="square" k="cap_style"/>
          <prop v="255,255,255,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.15" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="3.2" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1.7" k="symbol_height"/>
          <prop v="3x:0,0,0,0,0,0" k="symbol_height_map_unit_scale"/>
          <prop v="MM" k="symbol_height_unit"/>
          <prop v="rectangle" k="symbol_name"/>
          <prop v="3.2" k="symbol_width"/>
          <prop v="3x:0,0,0,0,0,0" k="symbol_width_map_unit_scale"/>
          <prop v="MM" k="symbol_width_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('branco-100_255-255-255_#FFFFFF')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('preto-0_0-0-0_#000000')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" class="SvgMarker" pass="0">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="121,135,200,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVsZW1fZW5lcmdpYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxMjYuNzEzNTQiCiAgICAgaW5rc2NhcGU6Y3g9IjAuNDgxNDAwODIiCiAgICAgaW5rc2NhcGU6Y3k9IjYuMjM0NTM1MiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTcwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC43NDA0NDI1OCwtMjAwLjYyMTI5KSI+CiAgICA8cGF0aAogICAgICAgc3R5bGU9ImZpbGw6cGFyYW0oZmlsbCkgIzc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNDcxMDU7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0iTSAtMC42NzY3MjcyOSwyMDIuNjExMzQgViAyMDIuMTg0OSBIIC0wLjI1MDI4IDAuMTc2MTY3MjggdiAwLjQyNjQ0IDAuNDI2NDYgSCAtMC4yNTAyOCAtMC42NzY3MjcyOSBaIgogICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIC0wLjI0MDQ0LDIwMC42NTg3MyAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICBpZD0icGF0aDExMjciCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
            <Option value="-0.00000000000000006,-0.00000000000000006" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="121,135,200,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVsZW1fZW5lcmdpYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxMjYuNzEzNTQiCiAgICAgaW5rc2NhcGU6Y3g9IjAuNDgxNDAwODIiCiAgICAgaW5rc2NhcGU6Y3k9IjYuMjM0NTM1MiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTcwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC43NDA0NDI1OCwtMjAwLjYyMTI5KSI+CiAgICA8cGF0aAogICAgICAgc3R5bGU9ImZpbGw6cGFyYW0oZmlsbCkgIzc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNDcxMDU7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0iTSAtMC42NzY3MjcyOSwyMDIuNjExMzQgViAyMDIuMTg0OSBIIC0wLjI1MDI4IDAuMTc2MTY3MjggdiAwLjQyNjQ0IDAuNDI2NDYgSCAtMC4yNTAyOCAtMC42NzY3MjcyOSBaIgogICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIC0wLjI0MDQ0LDIwMC42NTg3MyAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICBpZD0icGF0aDExMjciCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogIDwvZz4KPC9zdmc+Cg==" k="name"/>
          <prop v="-0.00000000000000006,-0.00000000000000006" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('azul72-42_121-135-200_#7987C8')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('preto-0_0-0-0_#000000')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="1" alpha="1" type="marker" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="square" name="cap_style" type="QString"/>
            <Option value="255,255,255,0" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="circle" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="no" name="outline_style" type="QString"/>
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
          <prop v="square" k="cap_style"/>
          <prop v="255,255,255,0" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
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
      <symbol force_rhr="0" name="2" alpha="0.4" type="marker" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="EllipseMarker" pass="0">
          <Option type="Map">
            <Option value="90" name="angle" type="QString"/>
            <Option value="square" name="cap_style" type="QString"/>
            <Option value="254,0,254,255" name="color" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="round" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.15" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="3.2" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1.7" name="symbol_height" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="symbol_height_map_unit_scale" type="QString"/>
            <Option value="MM" name="symbol_height_unit" type="QString"/>
            <Option value="rectangle" name="symbol_name" type="QString"/>
            <Option value="3.2" name="symbol_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="symbol_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="symbol_width_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="90" k="angle"/>
          <prop v="square" k="cap_style"/>
          <prop v="254,0,254,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.15" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="3.2" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1.7" k="symbol_height"/>
          <prop v="3x:0,0,0,0,0,0" k="symbol_height_map_unit_scale"/>
          <prop v="MM" k="symbol_height_unit"/>
          <prop v="rectangle" k="symbol_name"/>
          <prop v="3.2" k="symbol_width"/>
          <prop v="3x:0,0,0,0,0,0" k="symbol_width_map_unit_scale"/>
          <prop v="MM" k="symbol_width_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" class="SvgMarker" pass="0">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="121,135,200,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVsZW1fZW5lcmdpYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxMjYuNzEzNTQiCiAgICAgaW5rc2NhcGU6Y3g9IjAuNDgxNDAwODIiCiAgICAgaW5rc2NhcGU6Y3k9IjYuMjM0NTM1MiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTcwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC43NDA0NDI1OCwtMjAwLjYyMTI5KSI+CiAgICA8cGF0aAogICAgICAgc3R5bGU9ImZpbGw6cGFyYW0oZmlsbCkgIzc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNDcxMDU7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0iTSAtMC42NzY3MjcyOSwyMDIuNjExMzQgViAyMDIuMTg0OSBIIC0wLjI1MDI4IDAuMTc2MTY3MjggdiAwLjQyNjQ0IDAuNDI2NDYgSCAtMC4yNTAyOCAtMC42NzY3MjcyOSBaIgogICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIC0wLjI0MDQ0LDIwMC42NTg3MyAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICBpZD0icGF0aDExMjciCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
            <Option value="-0.00000000000000006,-0.00000000000000006" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="121,135,200,255" k="color"/>
          <prop v="0" k="fixedAspectRatio"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wMDAwMDUxbW0iCiAgIGhlaWdodD0iMi40OTk4OTk5bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjAwMDAwNTIgMi40OTk4OTk4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxNTczIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjEuMiAoYjhlMjViZTgzMywgMjAyMi0wMi0wNSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVsZW1fZW5lcmdpYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNTY3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIxMjYuNzEzNTQiCiAgICAgaW5rc2NhcGU6Y3g9IjAuNDgxNDAwODIiCiAgICAgaW5rc2NhcGU6Y3k9IjYuMjM0NTM1MiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNTcwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC43NDA0NDI1OCwtMjAwLjYyMTI5KSI+CiAgICA8cGF0aAogICAgICAgc3R5bGU9ImZpbGw6cGFyYW0oZmlsbCkgIzc5ODdjODtmaWxsLW9wYWNpdHk6MTtzdHJva2U6cGFyYW0ob3V0bGluZSkgIzAwMDAwMDtzdHJva2Utd2lkdGg6MC4xNDcxMDU7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0iTSAtMC42NzY3MjcyOSwyMDIuNjExMzQgViAyMDIuMTg0OSBIIC0wLjI1MDI4IDAuMTc2MTY3MjggdiAwLjQyNjQ0IDAuNDI2NDYgSCAtMC4yNTAyOCAtMC42NzY3MjcyOSBaIgogICAgICAgaWQ9InBhdGg0MTk2IgogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTpwYXJhbShvdXRsaW5lKSAjMDAwMDAwO3N0cm9rZS13aWR0aDowLjE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOmJldmVsO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIC0wLjI0MDQ0LDIwMC42NTg3MyAtMC40MjUsMC43Mzc1IGggMC44NSBsIC0wLjQ0OTYyLDAuNzcwODEiCiAgICAgICBpZD0icGF0aDExMjciCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjIiAvPgogIDwvZz4KPC9zdmc+Cg==" k="name"/>
          <prop v="-0.00000000000000006,-0.00000000000000006" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="" k="parameters"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('azul72-42_121-135-200_#7987C8')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('preto-0_0-0-0_#000000')" name="expression" type="QString"/>
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
    <rules key="{030a2f2b-4111-4689-badd-7a423c30f0a4}">
      <rule filter="&quot;visivel&quot; = 1" description="Elemento energia" key="{576e834d-581c-47ab-be0e-09183a842911}">
        <settings calloutType="simple">
          <text-style fieldName="texto_edicao" legendString="Aa" fontFamily="Noto Sans" textColor="255,255,255,255" isExpression="0" fontWordSpacing="0" useSubstitutions="0" textOpacity="1" fontKerning="1" fontSizeUnit="Point" previewBkgrdColor="255,255,255,255" fontWeight="50" fontSize="7" textOrientation="horizontal" fontStrikeout="0" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" namedStyle="Condensed" fontUnderline="0" allowHtml="0" capitalization="0" fontLetterSpacing="0" fontItalic="0" multilineHeight="0.80000000000000004">
            <families/>
            <text-buffer bufferJoinStyle="128" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="1" bufferBlendMode="0" bufferColor="0,0,0,255" bufferOpacity="1" bufferSizeUnits="Point" bufferNoFill="1"/>
            <text-mask maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},1,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},2,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},3,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},4,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},5,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},6,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},7,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},8,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},9,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},10,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},11,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},12,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},13,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},14,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},15,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},16,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},17,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},18,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},19,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},20,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},21,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},22,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},23,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},24,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},25,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},26,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},27,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},28,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},29,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},30,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},31,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},32,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},33,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},34,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},35,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},36,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},37,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},38,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},39,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},40,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},41,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},42,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},43,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},44,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},45,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},46,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},47,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},48,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},49,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},50,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},51,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},52,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},53,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},54,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},55,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},56,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},57,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},58,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},59,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},60,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},61,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},62,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},63,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},64,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},65,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},66,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},67,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},68,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},69,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},70,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},71,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},72,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},73,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},74,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},75,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},76,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},77,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},78,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},79,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},80,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},81,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},82,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},83,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},84,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},85,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},86,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},87,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},88,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},89,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},90,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},91,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},92,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},93,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},94,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},95,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},96,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},97,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},98,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},99,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},100,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},101,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},102,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},103,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},104,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},105,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},106,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},107,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},108,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},109,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},110,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},111,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},112,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},113,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},114,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},115,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},116,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},117,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},118,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},119,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},120,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},121,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},122,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},123,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},124,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},125,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},126,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},127,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},128,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},129,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},130,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},131,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},132,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},133,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},134,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},135,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},136,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},137,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},138,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},139,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},140,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},141,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},142,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},143,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},144,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},145,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},146,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},147,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},148,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},149,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},150,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},151,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},152,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},153,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},154,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},155,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},156,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},157,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},158,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},159,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},160,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},161,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},162,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},163,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},164,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},165,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},166,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},167,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},168,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},169,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},170,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},171,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},172,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},173,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},174,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},175,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},176,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},177,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},178,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},179,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},180,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},181,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},182,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},183,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},184,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},185,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},186,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},187,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},188,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},189,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},190,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},191,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},192,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},193,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},194,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},195,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},196,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},197,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},198,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},199,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},200,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},201,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},202,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},203,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},204,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},205,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},206,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},207,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},208,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},209,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},210,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},211,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},212,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},213,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},214,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},215,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},216,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},217,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},218,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},219,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},220,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},221,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},222,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},223,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},224,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},225,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},226,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},227,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},228,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},229,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},230,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},231,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},232,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},233,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},234,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},235,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},236,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},237,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},238,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},239,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},240,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},241,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},242,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},243,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},244,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},245,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},246,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},247,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},248,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},249,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},250,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},251,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},252,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},253,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},254,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},255,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},256,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},257,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},258,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},259,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},260,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},261,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},262,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},263,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},264,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},265,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},266,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},267,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},268,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},269,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},270,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},271,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},272,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},273,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},274,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},275,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},276,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},277,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},278,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},279,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},280,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},281,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},282,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},283,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},284,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},285,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},286,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},287,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},288,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},289,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},290,0;auxiliar_moldura_82543d5b_4934_4a57_999a_5c15e2480b5c,{6ed272bb-fe50-4d4e-a53e-e9777ad6958c},291,0" maskSize="0.20000000000000001" maskEnabled="1" maskOpacity="1" maskType="0" maskJoinStyle="128"/>
            <background shapeSizeUnit="MM" shapeRotation="0" shapeBorderWidthUnit="MM" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeType="0" shapeRotationType="0" shapeSVGFile="" shapeSizeY="0" shapeOffsetUnit="MM" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiY="0" shapeOpacity="1" shapeBorderWidth="0" shapeJoinStyle="64" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderColor="128,128,128,255" shapeRadiiX="0">
              <symbol force_rhr="0" name="markerSymbol" alpha="1" type="marker" clip_to_extent="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="231,113,72,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="0,0,0,255" name="outline_color" type="QString"/>
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
                  <prop v="square" k="cap_style"/>
                  <prop v="231,113,72,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="0,0,0,255" k="outline_color"/>
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
              <symbol force_rhr="0" name="fillSymbol" alpha="1" type="fill" clip_to_extent="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleFill" pass="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
                  <prop v="255,255,255,255" k="color"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="128,128,128,255" k="outline_color"/>
                  <prop v="no" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="solid" k="style"/>
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
            <shadow shadowUnder="0" shadowScale="100" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadius="1.5" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format autoWrapLength="0" multilineAlign="0" formatNumbers="0" reverseDirectionSymbol="0" placeDirectionSymbol="0" wrapChar="|" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" plussign="0" decimals="3" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0"/>
          <placement placement="0" rotationAngle="0" dist="1.5" quadOffset="2" maxCurvedCharAngleIn="25" xOffset="0.5" centroidInside="0" overrunDistance="0" offsetUnits="MM" fitInPolygonOnly="0" overrunDistanceUnit="MM" yOffset="-0.5" offsetType="0" rotationUnit="AngleDegrees" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" lineAnchorType="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" layerType="PointGeometry" polygonPlacementFlags="2" repeatDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" geometryGeneratorType="PointGeometry" placementFlags="10" maxCurvedCharAngleOut="-25" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" distUnits="MM" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidWhole="0" lineAnchorPercent="0.5"/>
          <rendering drawLabels="1" obstacleFactor="1" fontMinPixelSize="3" mergeLines="0" zIndex="0" minFeatureSize="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleType="1" scaleVisibility="0" upsidedownLabels="0" labelPerPart="0" fontLimitPixelSize="0" scaleMin="0" scaleMax="0" obstacle="1" limitNumLabels="0" displayAll="0" unplacedVisibility="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('preto-0_0-0-0_#000000')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('branco-100_255-255-255_#FFFFFF')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="1" name="enabled" type="QString"/>
              <Option value="centroid" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;254,0,254,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;254,0,254,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="5" name="minLength" type="double"/>
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
