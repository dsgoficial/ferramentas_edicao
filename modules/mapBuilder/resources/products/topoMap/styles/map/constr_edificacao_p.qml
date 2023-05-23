<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 type="RuleRenderer" enableorderby="0" forceraster="0" symbollevels="0" referencescale="-1">
    <rules key="{af709a54-88ca-4a27-bba5-e0a7ac6ce840}">
      <rule label="Visível" key="{4bdda895-97c4-4ad7-919c-b2b6ccf321c8}" filter=" &quot;visivel&quot; = 1">
        <rule description="Edificação operacional" symbol="0" label="P20403A - Genérico Não Importante" key="{55073371-2bcb-4204-962b-25b9718a6ea4}" filter=" (&quot;tipo&quot; in (0, 525, 608, 610, 1212, 1213, 1298, 2029, 2030, 2031) or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (1, 2, 3, 4, 7, 8, 9, 10, 11, 15, 21, 23, 24, 25)) and &quot;tipo&quot; not in (803, 2429)"/>
        <rule symbol="1" label="Bandeira suprimida" key="{1d0aafdd-64b6-4744-852d-94b2496d4aa9}" filter=" &quot;suprimir_bandeira&quot; = 1 and &quot;tipo&quot; not in (2429,1218,1216,1215,803) and (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 not in (13, 17, 19, 30)"/>
        <rule symbol="2" label="P20418A - Importante" key="{832b4b14-42b1-4056-9886-114643611ddc}" filter="(&quot;tipo&quot; in (803) or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (13, 17, 19,22, 30))"/>
        <rule symbol="3" label="P20415A" key="{09aaadda-6c3d-4bd5-9c3e-627f3740d93c}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 = 5 and &quot;tipo&quot; not in (525) and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="4" label="P20423A" key="{4c74753d-6dd7-4c81-ba11-8ac264737e1a}" filter="&quot;tipo&quot; = 601 and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="5" label="Templo" key="{62b8aa18-4a6e-42cc-93cc-7852adff26c7}" filter="&quot;tipo&quot; = 602 and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="6" label="Viveiro de plantas" key="{eb65cf86-2307-4c54-aad1-ac9ec26b2d87}" filter="&quot;tipo&quot; = 1215"/>
        <rule symbol="7" label="Viveiro para aquicultura" key="{f5cfde74-1e93-44fa-932a-4adc7f782543}" filter="&quot;tipo&quot; = 1216"/>
        <rule symbol="8" label="P20405D" key="{5f83c3db-6a76-4762-94f8-b032bc99eda9}" filter="&quot;tipo&quot; = 1218"/>
        <rule symbol="9" label="P20429A" key="{b396b6ae-5dd0-4712-b4eb-88b4630fcae8}" filter="&quot;tipo&quot; = 1401 and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="10" label="P20427A" key="{55ff5378-dd40-40e4-aca1-32f560cf6b47}" filter="&quot;tipo&quot; in (2025, 2026, 2027, 2028) and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="11" label="Aero - Hangar" key="{460f9292-8a19-43a1-9d8c-bc26dfb57223}" filter="&quot;tipo&quot; = 2429"/>
        <rule symbol="12" label="P20430A" key="{7ccb2fca-e544-4540-81d0-bc49b7d09326}" filter="&quot;tipo&quot; = 2601 and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="13" label="P20435A" key="{63b54aab-2b56-45eb-bc0e-4118677465ac}" filter=" (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (29) and  &quot;suprimir_bandeira&quot; != 1"/>
        <rule symbol="14" key="{f1a08c62-a732-4ad8-92da-b287df07f287}" filter="ELSE"/>
      </rule>
    </rules>
    <symbols>
      <symbol name="0" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.5"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
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
          <prop k="size" v="0.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.5"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
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
          <prop k="size" v="0.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="10" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS43NW1tIgogICBoZWlnaHQ9IjEuNzVtbSIKICAgdmlld0JveD0iMCAwIDEuNzQ5OTk5OSAxLjc1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0MDQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9InNhdWRlLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjQ0LjgiCiAgICAgaW5rc2NhcGU6Y3g9IjIuOTkxMDcxNCIKICAgICBpbmtzY2FwZTpjeT0iNC4wNDAxNzg2IgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJnNzk4NCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04Ny44Mzg2MTksLTE3OC4wNDgxNSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTMsLTQ2LjcwMTg1KSIKICAgICAgIGlkPSJnNzk4NCIKICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7ZmlsbC1vcGFjaXR5OjEiPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuODc1IgogICAgICAgICBjeT0iMjI1LjYyNSIKICAgICAgICAgY3g9IjEwOS41MDMzNyIKICAgICAgICAgaWQ9InBhdGg3OTY0IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxnCiAgICAgICAgIHN0eWxlPSJzdHJva2U6I2ZmZmZmZjtzdHJva2Utb3BhY2l0eToxO2ZpbGw6IzRiNGI0YjtmaWxsLW9wYWNpdHk6MSIKICAgICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMi43MzY2NzIyLDAuODMwMTYpIgogICAgICAgICBpZD0iZzc5NzAiPgogICAgICAgIDxwYXRoCiAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgICBpZD0icGF0aDc5NTAiCiAgICAgICAgICAgZD0ibSAxMDYuNzY2NywyMjQuMTY5ODQgdiAxLjI1IgogICAgICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7c3Ryb2tlOiNmZmZmZmY7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MTtmaWxsLW9wYWNpdHk6MSIgLz4KICAgICAgICA8cGF0aAogICAgICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7c3Ryb2tlOiNmZmZmZmY7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MTtmaWxsLW9wYWNpdHk6MSIKICAgICAgICAgICBkPSJtIDEwNi4xNDE3LDIyNC43OTQ4NCBoIDEuMjUiCiAgICAgICAgICAgaWQ9InBhdGg3OTUyIgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="1.75"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS43NW1tIgogICBoZWlnaHQ9IjEuNzVtbSIKICAgdmlld0JveD0iMCAwIDEuNzQ5OTk5OSAxLjc1IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0MDQzIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9InNhdWRlLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjQ0LjgiCiAgICAgaW5rc2NhcGU6Y3g9IjIuOTkxMDcxNCIKICAgICBpbmtzY2FwZTpjeT0iNC4wNDAxNzg2IgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJnNzk4NCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDA0MCI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC04Ny44Mzg2MTksLTE3OC4wNDgxNSkiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMC43ODk3NTMsLTQ2LjcwMTg1KSIKICAgICAgIGlkPSJnNzk4NCIKICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7ZmlsbC1vcGFjaXR5OjEiPgogICAgICA8Y2lyY2xlCiAgICAgICAgIHI9IjAuODc1IgogICAgICAgICBjeT0iMjI1LjYyNSIKICAgICAgICAgY3g9IjEwOS41MDMzNyIKICAgICAgICAgaWQ9InBhdGg3OTY0IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxnCiAgICAgICAgIHN0eWxlPSJzdHJva2U6I2ZmZmZmZjtzdHJva2Utb3BhY2l0eToxO2ZpbGw6IzRiNGI0YjtmaWxsLW9wYWNpdHk6MSIKICAgICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMi43MzY2NzIyLDAuODMwMTYpIgogICAgICAgICBpZD0iZzc5NzAiPgogICAgICAgIDxwYXRoCiAgICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgICBpZD0icGF0aDc5NTAiCiAgICAgICAgICAgZD0ibSAxMDYuNzY2NywyMjQuMTY5ODQgdiAxLjI1IgogICAgICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7c3Ryb2tlOiNmZmZmZmY7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MTtmaWxsLW9wYWNpdHk6MSIgLz4KICAgICAgICA8cGF0aAogICAgICAgICAgIHN0eWxlPSJmaWxsOiM0YjRiNGI7c3Ryb2tlOiNmZmZmZmY7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MTtmaWxsLW9wYWNpdHk6MSIKICAgICAgICAgICBkPSJtIDEwNi4xNDE3LDIyNC43OTQ4NCBoIDEuMjUiCiAgICAgICAgICAgaWQ9InBhdGg3OTUyIgogICAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.75"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="size" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="11" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.8"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="12" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4xbW0iCiAgIGhlaWdodD0iMi4xMDAwMDhtbSIKICAgdmlld0JveD0iMCAwIDEuMSAyLjEwMDAwOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTM3OCIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJwb3N0b19jb21idXN0aXZlbC5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMzcyIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI2My4zNTY3NjciCiAgICAgaW5rc2NhcGU6Y3g9IjMuNTE5NzUwMyIKICAgICBpbmtzY2FwZTpjeT0iMi40NDY0NjMyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJnOTY4NyIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTM3NSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDQ3LjEwMjcyNiwtMTM0LjE4NTg3KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE1Ni41NTI3MiwtMTQuMTIwNDc3KSIKICAgICAgIGlkPSJnOTY4NyI+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMTAsMTQ5LjA0MDExIHYgMC45Njk1IgogICAgICAgICBpZD0icGF0aDc3ODMiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuOTQ3MzE4MjMsMCwwLC0wLjg3Mjg0ODg1LDYuNzA1NTYyOCwyNzYuMzc2OTkpIgogICAgICAgICBpbmtzY2FwZTp0cmFuc2Zvcm0tY2VudGVyLXk9IjAuMTEwMjk0NzYiCiAgICAgICAgIGlua3NjYXBlOnRyYW5zZm9ybS1jZW50ZXIteD0iMi44MDk5MDhlLTA2IgogICAgICAgICBkPSJtIDEwOS40NzY1MiwxNDYuNjQ0NjkgLTAuODc1NDYsMCAwLjQzNzczLC0wLjc1ODE3IHoiCiAgICAgICAgIGlua3NjYXBlOnJhbmRvbWl6ZWQ9IjAiCiAgICAgICAgIGlua3NjYXBlOnJvdW5kZWQ9IjAiCiAgICAgICAgIGlua3NjYXBlOmZsYXRzaWRlZD0idHJ1ZSIKICAgICAgICAgc29kaXBvZGk6YXJnMj0iMS41NzA3OTYzIgogICAgICAgICBzb2RpcG9kaTphcmcxPSIwLjUyMzU5ODc4IgogICAgICAgICBzb2RpcG9kaTpyMj0iMC4yNTI3MjI1OSIKICAgICAgICAgc29kaXBvZGk6cjE9IjAuNTA1NDQ1MTgiCiAgICAgICAgIHNvZGlwb2RpOmN5PSIxNDYuMzkxOTciCiAgICAgICAgIHNvZGlwb2RpOmN4PSIxMDkuMDM4NzkiCiAgICAgICAgIHNvZGlwb2RpOnNpZGVzPSIzIgogICAgICAgICBpZD0icGF0aDc4MjEiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE2NDk1ODE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpub3JtYWwiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9InN0YXIiIC8+CiAgICAgIDxyZWN0CiAgICAgICAgIHk9IjE0OS45MDYzNiIKICAgICAgICAgeD0iMTA5Ljc0ODYzIgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgd2lkdGg9IjAuNSIKICAgICAgICAgaWQ9InJlY3Q3ODI5IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6c3Ryb2tlIGZpbGwgbWFya2VycyIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
            <Option name="offset" type="QString" value="0,-0.80000290910148775"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="1.1"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4xbW0iCiAgIGhlaWdodD0iMi4xMDAwMDhtbSIKICAgdmlld0JveD0iMCAwIDEuMSAyLjEwMDAwOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTM3OCIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJwb3N0b19jb21idXN0aXZlbC5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMzcyIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI2My4zNTY3NjciCiAgICAgaW5rc2NhcGU6Y3g9IjMuNTE5NzUwMyIKICAgICBpbmtzY2FwZTpjeT0iMi40NDY0NjMyIgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJnOTY4NyIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTM3NSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDQ3LjEwMjcyNiwtMTM0LjE4NTg3KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE1Ni41NTI3MiwtMTQuMTIwNDc3KSIKICAgICAgIGlkPSJnOTY4NyI+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgZD0ibSAxMTAsMTQ5LjA0MDExIHYgMC45Njk1IgogICAgICAgICBpZD0icGF0aDc3ODMiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuOTQ3MzE4MjMsMCwwLC0wLjg3Mjg0ODg1LDYuNzA1NTYyOCwyNzYuMzc2OTkpIgogICAgICAgICBpbmtzY2FwZTp0cmFuc2Zvcm0tY2VudGVyLXk9IjAuMTEwMjk0NzYiCiAgICAgICAgIGlua3NjYXBlOnRyYW5zZm9ybS1jZW50ZXIteD0iMi44MDk5MDhlLTA2IgogICAgICAgICBkPSJtIDEwOS40NzY1MiwxNDYuNjQ0NjkgLTAuODc1NDYsMCAwLjQzNzczLC0wLjc1ODE3IHoiCiAgICAgICAgIGlua3NjYXBlOnJhbmRvbWl6ZWQ9IjAiCiAgICAgICAgIGlua3NjYXBlOnJvdW5kZWQ9IjAiCiAgICAgICAgIGlua3NjYXBlOmZsYXRzaWRlZD0idHJ1ZSIKICAgICAgICAgc29kaXBvZGk6YXJnMj0iMS41NzA3OTYzIgogICAgICAgICBzb2RpcG9kaTphcmcxPSIwLjUyMzU5ODc4IgogICAgICAgICBzb2RpcG9kaTpyMj0iMC4yNTI3MjI1OSIKICAgICAgICAgc29kaXBvZGk6cjE9IjAuNTA1NDQ1MTgiCiAgICAgICAgIHNvZGlwb2RpOmN5PSIxNDYuMzkxOTciCiAgICAgICAgIHNvZGlwb2RpOmN4PSIxMDkuMDM4NzkiCiAgICAgICAgIHNvZGlwb2RpOnNpZGVzPSIzIgogICAgICAgICBpZD0icGF0aDc4MjEiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojZmZmZmZmO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjE2NDk1ODE1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpub3JtYWwiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9InN0YXIiIC8+CiAgICAgIDxyZWN0CiAgICAgICAgIHk9IjE0OS45MDYzNiIKICAgICAgICAgeD0iMTA5Ljc0ODYzIgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgd2lkdGg9IjAuNSIKICAgICAgICAgaWQ9InJlY3Q3ODI5IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6c3Ryb2tlIGZpbGwgbWFya2VycyIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
          <prop k="offset" v="0,-0.80000290910148775"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.1"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="13" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wNzUwMDA0bW0iCiAgIGhlaWdodD0iMi4wMDAwMDMxbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA3NTAwMDQgMi4wMDAwMDMxIgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMzc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImRpcGxvbWF0aWNvLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczEzNzIiPgogICAgPG1hcmtlcgogICAgICAgaW5rc2NhcGU6aXNzdG9jaz0idHJ1ZSIKICAgICAgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlIgogICAgICAgaWQ9Im1hcmtlcjkyMzciCiAgICAgICByZWZYPSIwIgogICAgICAgcmVmWT0iMCIKICAgICAgIG9yaWVudD0iYXV0byIKICAgICAgIGlua3NjYXBlOnN0b2NraWQ9IkFycm93Mk1zdGFydCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHRyYW5zZm9ybT0ic2NhbGUoMC42KSIKICAgICAgICAgZD0iTSA4LjcxODU4NzgsNC4wMzM3MzUyIC0yLjIwNzI4OTUsMC4wMTYwMTMyNiA4LjcxODU4ODQsLTQuMDAxNzA3OCBjIC0xLjc0NTQ5ODQsMi4zNzIwNjA5IC0xLjczNTQ0MDgsNS42MTc0NTE5IC02ZS03LDguMDM1NDQzIHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiM4MDgwODA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOiM4MDgwODA7c3Ryb2tlLXdpZHRoOjAuNjI1O3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBpZD0icGF0aDkyMzUiIC8+CiAgICA8L21hcmtlcj4KICAgIDxtYXJrZXIKICAgICAgIGlua3NjYXBlOmlzc3RvY2s9InRydWUiCiAgICAgICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIKICAgICAgIGlkPSJtYXJrZXI5MTQ5IgogICAgICAgcmVmWD0iMCIKICAgICAgIHJlZlk9IjAiCiAgICAgICBvcmllbnQ9ImF1dG8iCiAgICAgICBpbmtzY2FwZTpzdG9ja2lkPSJBcnJvdzJNZW5kIj4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgdHJhbnNmb3JtPSJzY2FsZSgtMC42KSIKICAgICAgICAgZD0iTSA4LjcxODU4NzgsNC4wMzM3MzUyIC0yLjIwNzI4OTUsMC4wMTYwMTMyNiA4LjcxODU4ODQsLTQuMDAxNzA3OCBjIC0xLjc0NTQ5ODQsMi4zNzIwNjA5IC0xLjczNTQ0MDgsNS42MTc0NTE5IC02ZS03LDguMDM1NDQzIHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiM4MDgwODA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOiM4MDgwODA7c3Ryb2tlLXdpZHRoOjAuNjI1O3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBpZD0icGF0aDkxNDciIC8+CiAgICA8L21hcmtlcj4KICA8L2RlZnM+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjYzLjM1Njc2NyIKICAgICBpbmtzY2FwZTpjeD0iMS40MjA1MjciCiAgICAgaW5rc2NhcGU6Y3k9IjMuMjUxNDI4NSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzk3MzMiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDE3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSIxOTEyIgogICAgIGlua3NjYXBlOndpbmRvdy15PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEzNzUiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMDQuOTkzMzEsLTEyOC44MDcxNykiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMTQuNzQxOTQsLTcxLjE5MjgyOSkiCiAgICAgICBpZD0iZzk3MzMiPgogICAgICA8cmVjdAogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6c3Ryb2tlIGZpbGwgbWFya2VycyIKICAgICAgICAgaWQ9InJlY3Q5NTkxIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5Ljc0ODYzIgogICAgICAgICB5PSIyMDEuNSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGg5NTg3IgogICAgICAgICBkPSJNIDEwOS45OTg2MywyMDAuNSBWIDIwMiIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyMDAuMDc1IgogICAgICAgICB4PSIxMDkuOTk4NjMiCiAgICAgICAgIGhlaWdodD0iMC41NDk5OTk4OSIKICAgICAgICAgd2lkdGg9IjAuNzUwMDAwNDIiCiAgICAgICAgIGlkPSJyZWN0OTY3NiIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDg7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOm5vcm1hbCIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
            <Option name="offset" type="QString" value="0.25,-0.69999999999999996"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="1.075"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wNzUwMDA0bW0iCiAgIGhlaWdodD0iMi4wMDAwMDMxbW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA3NTAwMDQgMi4wMDAwMDMxIgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMzc4IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImRpcGxvbWF0aWNvLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczEzNzIiPgogICAgPG1hcmtlcgogICAgICAgaW5rc2NhcGU6aXNzdG9jaz0idHJ1ZSIKICAgICAgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlIgogICAgICAgaWQ9Im1hcmtlcjkyMzciCiAgICAgICByZWZYPSIwIgogICAgICAgcmVmWT0iMCIKICAgICAgIG9yaWVudD0iYXV0byIKICAgICAgIGlua3NjYXBlOnN0b2NraWQ9IkFycm93Mk1zdGFydCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIHRyYW5zZm9ybT0ic2NhbGUoMC42KSIKICAgICAgICAgZD0iTSA4LjcxODU4NzgsNC4wMzM3MzUyIC0yLjIwNzI4OTUsMC4wMTYwMTMyNiA4LjcxODU4ODQsLTQuMDAxNzA3OCBjIC0xLjc0NTQ5ODQsMi4zNzIwNjA5IC0xLjczNTQ0MDgsNS42MTc0NTE5IC02ZS03LDguMDM1NDQzIHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiM4MDgwODA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOiM4MDgwODA7c3Ryb2tlLXdpZHRoOjAuNjI1O3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBpZD0icGF0aDkyMzUiIC8+CiAgICA8L21hcmtlcj4KICAgIDxtYXJrZXIKICAgICAgIGlua3NjYXBlOmlzc3RvY2s9InRydWUiCiAgICAgICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZSIKICAgICAgIGlkPSJtYXJrZXI5MTQ5IgogICAgICAgcmVmWD0iMCIKICAgICAgIHJlZlk9IjAiCiAgICAgICBvcmllbnQ9ImF1dG8iCiAgICAgICBpbmtzY2FwZTpzdG9ja2lkPSJBcnJvdzJNZW5kIj4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgdHJhbnNmb3JtPSJzY2FsZSgtMC42KSIKICAgICAgICAgZD0iTSA4LjcxODU4NzgsNC4wMzM3MzUyIC0yLjIwNzI4OTUsMC4wMTYwMTMyNiA4LjcxODU4ODQsLTQuMDAxNzA3OCBjIC0xLjc0NTQ5ODQsMi4zNzIwNjA5IC0xLjczNTQ0MDgsNS42MTc0NTE5IC02ZS03LDguMDM1NDQzIHoiCiAgICAgICAgIHN0eWxlPSJmaWxsOiM4MDgwODA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOiM4MDgwODA7c3Ryb2tlLXdpZHRoOjAuNjI1O3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBpZD0icGF0aDkxNDciIC8+CiAgICA8L21hcmtlcj4KICA8L2RlZnM+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjYzLjM1Njc2NyIKICAgICBpbmtzY2FwZTpjeD0iMS40MjA1MjciCiAgICAgaW5rc2NhcGU6Y3k9IjMuMjUxNDI4NSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzk3MzMiCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDE3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSIxOTEyIgogICAgIGlua3NjYXBlOndpbmRvdy15PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOnNob3dwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VjaGVja2VyYm9hcmQ9IjAiCiAgICAgaW5rc2NhcGU6ZGVza2NvbG9yPSIjZDFkMWQxIiAvPgogIDxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTEzNzUiPgogICAgPHJkZjpSREY+CiAgICAgIDxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj4KICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4KICAgICAgICA8ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+CiAgICAgICAgPGRjOnRpdGxlIC8+CiAgICAgIDwvY2M6V29yaz4KICAgIDwvcmRmOlJERj4KICA8L21ldGFkYXRhPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMDQuOTkzMzEsLTEyOC44MDcxNykiPgogICAgPGcKICAgICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMTQuNzQxOTQsLTcxLjE5MjgyOSkiCiAgICAgICBpZD0iZzk3MzMiPgogICAgICA8cmVjdAogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6IzI0MWYyMTtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4xNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjE7cGFpbnQtb3JkZXI6c3Ryb2tlIGZpbGwgbWFya2VycyIKICAgICAgICAgaWQ9InJlY3Q5NTkxIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5Ljc0ODYzIgogICAgICAgICB5PSIyMDEuNSIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGg5NTg3IgogICAgICAgICBkPSJNIDEwOS45OTg2MywyMDAuNSBWIDIwMiIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4xNTAwMDAwMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIiAvPgogICAgICA8cmVjdAogICAgICAgICB5PSIyMDAuMDc1IgogICAgICAgICB4PSIxMDkuOTk4NjMiCiAgICAgICAgIGhlaWdodD0iMC41NDk5OTk4OSIKICAgICAgICAgd2lkdGg9IjAuNzUwMDAwNDIiCiAgICAgICAgIGlkPSJyZWN0OTY3NiIKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MC45ODk5OTk5OTtmaWxsOiNmZmZmZmY7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMTUwMDAwMDg7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOm5vcm1hbCIgLz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo="/>
          <prop k="offset" v="0.25,-0.69999999999999996"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.075"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="14" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="219,30,42,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="diamond"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="128,17,25,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.4"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="4.4"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.8"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wNDk4ODE5bW0iCiAgIGhlaWdodD0iMS43bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA0OTg4MTkgMS43IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0OTQwIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVzY29sYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0OTM0IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI0NS4yNTQ4MzQiCiAgICAgaW5rc2NhcGU6Y3g9IjMuOTc3NDc1NiIKICAgICBpbmtzY2FwZTpjeT0iMy43MTIzMTA2IgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJnMjU5OCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDkzNyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2NC40NzkzLC0zMi41MTI4NTkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjczLjc2NDQyLDkuMjMzNjg5MikiCiAgICAgICBpZD0iZzI1OTgiCiAgICAgICBzdHlsZT0iZmlsbDojNGI0YjRiO2ZpbGwtb3BhY2l0eToxIj4KICAgICAgPHJlY3QKICAgICAgICAgeT0iMjQuNDc5MTciCiAgICAgICAgIHg9IjEwOS4yODUxMiIKICAgICAgICAgaGVpZ2h0PSIwLjUiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGlkPSJyZWN0MTk2MTYiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjE7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6c3F1YXJlO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMjU4NSIKICAgICAgICAgZD0ibSAxMDkuNTM1MTIsMjMuMjc5MTcgdiAxLjciCiAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO2ZpbGwtb3BhY2l0eToxIiAvPgogICAgICA8cGF0aAogICAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9ImNjY2MiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMjU5MyIKICAgICAgICAgZD0ibSAxMDkuNjM1LDIzLjI3OTE3IDAuNywwLjI0NjYgLTAuNywwLjI1MzQgdiAtMC41IgogICAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjA5OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
            <Option name="offset" type="QString" value="0.2549995142311231,-0.59999885701440725"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="1.04988"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4wNDk4ODE5bW0iCiAgIGhlaWdodD0iMS43bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjA0OTg4MTkgMS43IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmc0OTQwIgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImVzY29sYS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0OTM0IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI0NS4yNTQ4MzQiCiAgICAgaW5rc2NhcGU6Y3g9IjMuOTc3NDc1NiIKICAgICBpbmtzY2FwZTpjeT0iMy43MTIzMTA2IgogICAgIGlua3NjYXBlOmRvY3VtZW50LXVuaXRzPSJtbSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJnMjU5OCIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhNDkzNyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2NC40NzkzLC0zMi41MTI4NTkpIj4KICAgIDxnCiAgICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjczLjc2NDQyLDkuMjMzNjg5MikiCiAgICAgICBpZD0iZzI1OTgiCiAgICAgICBzdHlsZT0iZmlsbDojNGI0YjRiO2ZpbGwtb3BhY2l0eToxIj4KICAgICAgPHJlY3QKICAgICAgICAgeT0iMjQuNDc5MTciCiAgICAgICAgIHg9IjEwOS4yODUxMiIKICAgICAgICAgaGVpZ2h0PSIwLjUiCiAgICAgICAgIHdpZHRoPSIwLjUiCiAgICAgICAgIGlkPSJyZWN0MTk2MTYiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjE7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6c3F1YXJlO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMjU4NSIKICAgICAgICAgZD0ibSAxMDkuNTM1MTIsMjMuMjc5MTcgdiAxLjciCiAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO2ZpbGwtb3BhY2l0eToxIiAvPgogICAgICA8cGF0aAogICAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9ImNjY2MiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMjU5MyIKICAgICAgICAgZD0ibSAxMDkuNjM1LDIzLjI3OTE3IDAuNywwLjI0NjYgLTAuNywwLjI1MzQgdiAtMC41IgogICAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjA5OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
          <prop k="offset" v="0.2549995142311231,-0.59999885701440725"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.04988"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMC44MDAwMDAwMW1tIgogICBoZWlnaHQ9IjEuNjAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMC43OTk5OTk5OSAxLjYwMDAwMDEiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzQwNDMiCiAgIGlua3NjYXBlOnZlcnNpb249IjEuMi4yIChiMGE4NDg2NTQxLCAyMDIyLTEyLTAxKSIKICAgc29kaXBvZGk6ZG9jbmFtZT0iaWdyZWphLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjMxLjY3ODM4NCIKICAgICBpbmtzY2FwZTpjeD0iMS42MDk5MzA2IgogICAgIGlua3NjYXBlOmN5PSIzLjIxOTg2MTIiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImczMjg5IgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg4LjM0NTM2NiwtMTc3LjU4Njk4KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1NCw1My4yNzAxMSkiCiAgICAgICBpZD0iZzMyODkiCiAgICAgICBzdHlsZT0iZmlsbDojNGI0YjRiO2ZpbGwtb3BhY2l0eToxIj4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InJlY3QzMjIzIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICB5PSIxMjUuNDE2ODciIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO2ZpbGwtb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS41MzUxMiwxMjQuMzE2ODcgdiAxLjYiCiAgICAgICAgIGlkPSJwYXRoMzIyNSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMjc2IgogICAgICAgICBkPSJtIDEwOS4xMzUxMiwxMjQuNjY1MyBoIDAuOCIKICAgICAgICAgc3R5bGU9ImZpbGw6IzI0MWYyMTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjE7ZmlsbC1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
            <Option name="offset" type="QString" value="0,-0.5"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.8"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMC44MDAwMDAwMW1tIgogICBoZWlnaHQ9IjEuNjAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMC43OTk5OTk5OSAxLjYwMDAwMDEiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzQwNDMiCiAgIGlua3NjYXBlOnZlcnNpb249IjEuMi4yIChiMGE4NDg2NTQxLCAyMDIyLTEyLTAxKSIKICAgc29kaXBvZGk6ZG9jbmFtZT0iaWdyZWphLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczQwMzciIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjMxLjY3ODM4NCIKICAgICBpbmtzY2FwZTpjeD0iMS42MDk5MzA2IgogICAgIGlua3NjYXBlOmN5PSIzLjIxOTg2MTIiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImczMjg5IgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg4LjM0NTM2NiwtMTc3LjU4Njk4KSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1NCw1My4yNzAxMSkiCiAgICAgICBpZD0iZzMyODkiCiAgICAgICBzdHlsZT0iZmlsbDojNGI0YjRiO2ZpbGwtb3BhY2l0eToxIj4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9Im9wYWNpdHk6MTtmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOm5vbmU7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpzcXVhcmU7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9InJlY3QzMjIzIgogICAgICAgICB3aWR0aD0iMC41IgogICAgICAgICBoZWlnaHQ9IjAuNSIKICAgICAgICAgeD0iMTA5LjI4NTEyIgogICAgICAgICB5PSIxMjUuNDE2ODciIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO2ZpbGwtb3BhY2l0eToxIgogICAgICAgICBkPSJtIDEwOS41MzUxMiwxMjQuMzE2ODcgdiAxLjYiCiAgICAgICAgIGlkPSJwYXRoMzIyNSIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgLz4KICAgICAgPHBhdGgKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgzMjc2IgogICAgICAgICBkPSJtIDEwOS4xMzUxMiwxMjQuNjY1MyBoIDAuOCIKICAgICAgICAgc3R5bGU9ImZpbGw6IzI0MWYyMTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjE7ZmlsbC1vcGFjaXR5OjEiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
          <prop k="offset" v="0,-0.5"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.8"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS44Mzg3NzVtbSIKICAgaGVpZ2h0PSIxLjMyMzk1MDFtbSIKICAgdmlld0JveD0iMCAwIDEuODM4Nzc1IDEuMzIzOTUiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzUiCiAgIGlua3NjYXBlOnZlcnNpb249IjEuMi4yIChiMGE4NDg2NTQxLCAyMDIyLTEyLTAxKSIKICAgc29kaXBvZGk6ZG9jbmFtZT0idGVtcGxvLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9Im5hbWVkdmlldzciCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnNuYXAtZ2xvYmFsPSJ0cnVlIgogICAgIHNob3dndWlkZXM9InRydWUiCiAgICAgaW5rc2NhcGU6Z3VpZGUtYmJveD0idHJ1ZSIKICAgICBpbmtzY2FwZTp6b29tPSI5MC41MDk2NjgiCiAgICAgaW5rc2NhcGU6Y3g9IjIuNjI5NTUzMyIKICAgICBpbmtzY2FwZTpjeT0iMi4xODc2MTE2IgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDE3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSIxOTEyIgogICAgIGlua3NjYXBlOndpbmRvdy15PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiPgogICAgPHNvZGlwb2RpOmd1aWRlCiAgICAgICBwb3NpdGlvbj0iMC41NTc4Mjc3NCwwLjY1NTcxNzAyIgogICAgICAgb3JpZW50YXRpb249IjAsLTEiCiAgICAgICBpZD0iZ3VpZGU0NTUzIgogICAgICAgaW5rc2NhcGU6bG9ja2VkPSJmYWxzZSIgLz4KICA8L3NvZGlwb2RpOm5hbWVkdmlldz4KICA8ZGVmcwogICAgIGlkPSJkZWZzMiI+CiAgICA8cGF0dGVybgogICAgICAgaWQ9IkVNRmhiYXNlcGF0dGVybiIKICAgICAgIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICB3aWR0aD0iNiIKICAgICAgIGhlaWdodD0iNiIKICAgICAgIHg9IjAiCiAgICAgICB5PSIwIiAvPgogIDwvZGVmcz4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTYwLjA5NDc4OCwtMTE0LjczNDgzKSI+CiAgICA8cGF0aAogICAgICAgaWQ9InBhdGg5MDciCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjAxMDAzOTQ7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgIGQ9Im0gNjAuNTk1NTE3LDExNC43MzQ4MyBjIC0wLjEyMTM1LDAuMDUxMiAtMC4xOTQyODEsMC4xNDAxMSAtMC4xODIzMTksMC4yOTU4OCAtMC4wMTkyNCwtMC4wMTEzIC0wLjE0NzIxMiwtMC4wNzcxIC0wLjMxODQxLC0wLjE2NDI2IDAuMDkyMDMsMC4xOTk0NSAwLjA5MTY4LDAuNDg2MzkgMC4zNTczNjYsMC41MjEyOCB2IDAuNjcxMDUgaCAwLjUzMzQ1MiAwLjAyODU3IDAuMDI4NTcgMC41MzM0NTEgdiAtMC42NzEwNSBjIDAuMjY1Njg3LC0wLjAzNDkgMC4yNjUzMzUsLTAuMzIxODMgMC4zNTczNjYsLTAuNTIxMjggLTAuMTcxMTk4LDAuMDg3MSAtMC4yOTkxNywwLjE1MjkzIC0wLjMxODQwOSwwLjE2NDI2IDAuMDExOTYsLTAuMTU1NzcgLTAuMDYwOTcsLTAuMjQ0NjQgLTAuMTgyMzE5LC0wLjI5NTg4IC0wLjA2NTA0LDAuMzQwNjIgLTAuMjEwMjU4LDAuNDMxMzcgLTAuNDE4NjU4LDAuNDM4MzggLTAuMjA4NDAxLC0wLjAwNyAtMC4zNTM2MjQsLTAuMDk3OCAtMC40MTg2NTgsLTAuNDM4MzggeiBtIDAuMDQ5ODYsMC43MDYyOCBoIDAuMzY4Nzk0IDAuMzY4NzkzIHYgMC40MjEyOCBoIC0wLjM2ODc5MyAtMC4zNjg3OTQgeiIgLz4KICA8L2c+Cjwvc3ZnPgo="/>
            <Option name="offset" type="QString" value="0,-0.5"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="1.86"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS44Mzg3NzVtbSIKICAgaGVpZ2h0PSIxLjMyMzk1MDFtbSIKICAgdmlld0JveD0iMCAwIDEuODM4Nzc1IDEuMzIzOTUiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzUiCiAgIGlua3NjYXBlOnZlcnNpb249IjEuMi4yIChiMGE4NDg2NTQxLCAyMDIyLTEyLTAxKSIKICAgc29kaXBvZGk6ZG9jbmFtZT0idGVtcGxvLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9Im5hbWVkdmlldzciCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnNuYXAtZ2xvYmFsPSJ0cnVlIgogICAgIHNob3dndWlkZXM9InRydWUiCiAgICAgaW5rc2NhcGU6Z3VpZGUtYmJveD0idHJ1ZSIKICAgICBpbmtzY2FwZTp6b29tPSI5MC41MDk2NjgiCiAgICAgaW5rc2NhcGU6Y3g9IjIuNjI5NTUzMyIKICAgICBpbmtzY2FwZTpjeT0iMi4xODc2MTE2IgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDE3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSIxOTEyIgogICAgIGlua3NjYXBlOndpbmRvdy15PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiPgogICAgPHNvZGlwb2RpOmd1aWRlCiAgICAgICBwb3NpdGlvbj0iMC41NTc4Mjc3NCwwLjY1NTcxNzAyIgogICAgICAgb3JpZW50YXRpb249IjAsLTEiCiAgICAgICBpZD0iZ3VpZGU0NTUzIgogICAgICAgaW5rc2NhcGU6bG9ja2VkPSJmYWxzZSIgLz4KICA8L3NvZGlwb2RpOm5hbWVkdmlldz4KICA8ZGVmcwogICAgIGlkPSJkZWZzMiI+CiAgICA8cGF0dGVybgogICAgICAgaWQ9IkVNRmhiYXNlcGF0dGVybiIKICAgICAgIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiCiAgICAgICB3aWR0aD0iNiIKICAgICAgIGhlaWdodD0iNiIKICAgICAgIHg9IjAiCiAgICAgICB5PSIwIiAvPgogIDwvZGVmcz4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTYwLjA5NDc4OCwtMTE0LjczNDgzKSI+CiAgICA8cGF0aAogICAgICAgaWQ9InBhdGg5MDciCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjAxMDAzOTQ7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgIGQ9Im0gNjAuNTk1NTE3LDExNC43MzQ4MyBjIC0wLjEyMTM1LDAuMDUxMiAtMC4xOTQyODEsMC4xNDAxMSAtMC4xODIzMTksMC4yOTU4OCAtMC4wMTkyNCwtMC4wMTEzIC0wLjE0NzIxMiwtMC4wNzcxIC0wLjMxODQxLC0wLjE2NDI2IDAuMDkyMDMsMC4xOTk0NSAwLjA5MTY4LDAuNDg2MzkgMC4zNTczNjYsMC41MjEyOCB2IDAuNjcxMDUgaCAwLjUzMzQ1MiAwLjAyODU3IDAuMDI4NTcgMC41MzM0NTEgdiAtMC42NzEwNSBjIDAuMjY1Njg3LC0wLjAzNDkgMC4yNjUzMzUsLTAuMzIxODMgMC4zNTczNjYsLTAuNTIxMjggLTAuMTcxMTk4LDAuMDg3MSAtMC4yOTkxNywwLjE1MjkzIC0wLjMxODQwOSwwLjE2NDI2IDAuMDExOTYsLTAuMTU1NzcgLTAuMDYwOTcsLTAuMjQ0NjQgLTAuMTgyMzE5LC0wLjI5NTg4IC0wLjA2NTA0LDAuMzQwNjIgLTAuMjEwMjU4LDAuNDMxMzcgLTAuNDE4NjU4LDAuNDM4MzggLTAuMjA4NDAxLC0wLjAwNyAtMC4zNTM2MjQsLTAuMDk3OCAtMC40MTg2NTgsLTAuNDM4MzggeiBtIDAuMDQ5ODYsMC43MDYyOCBoIDAuMzY4Nzk0IDAuMzY4NzkzIHYgMC40MjEyOCBoIC0wLjM2ODc5MyAtMC4zNjg3OTQgeiIgLz4KICA8L2c+Cjwvc3ZnPgo="/>
          <prop k="offset" v="0,-0.5"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.86"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="131,194,164,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.6"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="131,194,164,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.6"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('verde346-42_131-194-164_#83C2A4')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="7" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="0,160,223,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.8"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="0,160,223,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="8" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="255,255,255,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="square"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="149,80,88,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.15"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.8"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="149,80,88,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.8"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="size" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="9" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SvgMarker">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="fixedAspectRatio" type="QString" value="0"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="name" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4ybW0iCiAgIGhlaWdodD0iMC44MDAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMS4yIDAuOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDA0MyIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJpbmRpby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0MDM3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI5MC41MDk2NjgiCiAgICAgaW5rc2NhcGU6Y3g9Ii0yLjE3NjU2MzEiCiAgICAgaW5rc2NhcGU6Y3k9IjMuMjkyNDY1OSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzEzNDIyIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg3LjgzODYxOCwtMTc4LjIxMDcyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1MywtOTYuNzAxODA2KSIKICAgICAgIGlkPSJnMTM0MjIiPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIgogICAgICAgICBkPSJtIDEwOS44MjgzNywtMjc1LjcxMjUyIGEgMC42MDAwMDAwMiwwLjc5OTk5OTk1IDAgMCAxIC0wLjMsMC42OTI4MiAwLjYwMDAwMDAyLDAuNzk5OTk5OTUgMCAwIDEgLTAuNiwwIDAuNjAwMDAwMDIsMC43OTk5OTk5NSAwIDAgMSAtMC4zLC0wLjY5MjgyIGwgMC42LDAgeiIKICAgICAgICAgc29kaXBvZGk6ZW5kPSIzLjE0MTU5MjciCiAgICAgICAgIHNvZGlwb2RpOnN0YXJ0PSIwIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC43OTk5OTk5NSIKICAgICAgICAgc29kaXBvZGk6cng9IjAuNjAwMDAwMDIiCiAgICAgICAgIHNvZGlwb2RpOmN5PSItMjc1LjcxMjUyIgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjIyODM3IgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJhcmMiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9ImNpcmNsZTEzNDAyIiAvPgogICAgICA8cGF0aAogICAgICAgICBpZD0icGF0aDEzNDE2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9ImFyYyIKICAgICAgICAgc29kaXBvZGk6Y3g9IjEwOS4yMjgzNyIKICAgICAgICAgc29kaXBvZGk6Y3k9Ii0yNzUuNzEyNTIiCiAgICAgICAgIHNvZGlwb2RpOnJ4PSIwLjMwMDAwMDAxIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC41OTk5OTk5NiIKICAgICAgICAgc29kaXBvZGk6c3RhcnQ9IjAiCiAgICAgICAgIHNvZGlwb2RpOmVuZD0iMy4xNDE1OTI3IgogICAgICAgICBkPSJtIDEwOS41MjgzNywtMjc1LjcxMjUyIGEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjE1LDAuNTE5NjEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjMsMCAwLjMwMDAwMDAxLDAuNTk5OTk5OTYgMCAwIDEgLTAuMTUsLTAuNTE5NjEgbCAwLjMsMCB6IgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_width" type="QString" value="0.2"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="1.2"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS4ybW0iCiAgIGhlaWdodD0iMC44MDAwMDAwMW1tIgogICB2aWV3Qm94PSIwIDAgMS4yIDAuOCIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnNDA0MyIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJpbmRpby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnM0MDM3IiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI5MC41MDk2NjgiCiAgICAgaW5rc2NhcGU6Y3g9Ii0yLjE3NjU2MzEiCiAgICAgaW5rc2NhcGU6Y3k9IjMuMjkyNDY1OSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzEzNDIyIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE0MDQwIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTg3LjgzODYxOCwtMTc4LjIxMDcyKSI+CiAgICA8ZwogICAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIwLjc4OTc1MywtOTYuNzAxODA2KSIKICAgICAgIGlkPSJnMTM0MjIiPgogICAgICA8cGF0aAogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIgogICAgICAgICBkPSJtIDEwOS44MjgzNywtMjc1LjcxMjUyIGEgMC42MDAwMDAwMiwwLjc5OTk5OTk1IDAgMCAxIC0wLjMsMC42OTI4MiAwLjYwMDAwMDAyLDAuNzk5OTk5OTUgMCAwIDEgLTAuNiwwIDAuNjAwMDAwMDIsMC43OTk5OTk5NSAwIDAgMSAtMC4zLC0wLjY5MjgyIGwgMC42LDAgeiIKICAgICAgICAgc29kaXBvZGk6ZW5kPSIzLjE0MTU5MjciCiAgICAgICAgIHNvZGlwb2RpOnN0YXJ0PSIwIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC43OTk5OTk5NSIKICAgICAgICAgc29kaXBvZGk6cng9IjAuNjAwMDAwMDIiCiAgICAgICAgIHNvZGlwb2RpOmN5PSItMjc1LjcxMjUyIgogICAgICAgICBzb2RpcG9kaTpjeD0iMTA5LjIyODM3IgogICAgICAgICBzb2RpcG9kaTp0eXBlPSJhcmMiCiAgICAgICAgIHN0eWxlPSJvcGFjaXR5OjAuOTg5OTk5OTk7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjM0OTk5OTk5O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgICAgaWQ9ImNpcmNsZTEzNDAyIiAvPgogICAgICA8cGF0aAogICAgICAgICBpZD0icGF0aDEzNDE2IgogICAgICAgICBzdHlsZT0ib3BhY2l0eTowLjk4OTk5OTk5O2ZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtzdHJva2U6bm9uZTtzdHJva2Utd2lkdGg6MC4zNDk5OTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2UtZGFzaG9mZnNldDowO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIHNvZGlwb2RpOnR5cGU9ImFyYyIKICAgICAgICAgc29kaXBvZGk6Y3g9IjEwOS4yMjgzNyIKICAgICAgICAgc29kaXBvZGk6Y3k9Ii0yNzUuNzEyNTIiCiAgICAgICAgIHNvZGlwb2RpOnJ4PSIwLjMwMDAwMDAxIgogICAgICAgICBzb2RpcG9kaTpyeT0iMC41OTk5OTk5NiIKICAgICAgICAgc29kaXBvZGk6c3RhcnQ9IjAiCiAgICAgICAgIHNvZGlwb2RpOmVuZD0iMy4xNDE1OTI3IgogICAgICAgICBkPSJtIDEwOS41MjgzNywtMjc1LjcxMjUyIGEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjE1LDAuNTE5NjEgMC4zMDAwMDAwMSwwLjU5OTk5OTk2IDAgMCAxIC0wLjMsMCAwLjMwMDAwMDAxLDAuNTk5OTk5OTYgMCAwIDEgLTAuMTUsLTAuNTE5NjEgbCAwLjMsMCB6IgogICAgICAgICB0cmFuc2Zvcm09InNjYWxlKDEsLTEpIiAvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+Cg=="/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="simb_rot"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{c2cb3327-a8a4-4012-8813-932139a0ad83}">
      <rule description="Sede operacional de fazenda" key="{e97edc00-8895-4089-9954-b2440fcb24cb}" filter="&quot;tipo&quot; = 1212 and &quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style multilineHeight="0.80000000000000004" isExpression="0" fontUnderline="0" fontWeight="25" namedStyle="Condensed Light" blendMode="0" fontItalic="0" legendString="Aa" fontKerning="1" fieldName="texto_edicao" textOpacity="1" allowHtml="0" fontStrikeout="0" textOrientation="horizontal" fontWordSpacing="0" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="6" previewBkgrdColor="255,255,255,255" useSubstitutions="0" textColor="36,31,33,255" fontSizeUnit="Point" fontFamily="Noto Sans" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSizeUnits="MM" bufferSize="1" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferNoFill="1"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{b1c7454c-7ec6-43f7-93cb-dbf6fd7d989b},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{d34348cf-1659-40a6-b4b4-950831b77e36},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{c5ac3099-b6d0-4ddb-8598-e845530ce000},2;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{60ed1f30-5545-4828-980d-98928a7c549e},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{931067a6-d7c9-4cc7-b7fd-92d1a7c95a6a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{5d85ee96-c166-467d-9359-cc3026e56e02},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{9f4c4668-7a7f-4414-8718-043e73be2861},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{6d01f01b-9583-4628-aaef-031860810e2a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{20673adf-7341-46df-88ea-ca60401e3acf},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{32e6b147-cddc-401a-909e-768b2f0dfae9},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{2259b3af-b0ca-4608-b21b-02c751091424},1;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{99c188bb-37bf-4124-9d59-a533577b6b22},1;elemnat_terreno_sujeito_inundacao_a_c5727f50_9121_4427_9800_37965f3001fa,,0" maskType="0" maskSizeUnits="MM" maskEnabled="1" maskSize="0.40000000000000002" maskJoinStyle="128" maskOpacity="1"/>
            <background shapeFillColor="255,255,255,255" shapeSizeY="0" shapeRadiiX="0" shapeType="0" shapeSizeX="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeSizeUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeRotationType="0" shapeBorderWidthUnit="MM" shapeRotation="0" shapeJoinStyle="64" shapeSizeType="0" shapeRadiiUnit="MM" shapeOpacity="1" shapeDraw="0" shapeOffsetY="0" shapeRadiiY="0" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeSVGFile="">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="231,113,72,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="0,0,0,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" enabled="1" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowScale="100" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" rightDirectionSymbol=">" decimals="3" plussign="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="0" wrapChar="|"/>
          <placement rotationUnit="AngleDegrees" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" layerType="PointGeometry" placementFlags="10" overrunDistanceUnit="MM" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" lineAnchorType="0" centroidWhole="0" fitInPolygonOnly="0" preserveRotation="1" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0.40000000000000002" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleOut="-25" overrunDistance="0" placement="0" xOffset="0.5" geometryGeneratorEnabled="1" polygonPlacementFlags="2" lineAnchorPercent="0.5" centroidInside="0" repeatDistanceUnits="MM" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" repeatDistance="0" offsetType="0" rotationAngle="0" maxCurvedCharAngleIn="25" quadOffset="2" yOffset="-0.5" lineAnchorClipping="0"/>
          <rendering displayAll="0" minFeatureSize="0" fontMinPixelSize="3" maxNumLabels="2000" unplacedVisibility="0" mergeLines="0" limitNumLabels="0" fontMaxPixelSize="10000" labelPerPart="0" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" obstacleFactor="1" scaleVisibility="0" scaleMin="0" zIndex="0" upsidedownLabels="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="CalloutDraw" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="label_x"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="label_y"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.1&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.1&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot; type=&quot;Map&quot;>&lt;Option name=&quot;outlineColor&quot; type=&quot;Map&quot;>&lt;Option name=&quot;active&quot; type=&quot;bool&quot; value=&quot;true&quot;/>&lt;Option name=&quot;expression&quot; type=&quot;QString&quot; value=&quot;project_color('preto-75_75-75-75_#4B4B4B')&quot;/>&lt;Option name=&quot;type&quot; type=&quot;int&quot; value=&quot;3&quot;/>&lt;/Option>&lt;/Option>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule description="Curral" key="{63a4dd3f-51e3-49ee-8ba3-28269a650190}" filter="&quot;tipo&quot; = 1218 and &quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style multilineHeight="0.80000000000000004" isExpression="0" fontUnderline="0" fontWeight="50" namedStyle="Condensed" blendMode="0" fontItalic="0" legendString="Aa" fontKerning="1" fieldName="texto_edicao" textOpacity="1" allowHtml="0" fontStrikeout="0" textOrientation="horizontal" fontWordSpacing="0" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="6" previewBkgrdColor="255,255,255,255" useSubstitutions="0" textColor="36,31,33,255" fontSizeUnit="Point" fontFamily="Noto Sans" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSizeUnits="MM" bufferSize="1" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferNoFill="1"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{b1c7454c-7ec6-43f7-93cb-dbf6fd7d989b},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{d34348cf-1659-40a6-b4b4-950831b77e36},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{c5ac3099-b6d0-4ddb-8598-e845530ce000},2;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{60ed1f30-5545-4828-980d-98928a7c549e},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{931067a6-d7c9-4cc7-b7fd-92d1a7c95a6a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{5d85ee96-c166-467d-9359-cc3026e56e02},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{9f4c4668-7a7f-4414-8718-043e73be2861},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{6d01f01b-9583-4628-aaef-031860810e2a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{20673adf-7341-46df-88ea-ca60401e3acf},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{32e6b147-cddc-401a-909e-768b2f0dfae9},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{2259b3af-b0ca-4608-b21b-02c751091424},1;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{99c188bb-37bf-4124-9d59-a533577b6b22},1;elemnat_terreno_sujeito_inundacao_a_c5727f50_9121_4427_9800_37965f3001fa,,0" maskType="0" maskSizeUnits="MM" maskEnabled="1" maskSize="0.40000000000000002" maskJoinStyle="128" maskOpacity="1"/>
            <background shapeFillColor="255,255,255,255" shapeSizeY="0" shapeRadiiX="0" shapeType="0" shapeSizeX="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeSizeUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeRotationType="0" shapeBorderWidthUnit="MM" shapeRotation="0" shapeJoinStyle="64" shapeSizeType="0" shapeRadiiUnit="MM" shapeOpacity="1" shapeDraw="0" shapeOffsetY="0" shapeRadiiY="0" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeSVGFile="">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="231,113,72,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="0,0,0,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" enabled="1" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowScale="100" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" rightDirectionSymbol=">" decimals="3" plussign="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="0" wrapChar="|"/>
          <placement rotationUnit="AngleDegrees" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" layerType="PointGeometry" placementFlags="10" overrunDistanceUnit="MM" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" lineAnchorType="0" centroidWhole="0" fitInPolygonOnly="0" preserveRotation="1" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0.40000000000000002" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleOut="-25" overrunDistance="0" placement="0" xOffset="0.5" geometryGeneratorEnabled="1" polygonPlacementFlags="2" lineAnchorPercent="0.5" centroidInside="0" repeatDistanceUnits="MM" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" repeatDistance="0" offsetType="0" rotationAngle="0" maxCurvedCharAngleIn="25" quadOffset="2" yOffset="-0.5" lineAnchorClipping="0"/>
          <rendering displayAll="0" minFeatureSize="0" fontMinPixelSize="3" maxNumLabels="2000" unplacedVisibility="0" mergeLines="0" limitNumLabels="0" fontMaxPixelSize="10000" labelPerPart="0" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" obstacleFactor="1" scaleVisibility="0" scaleMin="0" zIndex="0" upsidedownLabels="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="CalloutDraw" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="label_x"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="label_y"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.1&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.1&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot; type=&quot;Map&quot;>&lt;Option name=&quot;outlineColor&quot; type=&quot;Map&quot;>&lt;Option name=&quot;active&quot; type=&quot;bool&quot; value=&quot;true&quot;/>&lt;Option name=&quot;expression&quot; type=&quot;QString&quot; value=&quot;project_color('preto-75_75-75-75_#4B4B4B')&quot;/>&lt;Option name=&quot;type&quot; type=&quot;int&quot; value=&quot;3&quot;/>&lt;/Option>&lt;/Option>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule description="Edificação" key="{cfd26acb-2067-48ec-b7d7-0aff0a9172d7}" filter="&quot;tipo&quot; not in (1212, 1218) and &quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style multilineHeight="0.80000000000000004" isExpression="0" fontUnderline="0" fontWeight="50" namedStyle="Condensed" blendMode="0" fontItalic="0" legendString="Aa" fontKerning="1" fieldName="texto_edicao" textOpacity="1" allowHtml="0" fontStrikeout="0" textOrientation="horizontal" fontWordSpacing="0" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="6" previewBkgrdColor="255,255,255,255" useSubstitutions="0" textColor="36,31,33,255" fontSizeUnit="Point" fontFamily="Noto Sans" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSizeUnits="MM" bufferSize="1" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferNoFill="1"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{b1c7454c-7ec6-43f7-93cb-dbf6fd7d989b},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{d34348cf-1659-40a6-b4b4-950831b77e36},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{c5ac3099-b6d0-4ddb-8598-e845530ce000},2;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{60ed1f30-5545-4828-980d-98928a7c549e},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{931067a6-d7c9-4cc7-b7fd-92d1a7c95a6a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{5d85ee96-c166-467d-9359-cc3026e56e02},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{9f4c4668-7a7f-4414-8718-043e73be2861},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{6d01f01b-9583-4628-aaef-031860810e2a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{20673adf-7341-46df-88ea-ca60401e3acf},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{32e6b147-cddc-401a-909e-768b2f0dfae9},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{2259b3af-b0ca-4608-b21b-02c751091424},1;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{99c188bb-37bf-4124-9d59-a533577b6b22},1;elemnat_terreno_sujeito_inundacao_a_c5727f50_9121_4427_9800_37965f3001fa,,0" maskType="0" maskSizeUnits="MM" maskEnabled="1" maskSize="0.40000000000000002" maskJoinStyle="128" maskOpacity="1"/>
            <background shapeFillColor="255,255,255,255" shapeSizeY="0" shapeRadiiX="0" shapeType="0" shapeSizeX="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeSizeUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeRotationType="0" shapeBorderWidthUnit="MM" shapeRotation="0" shapeJoinStyle="64" shapeSizeType="0" shapeRadiiUnit="MM" shapeOpacity="1" shapeDraw="0" shapeOffsetY="0" shapeRadiiY="0" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeSVGFile="">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" enabled="1" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="231,113,72,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="0,0,0,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" enabled="1" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowScale="100" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" rightDirectionSymbol=">" decimals="3" plussign="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="0" wrapChar="|"/>
          <placement rotationUnit="AngleDegrees" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" layerType="PointGeometry" placementFlags="10" overrunDistanceUnit="MM" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" lineAnchorType="0" centroidWhole="0" fitInPolygonOnly="0" preserveRotation="1" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0.40000000000000002" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleOut="-25" overrunDistance="0" placement="0" xOffset="0.5" geometryGeneratorEnabled="1" polygonPlacementFlags="2" lineAnchorPercent="0.5" centroidInside="0" repeatDistanceUnits="MM" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" repeatDistance="0" offsetType="0" rotationAngle="0" maxCurvedCharAngleIn="25" quadOffset="2" yOffset="-0.5" lineAnchorClipping="0"/>
          <rendering displayAll="0" minFeatureSize="0" fontMinPixelSize="3" maxNumLabels="2000" unplacedVisibility="0" mergeLines="0" limitNumLabels="0" fontMaxPixelSize="10000" labelPerPart="0" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" obstacleFactor="1" scaleVisibility="0" scaleMin="0" zIndex="0" upsidedownLabels="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="CalloutDraw" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="label_x"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="label_y"/>
                  <Option name="type" type="int" value="2"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;0,0,0,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.1&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;0,0,0,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.1&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot; type=&quot;Map&quot;>&lt;Option name=&quot;outlineColor&quot; type=&quot;Map&quot;>&lt;Option name=&quot;active&quot; type=&quot;bool&quot; value=&quot;true&quot;/>&lt;Option name=&quot;expression&quot; type=&quot;QString&quot; value=&quot;project_color('preto-75_75-75-75_#4B4B4B')&quot;/>&lt;Option name=&quot;type&quot; type=&quot;int&quot; value=&quot;3&quot;/>&lt;/Option>&lt;/Option>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
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
