<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="0" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 referencescale="-1" type="RuleRenderer" forceraster="0" symbollevels="0" enableorderby="0">
    <rules key="{5adbac42-96ad-4569-9e33-64a725a4a2b7}">
      <rule filter=" &quot;visivel&quot; = 1" label="Visível" key="{85a4068f-9f1d-4ae7-a047-fe2944f76002}">
        <rule symbol="0" description="Campo/quadra e pista de competição" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (2, 3)" label="Sports Ground" key="{b62df8d3-c1a1-4aee-a484-aa1a15dbd3d5}"/>
        <rule symbol="1" description="Cemitério" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (1)" label="P20209D" key="{a131d610-94e3-415b-a512-7976af042905}"/>
        <rule symbol="2" description="Farol" filter="tipo = 1101" label="Farol" key="{859fca67-2193-42c3-b93c-1698144888de}"/>
        <rule symbol="3" filter="&quot;tipo&quot; = 1601" label="Estação Climatológica Principal" key="{95cd89bd-7348-4071-a4cb-0187b8fcc85b}"/>
        <rule symbol="4" filter="ELSE" key="{1c06e6e5-2f0b-4ec6-ab5b-0f29c0ad826e}"/>
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
            <Option value="200,224,217,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="square" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="23,158,106,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.15" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2.15" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="200,224,217,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="23,158,106,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2.15"/>
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
        <layer enabled="1" locked="0" pass="0" class="FontMarker">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="S" type="QString" name="chr"/>
            <Option value="23,158,106,255" type="QString" name="color"/>
            <Option value="Noto Sans" type="QString" name="font"/>
            <Option value="Condensed" type="QString" name="font_style"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,-0.34999999999999998" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0,0,0,255" type="QString" name="outline_color"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="6" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="Point" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="chr" v="S"/>
          <prop k="color" v="23,158,106,255"/>
          <prop k="font" v="Noto Sans"/>
          <prop k="font_style" v="Condensed"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,-0.34999999999999998"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="size" v="6"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="Point"/>
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
      <symbol alpha="1" type="marker" force_rhr="0" name="1" clip_to_extent="1">
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
            <Option value="200,224,217,255" type="QString" name="color"/>
            <Option value="0" type="QString" name="fixedAspectRatio"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMi4wMTA4MzMzbW0iCiAgIGhlaWdodD0iMS41MDExODU4bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjAxMDgzMzMgMS41MDExODU4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IkNFTUlURVJJTy5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMyIj4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGg4MzEiPgogICAgICA8cGF0aAogICAgICAgICBkPSJNIDAsMC4wMjggSCA1OTUuMjc1IFYgODQxLjg4OSBIIDAgWiIKICAgICAgICAgaWQ9InBhdGg4MjkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTE1MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksNjYxLjkzOSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDExNDkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTE1OSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksNjYxLjg4OSBIIDUwNC40NSBWIDczMi43OSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTE1NyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTUyMSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksNTUwLjU4OSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDE1MTkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTUyOSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksNTUwLjUzOSBIIDUwNC40NSBWIDYyMS40NCBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTUyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTg5MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksNDM5LjIzOSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDE4ODkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTg5OSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksNDM5LjE4OSBIIDUwNC40NSBWIDUxMC4wOSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTg5NyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTkyOSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjY0LjUsNDc0Ljc4OSBoIDIuODUgdiAxLjk1MSBoIC0yLjg1IHoiCiAgICAgICAgIGlkPSJwYXRoMTkyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjI3MyI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMzg1Ljk1LDQ2Ny44MzkgaCAyLjg1IHYgMS45NTEgaCAtMi44NSB6IgogICAgICAgICBpZD0icGF0aDIyNzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDIyOTMiPgogICAgICA8cGF0aAogICAgICAgICBkPSJtIDIwOS45LDMyNy44ODkgaCAyOTQuNSB2IDcwLjg1IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgyMjkxIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDIzMDEiPgogICAgICA8cGF0aAogICAgICAgICBkPSJNIDIwOS45LDMyNy44MzkgSCA1MDQuNDUgViAzOTguNzQgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDIyOTkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDI2NjMiPgogICAgICA8cGF0aAogICAgICAgICBkPSJtIDIwOS45LDIwNS4wMzkgaCAyOTQuNSB2IDcwLjg1IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgyNjYxIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDI2NzEiPgogICAgICA8cGF0aAogICAgICAgICBkPSJNIDIwOS45LDIwNC45ODkgSCA1MDQuNDUgViAyNzUuODkgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDI2NjkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8L2NsaXBQYXRoPgogIDwvZGVmcz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iOS4xNjA3ODQzIgogICAgIGlua3NjYXBlOmN4PSItMzIuNTI5OTY2IgogICAgIGlua3NjYXBlOmN5PSItMjAuNzQwNTgyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9InRydWUiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy15PSIzNzkiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzbmFwLWJib3g9InRydWUiCiAgICAgaW5rc2NhcGU6YmJveC1ub2Rlcz0idHJ1ZSIKICAgICBmaXQtbWFyZ2luLXRvcD0iMCIKICAgICBmaXQtbWFyZ2luLWxlZnQ9IjAiCiAgICAgZml0LW1hcmdpbi1yaWdodD0iMCIKICAgICBmaXQtbWFyZ2luLWJvdHRvbT0iMCIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC02LjQ5NDU4MzQsLTI5NC4zOTk0MSkiPgogICAgPGcKICAgICAgIGlkPSJsYXllcjEtMiIKICAgICAgIGlua3NjYXBlOmxhYmVsPSJMYXllciAxIgogICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICA8ZwogICAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTAuNTI5NDY0LDEwLjc0NjIxMSkiCiAgICAgICAgIGlkPSJnNTU5NyIKICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTE5IgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSIKICAgICAgICAgICBzdHlsZT0ic3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLW9wYWNpdHk6MSI+CiAgICAgICAgICA8cGF0aAogICAgICAgICAgICAgZD0ibSAyNjMuMDUsNDcyLjgzOSBoIDUuNyIKICAgICAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuNzA4NjYwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6My44NjM2OTk5MTtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICAgIGlkPSJwYXRoMTkyMSIKICAgICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgICAgPC9nPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTIzIgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSIKICAgICAgICAgICBzdHlsZT0ic3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLW9wYWNpdHk6MSI+CiAgICAgICAgICA8ZwogICAgICAgICAgICAgaWQ9ImcxOTI1IgogICAgICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgICAgICA8ZwogICAgICAgICAgICAgaWQ9ImcxOTM3IgogICAgICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgICAgICA8ZwogICAgICAgICAgICAgICBjbGlwLXBhdGg9InVybCgjY2xpcFBhdGgxOTI5KSIKICAgICAgICAgICAgICAgaWQ9ImcxOTM1IgogICAgICAgICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O3N0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgICAgICAgIDxnCiAgICAgICAgICAgICAgICAgaWQ9ImcxOTMzIgogICAgICAgICAgICAgICAgIHN0eWxlPSJzdHJva2U6IzRiNGI0YjtzdHJva2Utb3BhY2l0eToxIj4KICAgICAgICAgICAgICAgIDxwYXRoCiAgICAgICAgICAgICAgICAgICBkPSJtIDI2Ni45NSw0NzUuMTg5IHYgMCBjIDAsMC4yIC0wLjA1LDAuNCAtMC4xNSwwLjYgLTAuMDUsMC4yIC0wLjIsMC4zNSAtMC4zNSwwLjQ1IHYgMCAwIDAgYyAtMC4yLDAuMSAtMC4zNSwwLjE1IC0wLjU1LDAuMTUgLTAuMiwwIC0wLjM1LC0wLjA1IC0wLjU1LC0wLjE1IHYgMCAwIDAgYyAtMC4xNSwtMC4xIC0wLjI1LC0wLjI1IC0wLjM1LC0wLjQ1IC0wLjEsLTAuMiAtMC4xNSwtMC40IC0wLjE1LC0wLjYiCiAgICAgICAgICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojNGI0YjRiO3N0cm9rZS13aWR0aDowLjcwODY2MDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjMuODYzNjk5OTE7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgICAgICAgICBpZD0icGF0aDE5MzEiCiAgICAgICAgICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgICAgICA8ZwogICAgICAgICAgIGlkPSJnMTkzOSIKICAgICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjM1Mjc3Nzc3LDAsMCwtMC4zNTI3Nzc3NywtNzUuNzc0MTQ1LDQ1MS44MzY0NykiCiAgICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgICAgPHBhdGgKICAgICAgICAgICAgIGQ9Im0gMjY0Ljg1LDQ3NS4zMzkgdiAtMi41IGggMi4xIHYgMi41IgogICAgICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzRiNGI0YjtzdHJva2Utd2lkdGg6MC43MDg2NjAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDozLjg2MzY5OTkxO3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICAgICAgaWQ9InBhdGgxOTQxIgogICAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgICA8L2c+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="23,158,106,255" type="QString" name="outline_color"/>
            <Option value="0.15" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option name="parameters"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2.01083" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="200,224,217,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMi4wMTA4MzMzbW0iCiAgIGhlaWdodD0iMS41MDExODU4bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjAxMDgzMzMgMS41MDExODU4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IkNFTUlURVJJTy5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMyIj4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGg4MzEiPgogICAgICA8cGF0aAogICAgICAgICBkPSJNIDAsMC4wMjggSCA1OTUuMjc1IFYgODQxLjg4OSBIIDAgWiIKICAgICAgICAgaWQ9InBhdGg4MjkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTE1MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksNjYxLjkzOSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDExNDkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTE1OSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksNjYxLjg4OSBIIDUwNC40NSBWIDczMi43OSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTE1NyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTUyMSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksNTUwLjU4OSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDE1MTkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTUyOSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksNTUwLjUzOSBIIDUwNC40NSBWIDYyMS40NCBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTUyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTg5MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksNDM5LjIzOSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDE4ODkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTg5OSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksNDM5LjE4OSBIIDUwNC40NSBWIDUxMC4wOSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTg5NyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMTkyOSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjY0LjUsNDc0Ljc4OSBoIDIuODUgdiAxLjk1MSBoIC0yLjg1IHoiCiAgICAgICAgIGlkPSJwYXRoMTkyNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjI3MyI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMzg1Ljk1LDQ2Ny44MzkgaCAyLjg1IHYgMS45NTEgaCAtMi44NSB6IgogICAgICAgICBpZD0icGF0aDIyNzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDIyOTMiPgogICAgICA8cGF0aAogICAgICAgICBkPSJtIDIwOS45LDMyNy44ODkgaCAyOTQuNSB2IDcwLjg1IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgyMjkxIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDIzMDEiPgogICAgICA8cGF0aAogICAgICAgICBkPSJNIDIwOS45LDMyNy44MzkgSCA1MDQuNDUgViAzOTguNzQgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDIyOTkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDI2NjMiPgogICAgICA8cGF0aAogICAgICAgICBkPSJtIDIwOS45LDIwNS4wMzkgaCAyOTQuNSB2IDcwLjg1IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgyNjYxIgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBzdHlsZT0iY2xpcC1ydWxlOmV2ZW5vZGQiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDI2NzEiPgogICAgICA8cGF0aAogICAgICAgICBkPSJNIDIwOS45LDIwNC45ODkgSCA1MDQuNDUgViAyNzUuODkgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDI2NjkiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8L2NsaXBQYXRoPgogIDwvZGVmcz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iOS4xNjA3ODQzIgogICAgIGlua3NjYXBlOmN4PSItMzIuNTI5OTY2IgogICAgIGlua3NjYXBlOmN5PSItMjAuNzQwNTgyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9InRydWUiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy15PSIzNzkiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzbmFwLWJib3g9InRydWUiCiAgICAgaW5rc2NhcGU6YmJveC1ub2Rlcz0idHJ1ZSIKICAgICBmaXQtbWFyZ2luLXRvcD0iMCIKICAgICBmaXQtbWFyZ2luLWxlZnQ9IjAiCiAgICAgZml0LW1hcmdpbi1yaWdodD0iMCIKICAgICBmaXQtbWFyZ2luLWJvdHRvbT0iMCIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC02LjQ5NDU4MzQsLTI5NC4zOTk0MSkiPgogICAgPGcKICAgICAgIGlkPSJsYXllcjEtMiIKICAgICAgIGlua3NjYXBlOmxhYmVsPSJMYXllciAxIgogICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICA8ZwogICAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTAuNTI5NDY0LDEwLjc0NjIxMSkiCiAgICAgICAgIGlkPSJnNTU5NyIKICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTE5IgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSIKICAgICAgICAgICBzdHlsZT0ic3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLW9wYWNpdHk6MSI+CiAgICAgICAgICA8cGF0aAogICAgICAgICAgICAgZD0ibSAyNjMuMDUsNDcyLjgzOSBoIDUuNyIKICAgICAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuNzA4NjYwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6My44NjM2OTk5MTtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICAgIGlkPSJwYXRoMTkyMSIKICAgICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgICAgPC9nPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTIzIgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSIKICAgICAgICAgICBzdHlsZT0ic3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLW9wYWNpdHk6MSI+CiAgICAgICAgICA8ZwogICAgICAgICAgICAgaWQ9ImcxOTI1IgogICAgICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgICAgICA8ZwogICAgICAgICAgICAgaWQ9ImcxOTM3IgogICAgICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgICAgICA8ZwogICAgICAgICAgICAgICBjbGlwLXBhdGg9InVybCgjY2xpcFBhdGgxOTI5KSIKICAgICAgICAgICAgICAgaWQ9ImcxOTM1IgogICAgICAgICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O3N0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgICAgICAgIDxnCiAgICAgICAgICAgICAgICAgaWQ9ImcxOTMzIgogICAgICAgICAgICAgICAgIHN0eWxlPSJzdHJva2U6IzRiNGI0YjtzdHJva2Utb3BhY2l0eToxIj4KICAgICAgICAgICAgICAgIDxwYXRoCiAgICAgICAgICAgICAgICAgICBkPSJtIDI2Ni45NSw0NzUuMTg5IHYgMCBjIDAsMC4yIC0wLjA1LDAuNCAtMC4xNSwwLjYgLTAuMDUsMC4yIC0wLjIsMC4zNSAtMC4zNSwwLjQ1IHYgMCAwIDAgYyAtMC4yLDAuMSAtMC4zNSwwLjE1IC0wLjU1LDAuMTUgLTAuMiwwIC0wLjM1LC0wLjA1IC0wLjU1LC0wLjE1IHYgMCAwIDAgYyAtMC4xNSwtMC4xIC0wLjI1LC0wLjI1IC0wLjM1LC0wLjQ1IC0wLjEsLTAuMiAtMC4xNSwtMC40IC0wLjE1LC0wLjYiCiAgICAgICAgICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojNGI0YjRiO3N0cm9rZS13aWR0aDowLjcwODY2MDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjMuODYzNjk5OTE7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgICAgICAgICBpZD0icGF0aDE5MzEiCiAgICAgICAgICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgICAgICA8ZwogICAgICAgICAgIGlkPSJnMTkzOSIKICAgICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjM1Mjc3Nzc3LDAsMCwtMC4zNTI3Nzc3NywtNzUuNzc0MTQ1LDQ1MS44MzY0NykiCiAgICAgICAgICAgc3R5bGU9InN0cm9rZTojNGI0YjRiO3N0cm9rZS1vcGFjaXR5OjEiPgogICAgICAgICAgPHBhdGgKICAgICAgICAgICAgIGQ9Im0gMjY0Ljg1LDQ3NS4zMzkgdiAtMi41IGggMi4xIHYgMi41IgogICAgICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzRiNGI0YjtzdHJva2Utd2lkdGg6MC43MDg2NjAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDozLjg2MzY5OTkxO3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICAgICAgaWQ9InBhdGgxOTQxIgogICAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgICA8L2c+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="23,158,106,255"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2.01083"/>
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
            <Option value="200,224,217,255" type="QString" name="color"/>
            <Option value="0" type="QString" name="fixedAspectRatio"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMi42Mzk5MjA1bW0iCiAgIGhlaWdodD0iMy4wOTk5MDQ1bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjYzOTkyMDUgMy4wOTk5MDQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAxMTIwNkEuc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTI2MCIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSI1LjIwODU5OTEiCiAgICAgaW5rc2NhcGU6Y3k9IjkuOTEyMTIxOSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzI3MjYiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA4MCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxODU3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSIxOTEyIgogICAgIGlua3NjYXBlOndpbmRvdy15PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4zNTkzNCwtMTIwLjYzNjIyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEzMC45OTQwNyw5Ni40ODYxMTkpIgogICAgICAgaWQ9ImcyNzI2Ij4KICAgICAgPHBhdGgKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMTAzIgogICAgICAgICBkPSJtIDEwOS4zMjk3MywyNyAtMC4xLC0yLjQgaCAtMC41NSBsIC0wLjEsMi40IHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTAwMDAwMDI7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMDk1IgogICAgICAgICBkPSJtIDEwOC40NTQ3MywyNi45NSBoIDEiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuMjUiCiAgICAgICAgIGN5PSIyNi45NTAwMDEiCiAgICAgICAgIGN4PSIxMDguOTU0NzIiCiAgICAgICAgIGlkPSJwYXRoMzA5MyIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMzIxIgogICAgICAgICBkPSJtIDEwOS40NTc3MywyNC42NjUwNDggMC43Nzk0MiwtMC40NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzRiNGI0YjtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC43MDAwMDEiCiAgICAgICAgIHg9IjEwOC43Nzk3MyIKICAgICAgICAgaGVpZ2h0PSIwLjI1IgogICAgICAgICB3aWR0aD0iMC4zNDk5OTk5OSIKICAgICAgICAgaWQ9InJlY3QxMzI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6ZmlsbCBtYXJrZXJzIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzRiNGI0YjtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS40NTcyMywyNS4wMTUwNDggMC43Nzk0MiwwLjQ1IgogICAgICAgICBpZD0icGF0aDEzMjciCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMDguNDUxNjQsMjQuNjY1MDQ4IC0wLjc3OTQxLC0wLjQ1IgogICAgICAgICBpZD0icGF0aDEzMzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTMzMyIKICAgICAgICAgZD0ibSAxMDguNDUyMTQsMjUuMDE1MDQ4IC0wLjc3OTQxLDAuNDUiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" type="QString" name="name"/>
            <Option value="-0.10000000000000001,-1.30000000000000004" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="23,158,106,255" type="QString" name="outline_color"/>
            <Option value="0.15" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option name="parameters"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2.64" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="200,224,217,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMi42Mzk5MjA1bW0iCiAgIGhlaWdodD0iMy4wOTk5MDQ1bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjYzOTkyMDUgMy4wOTk5MDQ0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IlAxMTIwNkEuc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgeG1sbnM6c29kaXBvZGk9Imh0dHA6Ly9zb2RpcG9kaS5zb3VyY2Vmb3JnZS5uZXQvRFREL3NvZGlwb2RpLTAuZHRkIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIKICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMTI2MCIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMzEuNjc4Mzg0IgogICAgIGlua3NjYXBlOmN4PSI1LjIwODU5OTEiCiAgICAgaW5rc2NhcGU6Y3k9IjkuOTEyMTIxOSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzI3MjYiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTA4MCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxODU3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSIxOTEyIgogICAgIGlua3NjYXBlOndpbmRvdy15PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEyNjMiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4zNTkzNCwtMTIwLjYzNjIyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEzMC45OTQwNyw5Ni40ODYxMTkpIgogICAgICAgaWQ9ImcyNzI2Ij4KICAgICAgPHBhdGgKICAgICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjY2NjYyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMTAzIgogICAgICAgICBkPSJtIDEwOS4zMjk3MywyNyAtMC4xLC0yLjQgaCAtMC41NSBsIC0wLjEsMi40IHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTAwMDAwMDI7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMDk1IgogICAgICAgICBkPSJtIDEwOC40NTQ3MywyNi45NSBoIDEiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuMjUiCiAgICAgICAgIGN5PSIyNi45NTAwMDEiCiAgICAgICAgIGN4PSIxMDguOTU0NzIiCiAgICAgICAgIGlkPSJwYXRoMzA5MyIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxMzIxIgogICAgICAgICBkPSJtIDEwOS40NTc3MywyNC42NjUwNDggMC43Nzk0MiwtMC40NSIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzRiNGI0YjtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyNC43MDAwMDEiCiAgICAgICAgIHg9IjEwOC43Nzk3MyIKICAgICAgICAgaGVpZ2h0PSIwLjI1IgogICAgICAgICB3aWR0aD0iMC4zNDk5OTk5OSIKICAgICAgICAgaWQ9InJlY3QxMzI1IgogICAgICAgICBzdHlsZT0ib3BhY2l0eToxO2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6ZmlsbCBtYXJrZXJzIHN0cm9rZSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzRiNGI0YjtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS40NTcyMywyNS4wMTUwNDggMC43Nzk0MiwwLjQ1IgogICAgICAgICBpZD0icGF0aDEzMjciCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMDguNDUxNjQsMjQuNjY1MDQ4IC0wLjc3OTQxLC0wLjQ1IgogICAgICAgICBpZD0icGF0aDEzMzEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTMzMyIKICAgICAgICAgZD0ibSAxMDguNDUyMTQsMjUuMDE1MDQ4IC0wLjc3OTQxLDAuNDUiCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiM0YjRiNGI7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
          <prop k="offset" v="-0.10000000000000001,-1.30000000000000004"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="23,158,106,255"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2.64"/>
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
            <Option value="255,255,255,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.13" type="QString" name="outline_width"/>
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
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.13"/>
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
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" pass="0" class="FontMarker">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="M" type="QString" name="chr"/>
            <Option value="0,0,0,255" type="QString" name="color"/>
            <Option value="Noto Sans" type="QString" name="font"/>
            <Option value="Regular" type="QString" name="font_style"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,-0.25" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="1.5" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="chr" v="M"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="font" v="Noto Sans"/>
          <prop k="font_style" v="Regular"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,-0.25"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="size" v="1.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="marker" force_rhr="0" name="4" clip_to_extent="1">
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
