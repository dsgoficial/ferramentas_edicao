<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" styleCategories="Symbology|Labeling|Actions" labelsEnabled="1">
  <renderer-v2 enableorderby="0" symbollevels="0" type="RuleRenderer" referencescale="25000" forceraster="0">
    <rules key="{7e7c5e8b-3835-4813-bc90-01d87c84467a}">
      <rule filter="&quot;visivel&quot; = 1" key="{c9d1e298-fe17-4fe3-b8a6-842e7904d800}">
        <rule symbol="0" filter="&quot;tipo&quot; in (0, 1212, 1298) or (&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 13, 19, 17, 20, 21,  22, 23, 24, 26, 30)" description="Energia, Industria, Genérico" label="A20403A" key="{3026e123-049d-4763-bc61-54758e1d138a}"/>
        <rule symbol="1" filter="&quot;tipo&quot; = 1216" label="A20405A" key="{5dea4b5f-b74b-4539-924c-c5be6d2d8914}"/>
        <rule symbol="2" filter="&quot;tipo&quot; = 1215" key="{78509594-2c3b-4a2e-83ba-c2cfb831b683}"/>
        <rule symbol="3" filter="ELSE" key="{e9053e2d-98dd-4112-a0e5-90e560cbd045}"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" clip_to_extent="1" name="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
      <symbol force_rhr="0" clip_to_extent="1" name="1" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="232,113,141,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="232,113,141,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" clip_to_extent="1" name="2" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="131,194,164,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="131,194,164,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('verde346-42_131-194-164_#83C2A4')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" pass="0" class="SVGFill" locked="0">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="125,139,143,255"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMW1tIgogICBoZWlnaHQ9IjFtbSIKICAgdmlld0JveD0iMCAwIDEgMSIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTY2MzIiCiAgIGlua3NjYXBlOnZlcnNpb249IjEuMi4yIChiMGE4NDg2NTQxLCAyMDIyLTEyLTAxKSIKICAgc29kaXBvZGk6ZG9jbmFtZT0iZ3JlZW5ob3VzZS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNjYyNiIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMTI4IgogICAgIGlua3NjYXBlOmN4PSIyLjA0Njg3NSIKICAgICBpbmtzY2FwZTpjeT0iMS43NjU2MjUiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy15PSIzNzkiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMCIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIxIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNjYyOSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xMTMuNjQ4ODEsLTE1Ni42NDg4KSI+CiAgICA8cGF0aAogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgIGlkPSJwYXRoMTY2MDEiCiAgICAgICBkPSJtIDExMy42NDg4MSwxNTYuNjQ4OCAxLDEiCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMmViMDcwO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY2MiIC8+CiAgICA8cGF0aAogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjYyIKICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMyZWIwNzA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0ibSAxMTQuNjQ4ODEsMTU2LjY0ODggLTEsMSIKICAgICAgIGlkPSJwYXRoMTY2MTMiCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogIDwvZz4KPC9zdmc+Cg=="/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="125,139,143,255"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="pattern_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="pattern_width_unit" v="MM"/>
          <prop k="svgFile" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMW1tIgogICBoZWlnaHQ9IjFtbSIKICAgdmlld0JveD0iMCAwIDEgMSIKICAgdmVyc2lvbj0iMS4xIgogICBpZD0ic3ZnMTY2MzIiCiAgIGlua3NjYXBlOnZlcnNpb249IjEuMi4yIChiMGE4NDg2NTQxLCAyMDIyLTEyLTAxKSIKICAgc29kaXBvZGk6ZG9jbmFtZT0iZ3JlZW5ob3VzZS5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxNjYyNiIgLz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMTI4IgogICAgIGlua3NjYXBlOmN4PSIyLjA0Njg3NSIKICAgICBpbmtzY2FwZTpjeT0iMS43NjU2MjUiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy15PSIzNzkiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMCIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIxIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExNjYyOSI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xMTMuNjQ4ODEsLTE1Ni42NDg4KSI+CiAgICA8cGF0aAogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgIGlkPSJwYXRoMTY2MDEiCiAgICAgICBkPSJtIDExMy42NDg4MSwxNTYuNjQ4OCAxLDEiCiAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMmViMDcwO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIKICAgICAgIHNvZGlwb2RpOm5vZGV0eXBlcz0iY2MiIC8+CiAgICA8cGF0aAogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJjYyIKICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMyZWIwNzA7c3Ryb2tlLXdpZHRoOjAuMTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgZD0ibSAxMTQuNjQ4ODEsMTU2LjY0ODggLTEsMSIKICAgICAgIGlkPSJwYXRoMTY2MTMiCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIiAvPgogIDwvZz4KPC9zdmc+Cg=="/>
          <prop k="svg_outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="svg_outline_width_unit" v="MM"/>
          <prop k="width" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" clip_to_extent="1" name="3" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,1,5,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,0,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,1,5,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
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
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{1fd246e3-e557-4fc3-9539-085b901d4b97}">
      <rule filter="&quot;visivel&quot; = 1" key="{ca67e15b-e52b-4608-8ffb-1ee554929212}">
        <rule description="Edificação" key="{984ea37d-b106-4708-9a83-d6c30d8f9a96}">
          <settings calloutType="simple">
            <text-style isExpression="0" fontLetterSpacing="0" fontItalic="0" allowHtml="0" namedStyle="Condensed" textOpacity="1" legendString="Aa" useSubstitutions="0" textOrientation="horizontal" previewBkgrdColor="255,255,255,255" blendMode="0" fontFamily="Noto Sans" textColor="36,31,33,255" fontWeight="50" fontStrikeout="0" fontKerning="1" multilineHeight="0.80000000000000004" capitalization="0" fontSize="6" fontWordSpacing="0" fieldName="texto_edicao" fontSizeUnit="Point" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
              <families/>
              <text-buffer bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferDraw="0" bufferBlendMode="0"/>
              <text-mask maskSize="0.40000000000000002" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskEnabled="1" maskedSymbolLayers="infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_e4f22fe0_f121_4a71_ae41_3f89ee6c9a9c,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{b1c7454c-7ec6-43f7-93cb-dbf6fd7d989b},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{d34348cf-1659-40a6-b4b4-950831b77e36},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{c5ac3099-b6d0-4ddb-8598-e845530ce000},2;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{60ed1f30-5545-4828-980d-98928a7c549e},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{931067a6-d7c9-4cc7-b7fd-92d1a7c95a6a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{5d85ee96-c166-467d-9359-cc3026e56e02},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{9f4c4668-7a7f-4414-8718-043e73be2861},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{6d01f01b-9583-4628-aaef-031860810e2a},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{20673adf-7341-46df-88ea-ca60401e3acf},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{32e6b147-cddc-401a-909e-768b2f0dfae9},0;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{2259b3af-b0ca-4608-b21b-02c751091424},1;cobter_vegetacao_a_94199cfe_c52a_4e6b_9a3f_db99dd63767f,{99c188bb-37bf-4124-9d59-a533577b6b22},1;elemnat_terreno_sujeito_inundacao_a_c5727f50_9121_4427_9800_37965f3001fa,,0"/>
              <background shapeRadiiUnit="MM" shapeBlendMode="0" shapeRotationType="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeUnit="MM" shapeSizeY="0" shapeSizeX="0" shapeSizeType="0" shapeSVGFile="" shapeRadiiX="0" shapeRotation="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
                <symbol force_rhr="0" clip_to_extent="1" name="markerSymbol" type="marker" alpha="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
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
                <symbol force_rhr="0" clip_to_extent="1" name="fillSymbol" type="fill" alpha="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" pass="0" class="SimpleFill" locked="0">
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
              <shadow shadowRadiusUnit="MM" shadowUnder="0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowScale="100" shadowDraw="0" shadowOffsetDist="1" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowOffsetUnit="MM"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0" autoWrapLength="0" reverseDirectionSymbol="0" addDirectionSymbol="0" multilineAlign="0" placeDirectionSymbol="0" wrapChar="|" leftDirectionSymbol="&lt;" formatNumbers="0"/>
            <placement rotationAngle="0" placementFlags="10" centroidInside="0" distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistance="0" overrunDistance="0" lineAnchorPercent="0.5" geometryGeneratorType="PolygonGeometry" maxCurvedCharAngleIn="25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" layerType="PolygonGeometry" offsetType="0" geometryGeneratorEnabled="1" xOffset="0.5" lineAnchorClipping="0" yOffset="-0.5" offsetUnits="MM" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" priority="5" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="2" dist="0" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" preserveRotation="1" placement="8" polygonPlacementFlags="3" overrunDistanceUnit="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM"/>
            <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMin="0" maxNumLabels="2000" displayAll="0" scaleMax="0" obstacleType="1" limitNumLabels="0" drawLabels="1" minFeatureSize="0" labelPerPart="0" fontLimitPixelSize="0" mergeLines="0" zIndex="0" upsidedownLabels="0" obstacleFactor="1" fontMinPixelSize="3" obstacle="1" unplacedVisibility="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
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
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects(centroid($geometry),  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
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
                <Option name="enabled" type="QString" value="1"/>
                <Option name="labelAnchorPoint" type="QString" value="centroid"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;219,30,42,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.1&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;219,30,42,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.1&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <layerGeometryType>2</layerGeometryType>
</qgis>
