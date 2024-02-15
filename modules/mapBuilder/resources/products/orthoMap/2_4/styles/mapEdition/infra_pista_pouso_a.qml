<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.24.3-Tisler" labelsEnabled="1">
  <renderer-v2 enableorderby="0" forceraster="0" type="RuleRenderer" symbollevels="0" referencescale="-1">
    <rules key="{83393c81-14ae-42eb-9f9e-52db0cf52949}">
      <rule label="Pista de pouso" symbol="0" filter="tipo = 9 and  &quot;visivel&quot; = 1 and situacao_fisica in (0,1,2,3,4)" key="{2f728894-e52d-48b2-ae4b-5b5f8a9391d4}"/>
      <rule label="Não visível" symbol="1" filter="ELSE" key="{4bdcab68-0285-4e79-94c5-dbb568fec5c4}"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" name="0" alpha="1" type="fill" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="CentroidFill" pass="0">
          <Option type="Map">
            <Option value="0" name="clip_on_current_part_only" type="QString"/>
            <Option value="0" name="clip_points" type="QString"/>
            <Option value="1" name="point_on_all_parts" type="QString"/>
            <Option value="0" name="point_on_surface" type="QString"/>
          </Option>
          <prop v="0" k="clip_on_current_part_only"/>
          <prop v="0" k="clip_points"/>
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" name="@0@0" alpha="1" type="marker" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" locked="0" class="SvgMarker" pass="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="255,255,255,255" name="color" type="QString"/>
                <Option value="0" name="fixedAspectRatio" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgd2lkdGg9IjQuMDc5OTk5OW1tIgogICBoZWlnaHQ9IjQuMDc5OTk5OW1tIgogICB2aWV3Qm94PSIwIDAgNC4wODAwMDAyIDQuMDc5OTk5NSIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTI2NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjEgKDljNmQ0MWU0MTAsIDIwMjItMDctMTQpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJwaXN0YV9wb3Vzby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyMi40IgogICAgIGlua3NjYXBlOmN4PSI2LjAyNjc4NTciCiAgICAgaW5rc2NhcGU6Y3k9IjguNDgyMTQyOSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzkzOCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjI4MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE4NSIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXJvdGF0aW9uPSIwIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyNy44MDIzMywtMTAzLjU2MzcpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTI3LjQwMjMzLDc4Ljk2MzcpIgogICAgICAgaWQ9Imc5MzgiPgogICAgICA8ZWxsaXBzZQogICAgICAgICBjeT0iMjYuNjM5OTk5IgogICAgICAgICBjeD0iMTAxLjY0IgogICAgICAgICBpZD0icGF0aDkwNSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMzODQ2OWQ7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMzODQ2OWQ7c3Ryb2tlLXdpZHRoOjAuMjUyNjY1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjptYXJrZXJzIGZpbGwgc3Ryb2tlIgogICAgICAgICByeD0iMS4zNzM2Njc1IgogICAgICAgICByeT0iMS4zNzM2Njc2IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQtZmlsZW5hbWU9InBpc3RhX3BvdXNvX25vdmEucG5nIgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteGRwaT0iMTA1LjgzMzM0IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteWRwaT0iMTA1LjgzMzM0IiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI5NTA0ODtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAxLjY0MiwyNy44OTIyNDEgLTAuMDA0LC0yLjUwNDQ4MiIKICAgICAgICAgaWQ9InBhdGgxNjg5IiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="57,70,157,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option name="parameters"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="4.08" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="MM" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="255,255,255,255" k="color"/>
              <prop v="0" k="fixedAspectRatio"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgd2lkdGg9IjQuMDc5OTk5OW1tIgogICBoZWlnaHQ9IjQuMDc5OTk5OW1tIgogICB2aWV3Qm94PSIwIDAgNC4wODAwMDAyIDQuMDc5OTk5NSIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTI2NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjEgKDljNmQ0MWU0MTAsIDIwMjItMDctMTQpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJwaXN0YV9wb3Vzby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyMi40IgogICAgIGlua3NjYXBlOmN4PSI2LjAyNjc4NTciCiAgICAgaW5rc2NhcGU6Y3k9IjguNDgyMTQyOSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzkzOCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjI4MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE4NSIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXJvdGF0aW9uPSIwIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyNy44MDIzMywtMTAzLjU2MzcpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTI3LjQwMjMzLDc4Ljk2MzcpIgogICAgICAgaWQ9Imc5MzgiPgogICAgICA8ZWxsaXBzZQogICAgICAgICBjeT0iMjYuNjM5OTk5IgogICAgICAgICBjeD0iMTAxLjY0IgogICAgICAgICBpZD0icGF0aDkwNSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMzODQ2OWQ7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMzODQ2OWQ7c3Ryb2tlLXdpZHRoOjAuMjUyNjY1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjptYXJrZXJzIGZpbGwgc3Ryb2tlIgogICAgICAgICByeD0iMS4zNzM2Njc1IgogICAgICAgICByeT0iMS4zNzM2Njc2IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQtZmlsZW5hbWU9InBpc3RhX3BvdXNvX25vdmEucG5nIgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteGRwaT0iMTA1LjgzMzM0IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteWRwaT0iMTA1LjgzMzM0IiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI5NTA0ODtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAxLjY0MiwyNy44OTIyNDEgLTAuMDA0LC0yLjUwNDQ4MiIKICAgICAgICAgaWQ9InBhdGgxNjg5IiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="57,70,157,255" k="outline_color"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="" k="parameters"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="4.08" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="angle" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="main_angle( $geometry )" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                    <Option name="fillColor" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="project_color('azul72-100_56-70-157_#38469D')" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="project_color('azul72-100_56-70-157_#38469D')" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                  </Option>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="1" alpha="0.5" type="fill" clip_to_extent="1">
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
            <Option value="254,0,254,128" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="no" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="254,0,254,128" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
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
        <layer enabled="1" locked="0" class="CentroidFill" pass="0">
          <Option type="Map">
            <Option value="0" name="clip_on_current_part_only" type="QString"/>
            <Option value="0" name="clip_points" type="QString"/>
            <Option value="1" name="point_on_all_parts" type="QString"/>
            <Option value="0" name="point_on_surface" type="QString"/>
          </Option>
          <prop v="0" k="clip_on_current_part_only"/>
          <prop v="0" k="clip_points"/>
          <prop v="1" k="point_on_all_parts"/>
          <prop v="0" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" name="@1@1" alpha="1" type="marker" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" locked="0" class="SvgMarker" pass="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="255,255,255,255" name="color" type="QString"/>
                <Option value="0" name="fixedAspectRatio" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgd2lkdGg9IjQuMDc5OTk5OW1tIgogICBoZWlnaHQ9IjQuMDc5OTk5OW1tIgogICB2aWV3Qm94PSIwIDAgNC4wODAwMDAyIDQuMDc5OTk5NSIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTI2NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjEgKDljNmQ0MWU0MTAsIDIwMjItMDctMTQpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJwaXN0YV9wb3Vzby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyMi40IgogICAgIGlua3NjYXBlOmN4PSI2LjAyNjc4NTciCiAgICAgaW5rc2NhcGU6Y3k9IjguNDgyMTQyOSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzkzOCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjI4MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE4NSIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXJvdGF0aW9uPSIwIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyNy44MDIzMywtMTAzLjU2MzcpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTI3LjQwMjMzLDc4Ljk2MzcpIgogICAgICAgaWQ9Imc5MzgiPgogICAgICA8ZWxsaXBzZQogICAgICAgICBjeT0iMjYuNjM5OTk5IgogICAgICAgICBjeD0iMTAxLjY0IgogICAgICAgICBpZD0icGF0aDkwNSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMzODQ2OWQ7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMzODQ2OWQ7c3Ryb2tlLXdpZHRoOjAuMjUyNjY1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjptYXJrZXJzIGZpbGwgc3Ryb2tlIgogICAgICAgICByeD0iMS4zNzM2Njc1IgogICAgICAgICByeT0iMS4zNzM2Njc2IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQtZmlsZW5hbWU9InBpc3RhX3BvdXNvX25vdmEucG5nIgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteGRwaT0iMTA1LjgzMzM0IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteWRwaT0iMTA1LjgzMzM0IiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI5NTA0ODtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAxLjY0MiwyNy44OTIyNDEgLTAuMDA0LC0yLjUwNDQ4MiIKICAgICAgICAgaWQ9InBhdGgxNjg5IiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="57,70,157,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option name="parameters"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="4.08" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="MM" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="255,255,255,255" k="color"/>
              <prop v="0" k="fixedAspectRatio"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgd2lkdGg9IjQuMDc5OTk5OW1tIgogICBoZWlnaHQ9IjQuMDc5OTk5OW1tIgogICB2aWV3Qm94PSIwIDAgNC4wODAwMDAyIDQuMDc5OTk5NSIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTI2NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjEgKDljNmQ0MWU0MTAsIDIwMjItMDctMTQpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJwaXN0YV9wb3Vzby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSIyMi40IgogICAgIGlua3NjYXBlOmN4PSI2LjAyNjc4NTciCiAgICAgaW5rc2NhcGU6Y3k9IjguNDgyMTQyOSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzkzOCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjI4MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9IjE4NSIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXJvdGF0aW9uPSIwIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyNy44MDIzMywtMTAzLjU2MzcpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTI3LjQwMjMzLDc4Ljk2MzcpIgogICAgICAgaWQ9Imc5MzgiPgogICAgICA8ZWxsaXBzZQogICAgICAgICBjeT0iMjYuNjM5OTk5IgogICAgICAgICBjeD0iMTAxLjY0IgogICAgICAgICBpZD0icGF0aDkwNSIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMzODQ2OWQ7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMzODQ2OWQ7c3Ryb2tlLXdpZHRoOjAuMjUyNjY1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjptYXJrZXJzIGZpbGwgc3Ryb2tlIgogICAgICAgICByeD0iMS4zNzM2Njc1IgogICAgICAgICByeT0iMS4zNzM2Njc2IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQtZmlsZW5hbWU9InBpc3RhX3BvdXNvX25vdmEucG5nIgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteGRwaT0iMTA1LjgzMzM0IgogICAgICAgICBpbmtzY2FwZTpleHBvcnQteWRwaT0iMTA1LjgzMzM0IiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojZmZmZmZmO3N0cm9rZS13aWR0aDowLjI5NTA0ODtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gMTAxLjY0MiwyNy44OTIyNDEgLTAuMDA0LC0yLjUwNDQ4MiIKICAgICAgICAgaWQ9InBhdGgxNjg5IiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg==" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="57,70,157,255" k="outline_color"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="" k="parameters"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="4.08" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="angle" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="main_angle( $geometry )" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
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
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{e46cdce6-91bd-434d-92a9-cad89aa7a3f6}">
      <rule filter="&quot;visivel&quot; = 1" description="Pista de Pouso" key="{83c9d866-e146-4074-a677-21a972d60390}">
        <settings calloutType="simple">
          <text-style fieldName="texto_edicao" legendString="Aa" fontFamily="Noto Sans" textColor="255,255,255,255" isExpression="0" fontWordSpacing="0" useSubstitutions="0" textOpacity="1" fontKerning="1" fontSizeUnit="Point" previewBkgrdColor="255,255,255,255" fontWeight="50" fontSize="8" textOrientation="horizontal" fontStrikeout="0" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" namedStyle="Condensed" fontUnderline="0" allowHtml="0" capitalization="0" fontLetterSpacing="0" fontItalic="0" multilineHeight="0.80000000000000004">
            <families/>
            <text-buffer bufferJoinStyle="128" bufferSize="0.5" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="1" bufferBlendMode="0" bufferColor="89,94,168,255" bufferOpacity="1" bufferSizeUnits="Point" bufferNoFill="1"/>
            <text-mask maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},1,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},2,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},3,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},4,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},5,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},6,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},7,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},8,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},9,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},10,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},11,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},12,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},13,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},14,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},15,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},16,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},17,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},18,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},19,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},20,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},21,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},22,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},23,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},24,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},25,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},26,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},27,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},28,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},29,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},30,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},31,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},32,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},33,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},34,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},35,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},36,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},37,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},38,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},39,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},40,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},41,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},42,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},43,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},44,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},45,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},46,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},47,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},48,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},49,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},50,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},51,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},52,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},53,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},54,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},55,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},56,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},57,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},58,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},59,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},60,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},61,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},62,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},63,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},64,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},65,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},66,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},67,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},68,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},69,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},70,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},71,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},72,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},73,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},74,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},75,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},76,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},77,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},78,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},79,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},80,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},81,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},82,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},83,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},84,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},85,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},86,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},87,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},88,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},89,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},90,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},91,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},92,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},93,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},94,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},95,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},96,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},97,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},98,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},99,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},100,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},101,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},102,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},103,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},104,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},105,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},106,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},107,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},108,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},109,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},110,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},111,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},112,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},113,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},114,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},115,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},116,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},117,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},118,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},119,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},120,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},121,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},122,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},123,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},124,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},125,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},126,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},127,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},128,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},129,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},130,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},131,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},132,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},133,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},134,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},135,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},136,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},137,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},138,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},139,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},140,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},141,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},142,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},143,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},144,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},145,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},146,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},147,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},148,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},149,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},150,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},151,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},152,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},153,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},154,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},155,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},156,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},157,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},158,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},159,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},160,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},161,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},162,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},163,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},164,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},165,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},166,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},167,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},168,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},169,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},170,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},171,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},172,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},173,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},174,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},175,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},176,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},177,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},178,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},179,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},180,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},181,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},182,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},183,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},184,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},185,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},186,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},187,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},188,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},189,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},190,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},191,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},192,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},193,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},194,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},195,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},196,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},197,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},198,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},199,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},200,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},201,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},202,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},203,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},204,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},205,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},206,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},207,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},208,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},209,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},210,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},211,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},212,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},213,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},214,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},215,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},216,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},217,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},218,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},219,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},220,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},221,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},222,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},223,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},224,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},225,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},226,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},227,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},228,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},229,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},230,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},231,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},232,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},233,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},234,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},235,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},236,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},237,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},238,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},239,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},240,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},241,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},242,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},243,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},244,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},245,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},246,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},247,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},248,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},249,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},250,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},251,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},252,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},253,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},254,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},255,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},256,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},257,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},258,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},259,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},260,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},261,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},262,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},263,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},264,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},265,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},266,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},267,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},268,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},269,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},270,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},271,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},272,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},273,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},274,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},275,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},276,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},277,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},278,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},279,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},280,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},281,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},282,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},283,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},284,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},285,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},286,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},287,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},288,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},289,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},290,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},291,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},292,0;auxiliar_moldura_782af138_2dc0_4c31_adeb_39ad8cfbee44,{c25e5dbf-0dcf-4e49-ab12-bbc5a6dc78de},293,0" maskSize="0.20000000000000001" maskEnabled="1" maskOpacity="1" maskType="0" maskJoinStyle="128"/>
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
          <text-format autoWrapLength="0" multilineAlign="1" formatNumbers="0" reverseDirectionSymbol="0" placeDirectionSymbol="0" wrapChar="|" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" plussign="0" decimals="3" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0"/>
          <placement placement="0" rotationAngle="0" dist="0.40000000000000002" quadOffset="2" maxCurvedCharAngleIn="25" xOffset="0.5" centroidInside="0" overrunDistance="0" offsetUnits="MM" fitInPolygonOnly="0" overrunDistanceUnit="MM" yOffset="-0.5" offsetType="0" rotationUnit="AngleDegrees" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" lineAnchorType="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" layerType="PolygonGeometry" polygonPlacementFlags="3" repeatDistance="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorType="PolygonGeometry" placementFlags="10" maxCurvedCharAngleOut="-25" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" distUnits="MM" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidWhole="0" lineAnchorPercent="0.5"/>
          <rendering drawLabels="1" obstacleFactor="1.2" fontMinPixelSize="3" mergeLines="0" zIndex="0" minFeatureSize="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleType="1" scaleVisibility="0" upsidedownLabels="0" labelPerPart="0" fontLimitPixelSize="0" scaleMin="0" scaleMax="0" obstacle="1" limitNumLabels="0" displayAll="0" unplacedVisibility="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL AND&#xd;&#xa;with_variable(&#xd;&#xa; 'ponto',&#xd;&#xa;  make_point(&quot;label_x&quot;, &quot;label_y&quot;) ,&#xd;&#xa;with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersects(@moldura,  @ponto) &#xd;&#xa;ELSE&#xd;&#xa;true&#xd;&#xa;END))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('azul72-100_56-70-157_#38469D')" name="expression" type="QString"/>
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
                  <Option value="if( &quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL,&#xd;&#xa;with_variable(&#xd;&#xa; 'ponto',&#xd;&#xa;  make_point(&quot;label_x&quot;, &quot;label_y&quot;) ,&#xd;&#xa;with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersects(@moldura,  @ponto) &#xd;&#xa;ELSE&#xd;&#xa;true&#xd;&#xa;END))&#xd;&#xa;,&#xd;&#xa;with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;true&#xd;&#xa;END&#xd;&#xa;)&#xd;&#xa;)" name="expression" type="QString"/>
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
  <layerGeometryType>2</layerGeometryType>
</qgis>
