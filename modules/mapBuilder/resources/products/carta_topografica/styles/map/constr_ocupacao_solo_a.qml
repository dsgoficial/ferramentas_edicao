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
    <rules key="{9ed15ebd-9075-4a2b-8fe6-a3b74ad93330}">
      <rule symbol="0" key="{64172743-95f3-4cfa-a40a-134f00af8238}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (1)" label="Cemiterio"/>
      <rule description="Campo Quadra e Pista de competição" symbol="1" key="{680adb26-7a08-46b7-9ad6-d14dfd30db89}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (2,3)" label="Sports Ground"/>
      <rule description="Pátio aeroportuário" symbol="2" key="{888b1751-710f-44fc-910d-b3f83817c648}" filter="&quot;tipo&quot; = 409" label="A10811A"/>
      <rule symbol="3" key="{7a2f3cfd-1fb8-4ea3-99e9-2f1b2ccdd402}" filter="ELSE"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" name="0" force_rhr="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="255,255,255,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,4,255" name="outline_color" type="QString"/>
            <Option value="no" name="outline_style" type="QString"/>
            <Option value="0.1" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,255,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,4,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.1" k="outline_width"/>
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
        <layer class="SimpleLine" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="align_dash_pattern" type="QString"/>
            <Option value="square" name="capstyle" type="QString"/>
            <Option value="1;0" name="customdash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
            <Option value="MM" name="customdash_unit" type="QString"/>
            <Option value="0" name="dash_pattern_offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
            <Option value="0" name="draw_inside_polygon" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0,4,255" name="line_color" type="QString"/>
            <Option value="solid" name="line_style" type="QString"/>
            <Option value="0.1" name="line_width" type="QString"/>
            <Option value="MM" name="line_width_unit" type="QString"/>
            <Option value="0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0" name="ring_filter" type="QString"/>
            <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
            <Option value="1" name="use_custom_dash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,4,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.1" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="CentroidFill" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="clip_on_current_part_only" type="QString"/>
            <Option value="0" name="clip_points" type="QString"/>
            <Option value="0" name="point_on_all_parts" type="QString"/>
            <Option value="1" name="point_on_surface" type="QString"/>
          </Option>
          <prop v="0" k="clip_on_current_part_only"/>
          <prop v="0" k="clip_points"/>
          <prop v="0" k="point_on_all_parts"/>
          <prop v="1" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" name="@0@2" force_rhr="0" type="marker" alpha="1">
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
                <Option value="255,0,0,255" name="color" type="QString"/>
                <Option value="0" name="fixedAspectRatio" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMi4wMTA4MzMzbW0iCiAgIGhlaWdodD0iMS41MDExODU4bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjAxMDgzMzMgMS41MDExODU4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjQgKDVkYTY4OWMzMTMsIDIwMTktMDEtMTQpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJQMjAyMDlELnN2ZyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczIiPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDgzMSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMCwwLjAyOCBIIDU5NS4yNzUgViA4NDEuODg5IEggMCBaIgogICAgICAgICBpZD0icGF0aDgyOSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxMTUxIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyMDkuOSw2NjEuOTM5IGggMjk0LjUgdiA3MC44NSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTE0OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxMTU5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0iTSAyMDkuOSw2NjEuODg5IEggNTA0LjQ1IFYgNzMyLjc5IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgxMTU3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxNTIxIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyMDkuOSw1NTAuNTg5IGggMjk0LjUgdiA3MC44NSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTUxOSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxNTI5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0iTSAyMDkuOSw1NTAuNTM5IEggNTA0LjQ1IFYgNjIxLjQ0IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgxNTI3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxODkxIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyMDkuOSw0MzkuMjM5IGggMjk0LjUgdiA3MC44NSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTg4OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxODk5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0iTSAyMDkuOSw0MzkuMTg5IEggNTA0LjQ1IFYgNTEwLjA5IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgxODk3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxOTI5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyNjQuNSw0NzQuNzg5IGggMi44NSB2IDEuOTUxIGggLTIuODUgeiIKICAgICAgICAgaWQ9InBhdGgxOTI3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgyMjczIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAzODUuOTUsNDY3LjgzOSBoIDIuODUgdiAxLjk1MSBoIC0yLjg1IHoiCiAgICAgICAgIGlkPSJwYXRoMjI3MSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjI5MyI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksMzI3Ljg4OSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDIyOTEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjMwMSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksMzI3LjgzOSBIIDUwNC40NSBWIDM5OC43NCBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMjI5OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjY2MyI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksMjA1LjAzOSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDI2NjEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjY3MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksMjA0Ljk4OSBIIDUwNC40NSBWIDI3NS44OSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMjY2OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgPC9kZWZzPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI5LjE2MDc4NDMiCiAgICAgaW5rc2NhcGU6Y3g9Ii0zMi41NjAwNTUiCiAgICAgaW5rc2NhcGU6Y3k9Ii0yMC43OTIwMzYiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0idHJ1ZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c25hcC1iYm94PSJ0cnVlIgogICAgIGlua3NjYXBlOmJib3gtbm9kZXM9InRydWUiCiAgICAgZml0LW1hcmdpbi10b3A9IjAiCiAgICAgZml0LW1hcmdpbi1sZWZ0PSIwIgogICAgIGZpdC1tYXJnaW4tcmlnaHQ9IjAiCiAgICAgZml0LW1hcmdpbi1ib3R0b209IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGU+PC9kYzp0aXRsZT4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC02LjQ5NDU4MzQsLTI5NC4zOTk0MSkiPgogICAgPGcKICAgICAgIGlkPSJsYXllcjEtMiIKICAgICAgIGlua3NjYXBlOmxhYmVsPSJMYXllciAxIj4KICAgICAgPGcKICAgICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEwLjUyOTQ2NCwxMC43NDYyMTEpIgogICAgICAgICBpZD0iZzU1OTciPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTE5IgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSI+CiAgICAgICAgICA8cGF0aAogICAgICAgICAgICAgZD0ibSAyNjMuMDUsNDcyLjgzOSBoIDUuNyIKICAgICAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuNzA4NjYwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6My44NjM2OTk5MTtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICAgIGlkPSJwYXRoMTkyMSIKICAgICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgICAgPC9nPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTIzIgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSI+CiAgICAgICAgICA8ZwogICAgICAgICAgICAgaWQ9ImcxOTI1IiAvPgogICAgICAgICAgPGcKICAgICAgICAgICAgIGlkPSJnMTkzNyI+CiAgICAgICAgICAgIDxnCiAgICAgICAgICAgICAgIGNsaXAtcGF0aD0idXJsKCNjbGlwUGF0aDE5MjkpIgogICAgICAgICAgICAgICBpZD0iZzE5MzUiCiAgICAgICAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTkiPgogICAgICAgICAgICAgIDxnCiAgICAgICAgICAgICAgICAgaWQ9ImcxOTMzIj4KICAgICAgICAgICAgICAgIDxwYXRoCiAgICAgICAgICAgICAgICAgICBkPSJtIDI2Ni45NSw0NzUuMTg5IHYgMCBjIDAsMC4yIC0wLjA1LDAuNCAtMC4xNSwwLjYgLTAuMDUsMC4yIC0wLjIsMC4zNSAtMC4zNSwwLjQ1IHYgMCAwIDAgYyAtMC4yLDAuMSAtMC4zNSwwLjE1IC0wLjU1LDAuMTUgLTAuMiwwIC0wLjM1LC0wLjA1IC0wLjU1LC0wLjE1IHYgMCAwIDAgYyAtMC4xNSwtMC4xIC0wLjI1LC0wLjI1IC0wLjM1LC0wLjQ1IC0wLjEsLTAuMiAtMC4xNSwtMC40IC0wLjE1LC0wLjYiCiAgICAgICAgICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjcwODY2MDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjMuODYzNjk5OTE7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgICAgICAgICBpZD0icGF0aDE5MzEiCiAgICAgICAgICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgICAgICA8ZwogICAgICAgICAgIGlkPSJnMTkzOSIKICAgICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjM1Mjc3Nzc3LDAsMCwtMC4zNTI3Nzc3NywtNzUuNzc0MTQ1LDQ1MS44MzY0NykiPgogICAgICAgICAgPHBhdGgKICAgICAgICAgICAgIGQ9Im0gMjY0Ljg1LDQ3NS4zMzkgdiAtMi41IGggMi4xIHYgMi41IgogICAgICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC43MDg2NjAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDozLjg2MzY5OTkxO3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICAgICAgaWQ9InBhdGgxOTQxIgogICAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgICA8L2c+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option name="parameters"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="2.01083" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="MM" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="255,0,0,255" k="color"/>
              <prop v="0" k="fixedAspectRatio"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMi4wMTA4MzMzbW0iCiAgIGhlaWdodD0iMS41MDExODU4bW0iCiAgIHZpZXdCb3g9IjAgMCAyLjAxMDgzMzMgMS41MDExODU4IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIwLjkyLjQgKDVkYTY4OWMzMTMsIDIwMTktMDEtMTQpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJQMjAyMDlELnN2ZyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczIiPgogICAgPGNsaXBQYXRoCiAgICAgICBjbGlwUGF0aFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIKICAgICAgIGlkPSJjbGlwUGF0aDgzMSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMCwwLjAyOCBIIDU5NS4yNzUgViA4NDEuODg5IEggMCBaIgogICAgICAgICBpZD0icGF0aDgyOSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxMTUxIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyMDkuOSw2NjEuOTM5IGggMjk0LjUgdiA3MC44NSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTE0OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxMTU5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0iTSAyMDkuOSw2NjEuODg5IEggNTA0LjQ1IFYgNzMyLjc5IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgxMTU3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxNTIxIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyMDkuOSw1NTAuNTg5IGggMjk0LjUgdiA3MC44NSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTUxOSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxNTI5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0iTSAyMDkuOSw1NTAuNTM5IEggNTA0LjQ1IFYgNjIxLjQ0IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgxNTI3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxODkxIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyMDkuOSw0MzkuMjM5IGggMjk0LjUgdiA3MC44NSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMTg4OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgc3R5bGU9ImNsaXAtcnVsZTpldmVub2RkIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxODk5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0iTSAyMDkuOSw0MzkuMTg5IEggNTA0LjQ1IFYgNTEwLjA5IEggMjA5LjkgWiIKICAgICAgICAgaWQ9InBhdGgxODk3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgxOTI5Ij4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAyNjQuNSw0NzQuNzg5IGggMi44NSB2IDEuOTUxIGggLTIuODUgeiIKICAgICAgICAgaWQ9InBhdGgxOTI3IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgY2xpcFBhdGhVbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICBpZD0iY2xpcFBhdGgyMjczIj4KICAgICAgPHBhdGgKICAgICAgICAgZD0ibSAzODUuOTUsNDY3LjgzOSBoIDIuODUgdiAxLjk1MSBoIC0yLjg1IHoiCiAgICAgICAgIGlkPSJwYXRoMjI3MSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjI5MyI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksMzI3Ljg4OSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDIyOTEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjMwMSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksMzI3LjgzOSBIIDUwNC40NSBWIDM5OC43NCBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMjI5OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjY2MyI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Im0gMjA5LjksMjA1LjAzOSBoIDI5NC41IHYgNzAuODUgSCAyMDkuOSBaIgogICAgICAgICBpZD0icGF0aDI2NjEiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHN0eWxlPSJjbGlwLXJ1bGU6ZXZlbm9kZCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8Y2xpcFBhdGgKICAgICAgIGNsaXBQYXRoVW5pdHM9InVzZXJTcGFjZU9uVXNlIgogICAgICAgaWQ9ImNsaXBQYXRoMjY3MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIGQ9Ik0gMjA5LjksMjA0Ljk4OSBIIDUwNC40NSBWIDI3NS44OSBIIDIwOS45IFoiCiAgICAgICAgIGlkPSJwYXRoMjY2OSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgPC9kZWZzPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI5LjE2MDc4NDMiCiAgICAgaW5rc2NhcGU6Y3g9Ii0zMi41NjAwNTUiCiAgICAgaW5rc2NhcGU6Y3k9Ii0yMC43OTIwMzYiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0idHJ1ZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c25hcC1iYm94PSJ0cnVlIgogICAgIGlua3NjYXBlOmJib3gtbm9kZXM9InRydWUiCiAgICAgZml0LW1hcmdpbi10b3A9IjAiCiAgICAgZml0LW1hcmdpbi1sZWZ0PSIwIgogICAgIGZpdC1tYXJnaW4tcmlnaHQ9IjAiCiAgICAgZml0LW1hcmdpbi1ib3R0b209IjAiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGU+PC9kYzp0aXRsZT4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC02LjQ5NDU4MzQsLTI5NC4zOTk0MSkiPgogICAgPGcKICAgICAgIGlkPSJsYXllcjEtMiIKICAgICAgIGlua3NjYXBlOmxhYmVsPSJMYXllciAxIj4KICAgICAgPGcKICAgICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEwLjUyOTQ2NCwxMC43NDYyMTEpIgogICAgICAgICBpZD0iZzU1OTciPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTE5IgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSI+CiAgICAgICAgICA8cGF0aAogICAgICAgICAgICAgZD0ibSAyNjMuMDUsNDcyLjgzOSBoIDUuNyIKICAgICAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjAuNzA4NjYwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6My44NjM2OTk5MTtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgICAgIGlkPSJwYXRoMTkyMSIKICAgICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgICAgPC9nPgogICAgICAgIDxnCiAgICAgICAgICAgaWQ9ImcxOTIzIgogICAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuMzUyNzc3NzcsMCwwLC0wLjM1Mjc3Nzc3LC03NS43NzQxNDUsNDUxLjgzNjQ3KSI+CiAgICAgICAgICA8ZwogICAgICAgICAgICAgaWQ9ImcxOTI1IiAvPgogICAgICAgICAgPGcKICAgICAgICAgICAgIGlkPSJnMTkzNyI+CiAgICAgICAgICAgIDxnCiAgICAgICAgICAgICAgIGNsaXAtcGF0aD0idXJsKCNjbGlwUGF0aDE5MjkpIgogICAgICAgICAgICAgICBpZD0iZzE5MzUiCiAgICAgICAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTkiPgogICAgICAgICAgICAgIDxnCiAgICAgICAgICAgICAgICAgaWQ9ImcxOTMzIj4KICAgICAgICAgICAgICAgIDxwYXRoCiAgICAgICAgICAgICAgICAgICBkPSJtIDI2Ni45NSw0NzUuMTg5IHYgMCBjIDAsMC4yIC0wLjA1LDAuNCAtMC4xNSwwLjYgLTAuMDUsMC4yIC0wLjIsMC4zNSAtMC4zNSwwLjQ1IHYgMCAwIDAgYyAtMC4yLDAuMSAtMC4zNSwwLjE1IC0wLjU1LDAuMTUgLTAuMiwwIC0wLjM1LC0wLjA1IC0wLjU1LC0wLjE1IHYgMCAwIDAgYyAtMC4xNSwtMC4xIC0wLjI1LC0wLjI1IC0wLjM1LC0wLjQ1IC0wLjEsLTAuMiAtMC4xNSwtMC40IC0wLjE1LC0wLjYiCiAgICAgICAgICAgICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDAwMDAwO3N0cm9rZS13aWR0aDowLjcwODY2MDAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjMuODYzNjk5OTE7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgICAgICAgICAgICBpZD0icGF0aDE5MzEiCiAgICAgICAgICAgICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgICAgICA8ZwogICAgICAgICAgIGlkPSJnMTkzOSIKICAgICAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjM1Mjc3Nzc3LDAsMCwtMC4zNTI3Nzc3NywtNzUuNzc0MTQ1LDQ1MS44MzY0NykiPgogICAgICAgICAgPHBhdGgKICAgICAgICAgICAgIGQ9Im0gMjY0Ljg1LDQ3NS4zMzkgdiAtMi41IGggMi4xIHYgMi41IgogICAgICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6MC43MDg2NjAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDozLjg2MzY5OTkxO3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICAgICAgaWQ9InBhdGgxOTQxIgogICAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgICA8L2c+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="" k="parameters"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2.01083" k="size"/>
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
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="1" force_rhr="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="200,224,217,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="23,158,106,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.15" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="200,224,217,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="23,158,106,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.15" k="outline_width"/>
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
        <layer class="CentroidFill" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" name="clip_on_current_part_only" type="QString"/>
            <Option value="1" name="clip_points" type="QString"/>
            <Option value="0" name="point_on_all_parts" type="QString"/>
            <Option value="1" name="point_on_surface" type="QString"/>
          </Option>
          <prop v="0" k="clip_on_current_part_only"/>
          <prop v="1" k="clip_points"/>
          <prop v="0" k="point_on_all_parts"/>
          <prop v="1" k="point_on_surface"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" name="@1@1" force_rhr="0" type="marker" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer class="FontMarker" locked="0" pass="0" enabled="1">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="S" name="chr" type="QString"/>
                <Option value="23,158,106,255" name="color" type="QString"/>
                <Option value="Noto Sans" name="font" type="QString"/>
                <Option value="Condensed" name="font_style" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option value="6" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="Point" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="S" k="chr"/>
              <prop v="23,158,106,255" k="color"/>
              <prop v="Noto Sans" k="font"/>
              <prop v="Condensed" k="font_style"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="6" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="Point" k="size_unit"/>
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
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="2" force_rhr="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="192,199,233,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="56,70,157,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.1" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="192,199,233,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="56,70,157,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.1" k="outline_width"/>
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
      <symbol clip_to_extent="1" name="3" force_rhr="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="204,0,3,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="82,82,82,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="204,0,3,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="82,82,82,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
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
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{b3a3d625-8798-4851-9af5-3af969830a4c}">
      <rule description="Ocupação do solo" key="{3c429764-6896-4c9b-b4f6-18cfa3cabdb7}">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" capitalization="0" textOrientation="horizontal" fontSize="6" fontStrikeout="0" fontUnderline="0" fontItalic="0" fieldName="texto_edicao" isExpression="0" useSubstitutions="0" fontSizeUnit="Point" multilineHeight="0.8" fontWordSpacing="0" namedStyle="Condensed" fontWeight="50" fontFamily="Noto Sans" allowHtml="0" textOpacity="1" fontKerning="1" blendMode="0" textColor="0,0,0,255">
            <text-buffer bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="128" bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="1" maskType="0" maskSize="0.2"/>
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
          <text-format placeDirectionSymbol="0" leftDirectionSymbol="&lt;" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" rightDirectionSymbol=">" multilineAlign="3" reverseDirectionSymbol="0" decimals="3" wrapChar="|" autoWrapLength="0"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="-0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PolygonGeometry" fitInPolygonOnly="0" centroidWhole="0" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" offsetType="0" dist="0" preserveRotation="1" geometryGeneratorEnabled="1" lineAnchorType="0" layerType="PolygonGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" priority="5" maxCurvedCharAngleIn="25" overrunDistanceUnit="MM" rotationAngle="0" overrunDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" placement="8" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" offsetUnits="MM" repeatDistance="0" distUnits="MM" quadOffset="2" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa; )" placementFlags="10"/>
          <rendering mergeLines="0" minFeatureSize="0" obstacle="1" labelPerPart="0" upsidedownLabels="0" scaleMin="0" fontMinPixelSize="3" maxNumLabels="2000" scaleVisibility="0" limitNumLabels="0" zIndex="0" obstacleType="1" fontMaxPixelSize="10000" obstacleFactor="1" fontLimitPixelSize="0" displayAll="1" drawLabels="1" scaleMax="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
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
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(centroid($geometry),  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
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
  <DiagramLayerSettings zIndex="0" linePlacementFlags="18" priority="0" showAll="1" placement="1" dist="0" obstacle="0">
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
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option value="0" name="allowedGapsBuffer" type="double"/>
        <Option value="false" name="allowedGapsEnabled" type="bool"/>
        <Option value="" name="allowedGapsLayer" type="QString"/>
      </Option>
    </checkConfiguration>
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
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tipo" configurationFlags="None">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="1001" name="Arquibancada (1001)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="298" name="Campo/Quadra - Outras quadras esportivas (298)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="202" name="Campo/Quadra de basquete (202)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="201" name="Campo/Quadra de futebol (201)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="205" name="Campo/Quadra de hipismo (205)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="204" name="Campo/Quadra de pólo (204)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="207" name="Campo/Quadra de tênis (207)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="203" name="Campo/Quadra de vôlei (203)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="206" name="Campo/Quadra poliesportiva (206)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="101" name="Cemitério - Crematório (101)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="105" name="Cemitério - Túmulo isolado (105)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="104" name="Cemitério Comum (104)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="102" name="Cemitério Parque (102)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="103" name="Cemitério Vertical (103)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="805" name="Elevador de grãos (805)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="901" name="Estacionamento (901)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="801" name="Moega (801)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="802" name="Moinho (802)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="501" name="Piscina (501)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="398" name="Pista - Outras pistas de competição (398)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="301" name="Pista de atletismo (301)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="304" name="Pista de automobilismo (304)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="306" name="Pista de bicicross (306)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="302" name="Pista de ciclismo (302)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="305" name="Pista de corrida de cavalos (305)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="303" name="Pista de motociclismo (303)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="307" name="Pista de motocross (307)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="806" name="Pivô central (806)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="409" name="Pátio aeroportuário (409)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="416" name="Pátio de dutos (416)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="405" name="Pátio ferroviário (405)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="415" name="Pátio hidroviário (415)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="406" name="Pátio metroviário (406)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="414" name="Pátio portuário (414)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="404" name="Pátio rodoviário (404)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="701" name="Ruina (701)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="1701" name="Subestação de transmissão/distribuição de energia elétrica (1701)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="601" name="Sítio Arquiológico (601)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="804" name="Tombador (804)" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="situacao_fisica" configurationFlags="None">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
              <Option value="1" name="Abandonada (1)" type="QString"/>
              <Option value="3" name="Construída (3)" type="QString"/>
              <Option value="0" name="Desconhecida (0)" type="QString"/>
              <Option value="2" name="Destruída (2)" type="QString"/>
              <Option value="4" name="Em construção (4)" type="QString"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="observacao" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
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
      <editWidget type="TextEdit">
        <config>
          <Option/>
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
    <field name="area_otf" configurationFlags="None">
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
    <alias name="" index="3" field="situacao_fisica"/>
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
    <alias name="" index="17" field="area_otf"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="nome"/>
    <default applyOnUpdate="0" expression="" field="tipo"/>
    <default applyOnUpdate="0" expression="" field="situacao_fisica"/>
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
    <default applyOnUpdate="0" expression="" field="area_otf"/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1" field="id"/>
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="nome"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="tipo"/>
    <constraint constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0" field="situacao_fisica"/>
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
    <constraint constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0" field="area_otf"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id"/>
    <constraint desc="" exp="" field="nome"/>
    <constraint desc="" exp="" field="tipo"/>
    <constraint desc="" exp="" field="situacao_fisica"/>
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
    <constraint desc="" exp="" field="area_otf"/>
  </constraintExpressions>
  <expressionfields>
    <field subType="0" precision="0" name="area_otf" expression="$area" typeName="" comment="" length="0" type="6"/>
    <field subType="0" precision="0" name="area_otf" expression="$area" typeName="" comment="" length="0" type="6"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;nome&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" hidden="0" name="id" type="field"/>
      <column width="477" hidden="0" name="nome" type="field"/>
      <column width="-1" hidden="0" name="tipo" type="field"/>
      <column width="-1" hidden="0" name="situacao_fisica" type="field"/>
      <column width="-1" hidden="0" name="observacao" type="field"/>
      <column width="-1" hidden="0" name="data_modificacao" type="field"/>
      <column width="-1" hidden="0" name="controle_uuid" type="field"/>
      <column width="-1" hidden="0" name="usuario_criacao" type="field"/>
      <column width="-1" hidden="0" name="usuario_atualizacao" type="field"/>
      <column width="-1" hidden="0" name="insumo" type="field"/>
      <column width="-1" hidden="0" name="data_insumo" type="field"/>
      <column width="-1" hidden="0" name="visivel" type="field"/>
      <column width="248" hidden="0" name="texto_edicao" type="field"/>
      <column width="-1" hidden="0" name="carta_mini" type="field"/>
      <column width="-1" hidden="0" name="area_otf" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" name="label_x" type="field"/>
      <column width="-1" hidden="0" name="label_y" type="field"/>
      <column width="-1" hidden="0" name="justificativa_txt" type="field"/>
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
    <field editable="0" name="area_otf"/>
    <field editable="1" name="carta_mini"/>
    <field editable="1" name="controle_uuid"/>
    <field editable="1" name="data_insumo"/>
    <field editable="1" name="data_modificacao"/>
    <field editable="1" name="id"/>
    <field editable="1" name="insumo"/>
    <field editable="1" name="justificativa_txt"/>
    <field editable="1" name="label_x"/>
    <field editable="1" name="label_y"/>
    <field editable="1" name="nome"/>
    <field editable="1" name="observacao"/>
    <field editable="1" name="situacao_fisica"/>
    <field editable="1" name="texto_edicao"/>
    <field editable="1" name="tipo"/>
    <field editable="1" name="usuario_atualizacao"/>
    <field editable="1" name="usuario_criacao"/>
    <field editable="1" name="visivel"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="area_otf"/>
    <field labelOnTop="0" name="carta_mini"/>
    <field labelOnTop="0" name="controle_uuid"/>
    <field labelOnTop="0" name="data_insumo"/>
    <field labelOnTop="0" name="data_modificacao"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="insumo"/>
    <field labelOnTop="0" name="justificativa_txt"/>
    <field labelOnTop="0" name="label_x"/>
    <field labelOnTop="0" name="label_y"/>
    <field labelOnTop="0" name="nome"/>
    <field labelOnTop="0" name="observacao"/>
    <field labelOnTop="0" name="situacao_fisica"/>
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
  <layerGeometryType>2</layerGeometryType>
</qgis>
