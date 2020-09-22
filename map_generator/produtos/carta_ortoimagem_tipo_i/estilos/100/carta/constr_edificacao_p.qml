<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" version="3.12.2-București" readOnly="0" hasScaleBasedVisibilityFlag="0" minScale="0" simplifyDrawingTol="1" simplifyDrawingHints="0" labelsEnabled="1" simplifyMaxScale="1" simplifyAlgorithm="0" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" type="RuleRenderer" symbollevels="0" forceraster="0">
    <rules key="{3cde626a-ad82-4be8-a739-bcfbdb398163}">
      <rule symbol="0" label="Edif Quartel" filter=" &quot;tipo&quot;  in (1712, 1717, 1718, 1798)" key="{876a96fe-fdeb-4280-99f5-ad79eafc0c5c}" description="Edif Quartel"/>
      <rule symbol="1" label="Edif_Portuaria" filter=" &quot;tipo&quot;  = 2501" key="{7a839817-faf9-46c1-a315-0f61314aa338}"/>
      <rule symbol="2" label="Fazenda" filter=" &quot;tipo&quot;  = 1212" key="{428d6eaf-a14e-4b36-8d23-261f9c3c5995}"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
        <layer enabled="1" class="GeometryGenerator" pass="0" locked="0">
          <prop k="SymbolType" v="Marker"/>
          <prop k="geometryModifier" v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
            <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="255,255,255,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="name" v="square"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0.2"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="3.5"/>
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
            <layer enabled="1" class="SvgMarker" pass="0" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="0,0,0,255"/>
              <prop k="fixedAspectRatio" v="0"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIKICAgdmVyc2lvbj0iMS4xIgogICB3aWR0aD0iMTUuMzc1IgogICBoZWlnaHQ9IjE1LjM3NSIKICAgaWQ9InN2ZzIiCiAgIHhtbDpzcGFjZT0icHJlc2VydmUiPjxtZXRhZGF0YQogICAgIGlkPSJtZXRhZGF0YTgiPjxyZGY6UkRGPjxjYzpXb3JrCiAgICAgICAgIHJkZjphYm91dD0iIj48ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD48ZGM6dHlwZQogICAgICAgICAgIHJkZjpyZXNvdXJjZT0iaHR0cDovL3B1cmwub3JnL2RjL2RjbWl0eXBlL1N0aWxsSW1hZ2UiIC8+PC9jYzpXb3JrPjwvcmRmOlJERj48L21ldGFkYXRhPjxkZWZzCiAgICAgaWQ9ImRlZnM2IiAvPjxnCiAgICAgdHJhbnNmb3JtPSJtYXRyaXgoMS4yNSwwLDAsLTEuMjUsMCwxNS4zNzUpIgogICAgIGlkPSJnMTAiPjxnCiAgICAgICB0cmFuc2Zvcm09InNjYWxlKDAuMSwwLjEpIgogICAgICAgaWQ9ImcxMiI+PHBhdGgKICAgICAgICAgZD0ibSA2MC45NDUzLDEwNC41OTggMTguNDI1OCwwIDAsLTEwLjIwMzUgLTE4LjQyNTgsMCIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgaWQ9InBhdGgxNCIKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6I2ZlZjVkODtzdHJva2Utd2lkdGg6MS4xMzM4NTk5OTtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDoxMDtzdHJva2Utb3BhY2l0eToxO3N0cm9rZS1kYXNoYXJyYXk6bm9uZSIgLz48cGF0aAogICAgICAgICBkPSJtIDUzLjI5Myw1Mi43MjI3IDE3LjAwNzgsMCAwLDE3LjAwNzggLTE3LjAwNzgsMCAwLC0xNy4wMDc4IHoiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMTYiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIC8+PHBhdGgKICAgICAgICAgZD0ibSA2MS41MTE3LDY5LjczMDUgMCwzNS40MzM1IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpZD0icGF0aDE4IgogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMjMxZjIwO3N0cm9rZS13aWR0aDozLjY4NTA0O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjEwO3N0cm9rZS1vcGFjaXR5OjE7c3Ryb2tlLWRhc2hhcnJheTpub25lIiAvPjxwYXRoCiAgICAgICAgIGQ9Im0gNjAuOTQ1Myw5NC45NjA5IDE4LjQyNTgsMCAwLDEwLjIwMzEgLTE4LjQyNTgsMCAwLC0xMC4yMDMxIHoiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlkPSJwYXRoMjAiCiAgICAgICAgIHN0eWxlPSJmaWxsOiMyMzFmMjA7ZmlsbC1vcGFjaXR5OjE7ZmlsbC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlOm5vbmUiIC8+PC9nPjwvZz48L3N2Zz4="/>
              <prop k="offset" v="0,0.80000000000000004"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="255,255,255,255"/>
              <prop k="outline_width" v="0.4"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="6"/>
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
        </layer>
      </symbol>
      <symbol name="1" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
        <layer enabled="1" class="GeometryGenerator" pass="0" locked="0">
          <prop k="SymbolType" v="Marker"/>
          <prop k="geometryModifier" v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol name="@1@0" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
            <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="255,255,255,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="name" v="square"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="0,0,0,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0.2"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="4"/>
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
            <layer enabled="1" class="SvgMarker" pass="0" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="0,0,0,255"/>
              <prop k="fixedAspectRatio" v="0"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="name" v="base64:PHN2ZyBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCA1ODAgNTgwIiBoZWlnaHQ9IjU4MCIgdmlld0JveD0iMCAwIDU4MCA1ODAiIHdpZHRoPSI1ODAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Im00MzQuNjA1IDQ4Mi44MTFjLTE1LjAyOSA3LjgxNC0zOC44NjIgNS43NTgtNTUuNzM0LTMuMDM4LTIzLjI0OS0xMi4xMjEtMzYuNDEyLTkuMTU3LTYwLjc3OCAxLjY3Ny0xOC44NzggOC4zOTQtMzUuOTE3IDguMzktNTQuNzE3IDAtMjQuMzUxLTEwLjg2NS0zNi45MS0xMy43OTgtNjAuMTU5LTEuNjc3LTE2Ljg3MiA4Ljc5Ni00MS4wNTMgMTAuODUzLTU2LjA4MiAzLjAzOC0yNi4zNDktMTMuNzA1LTQ1LjE3OC0xNi4yNi02Ni4xMDMtMy4zNDUgMCAwLTkuMDMyIDYuODUyLTI4LjkzMiA2Ljg1MnY0OC40ODhjMTIuNTUgMCAyMi4zNS0yLjQ1IDMwLjc4OS03LjYyMiAxMC43MDktNi41NjQgMzAuNjg5LTEzLjQxNSA1NC40NTUtMS4yOTIgMjMuNzY1IDEyLjEyMyA0My45MTQgMTIuMTIzIDY0LjA2MyAxLjU4IDIwLjE0OS0xMC41NDEgMzEuMzE1LTEyLjQ0IDU1Ljc5Ny0xLjg0NCAyMy43NjUgMTIuMTIzIDQ3LjI3MiAxMS4wMDggNjcuNDIuNDY3IDI0LjQ4Mi0xMC41OTggMzUuOTA1LTkuMTY0IDU2LjA1NSAxLjM3NyAyMC4xNSAxMC41NDMgNDAuMjk4IDEwLjU0MyA2NC4wNjMtMS41OCAyMy43NjItMTIuMTIzIDQzLjEwNC01LjIxMiA1My44MzQgMS4yOTIgOC45ODMgNS40NDQgMTcuOTY3IDcuNjIyIDMxLjQwOCA3LjYyMnYtNDguNDg4Yy0yMC4yNDcuMDMyLTI4LjkzMi02Ljg1Mi0yOC45MzItNi44NTItMjAuOTItMTIuOTE1LTQwLjA5OS0xMC4zNi02Ni40NDcgMy4zNDV6IiBmaWxsPSJwYXJhbShmaWxsKSIgZmlsbC1vcGFjaXR5PSJwYXJhbShmaWxsLW9wYWNpdHkpIiBzdHJva2U9InBhcmFtKG91dGxpbmUpIiBzdHJva2Utb3BhY2l0eT0icGFyYW0ob3V0bGluZS1vcGFjaXR5KSIgc3Ryb2tlLXdpZHRoPSJwYXJhbShvdXRsaW5lLXdpZHRoKSIvPgo8cGF0aCBkPSJtNTAxLjMxMyA0MDguNzE5Yy00MS4xMi0yMi40MzItNTkuMDIxIDQuODc1LTgxLjEyNSA0Ljg3NXYtMTA5LjM0NGwzNC4xMjUtNzguNTMxYzUuMTY2LTEyLjEyMi0uMDA3LTIzLjE5OC0xMi40MDYtMjguNDY5bC0yMC42NTYtOC40MDZ2LTY4aC0zOS44MTN2LTM1LjgxM2gtNTUuNzgxdi00OGgtMzQuNjI1LTM0LjU5NHY0OGgtNTUuNzgxdjM1LjgxM2gtMzkuODEzdjY4bC0yMC42NTYgOC40MDZjLTEyLjM5OSA1LjI3MS0xNy41NzMgMTYuMzQ3LTEyLjQwNiAyOC40NjlsMzQuMDk0IDc4LjUzMXYxMDkuMzQ0Yy0yMi4wODgtLjAyNS00MC44OTgtMjYuODU4LTgxLjA5NC00LjQzOCAwIDAtMTEuNSA2LjQxNy0yOC45MzggNi44NDR2NDYuODc1YzEzLjYyNS0xLjAxMiAyMC4xNDYtMy4xOTggMzAuNDY5LTguOTY5IDEwLjk2MS02LjEyOCAzMS4wMTYtMTIuMDkyIDU0Ljc4MS4wMzEgMjMuNzY3IDEyLjEyMyA0My45MTQgMTIuMTM2IDY0LjA2MyAxLjU5NHMzNy43MDYtMTEuMDgxIDU2LjU2My0xLjU5NGMyMy43NjcgMTIuMTIzIDQyLjQxOSAxMi4yNTkgNjYuMzc1LjI4MSAxOS4zMjgtOS44IDM2LjY5NS05LjIyOSA1Ni44NDQgMS4zMTMgMjAuMTQ5IDEwLjU0MiA0MC4yOTcgMTAuNTI5IDY0LjA2My0xLjU5NHM0My43MDItNS45ODIgNTQuNzUtLjAzMWM5LjcwMyA1LjIyNiAxNi41MjYgNy45NTcgMzAuNSA4Ljk2OXYtNDcuMzEzYy0xNy43ODctLjQyNi0yOC45MzktNi44NDMtMjguOTM5LTYuODQzem0tMTA5LjUzMi0yMzIuNTMxbC0xMDAuNzUtNDEuNTYzLTEwMC43MTkgNDEuNTYzdi0yNy40MzhoMzkuNzgxdi0zNS4yODFoNjAuOTM4IDYwLjk2OXYzNS4yODFoMzkuNzgxeiIgZmlsbD0icGFyYW0oZmlsbCkiIGZpbGwtb3BhY2l0eT0icGFyYW0oZmlsbC1vcGFjaXR5KSIgc3Ryb2tlPSJwYXJhbShvdXRsaW5lKSIgc3Ryb2tlLW9wYWNpdHk9InBhcmFtKG91dGxpbmUtb3BhY2l0eSkiIHN0cm9rZS13aWR0aD0icGFyYW0ob3V0bGluZS13aWR0aCkiLz4KPC9zdmc+Cg=="/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="3.7"/>
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
        </layer>
      </symbol>
      <symbol name="2" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
        <layer enabled="1" class="GeometryGenerator" pass="0" locked="0">
          <prop k="SymbolType" v="Fill"/>
          <prop k="geometryModifier" v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol name="@2@0" clip_to_extent="1" type="fill" alpha="1" force_rhr="0">
            <layer enabled="1" class="SimpleFill" pass="0" locked="0">
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="255,255,255,0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="0,0,0,255"/>
              <prop k="outline_style" v="no"/>
              <prop k="outline_width" v="0.15"/>
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
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{f98bd955-02b0-4245-a984-277d8bee60c2}">
      <rule filter=" &quot;tipo&quot; in (1712, 1717, 1718, 1798 )" key="{c0e0a2f0-40c7-4bde-a74e-822be98c4c78}" description="Edif geral">
        <settings calloutType="simple">
          <text-style isExpression="0" textColor="255,255,255,255" fontItalic="0" fontFamily="Arial" fontSizeUnit="MM" textOrientation="horizontal" fontCapitals="0" blendMode="0" fontWordSpacing="0" multilineHeight="1" previewBkgrdColor="255,255,255,255" textOpacity="1" fieldName="nome" fontLetterSpacing="0" fontWeight="50" fontSize="3" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" namedStyle="Normal" fontStrikeout="0" fontKerning="1" useSubstitutions="0">
            <text-buffer bufferDraw="1" bufferJoinStyle="128" bufferColor="0,0,0,255" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="0.6" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="MM"/>
            <text-mask maskEnabled="0" maskedSymbolLayers="" maskOpacity="1" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeType="0" shapeBorderWidth="0" shapeRadiiY="0" shapeSizeX="0" shapeRadiiX="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeDraw="0" shapeBlendMode="0" shapeRotationType="0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeY="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1">
              <symbol name="markerSymbol" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="145,82,45,255"/>
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
            </background>
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowScale="100" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.7" shadowDraw="0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowColor="0,0,0,255" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">" plussign="0" multilineAlign="3" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="18" decimals="3" formatNumbers="0" useMaxLineLengthForAutoWrap="1"/>
          <placement preserveRotation="1" xOffset="0" maxCurvedCharAngleOut="-25" quadOffset="7" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" layerType="PointGeometry" repeatDistanceUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" distUnits="MM" geometryGeneratorType="PointGeometry" dist="2.8" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" centroidWhole="0" rotationAngle="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" placement="0" offsetType="0" centroidInside="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" priority="9" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="2.5" maxCurvedCharAngleIn="25"/>
          <rendering scaleMin="0" fontLimitPixelSize="0" minFeatureSize="0" labelPerPart="0" obstacle="1" scaleVisibility="0" fontMaxPixelSize="10000" displayAll="0" drawLabels="1" mergeLines="0" limitNumLabels="0" scaleMax="0" maxNumLabels="2000" obstacleFactor="2" upsidedownLabels="0" fontMinPixelSize="3" obstacleType="0" zIndex="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="intersects($geometry,  geometry(get_feature('auxiliar_moldura', 'id', '1')))"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule filter=" &quot;tipo&quot; in (2501 )" key="{14229e3c-b5c4-44cf-bf80-95cef8e53020}" description="Edif porto">
        <settings calloutType="simple">
          <text-style isExpression="0" textColor="255,255,255,255" fontItalic="0" fontFamily="Arial" fontSizeUnit="MM" textOrientation="horizontal" fontCapitals="0" blendMode="0" fontWordSpacing="0" multilineHeight="1" previewBkgrdColor="255,255,255,255" textOpacity="1" fieldName="nome" fontLetterSpacing="0" fontWeight="50" fontSize="3" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" namedStyle="Normal" fontStrikeout="0" fontKerning="1" useSubstitutions="0">
            <text-buffer bufferDraw="1" bufferJoinStyle="128" bufferColor="0,0,0,255" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="0.6" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="MM"/>
            <text-mask maskEnabled="0" maskedSymbolLayers="" maskOpacity="1" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeType="0" shapeBorderWidth="0" shapeRadiiY="0" shapeSizeX="0" shapeRadiiX="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeDraw="0" shapeBlendMode="0" shapeRotationType="0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeY="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1">
              <symbol name="markerSymbol" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="145,82,45,255"/>
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
            </background>
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowScale="100" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.7" shadowDraw="0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowColor="0,0,0,255" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">" plussign="0" multilineAlign="3" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="18" decimals="3" formatNumbers="0" useMaxLineLengthForAutoWrap="1"/>
          <placement preserveRotation="1" xOffset="0" maxCurvedCharAngleOut="-25" quadOffset="7" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" layerType="PointGeometry" repeatDistanceUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" distUnits="MM" geometryGeneratorType="PointGeometry" dist="2.8" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" centroidWhole="0" rotationAngle="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" placement="0" offsetType="0" centroidInside="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" priority="8" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="2.5" maxCurvedCharAngleIn="25"/>
          <rendering scaleMin="0" fontLimitPixelSize="0" minFeatureSize="0" labelPerPart="0" obstacle="1" scaleVisibility="0" fontMaxPixelSize="10000" displayAll="0" drawLabels="1" mergeLines="0" limitNumLabels="0" scaleMax="0" maxNumLabels="2000" obstacleFactor="2" upsidedownLabels="0" fontMinPixelSize="3" obstacleType="0" zIndex="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="intersects($geometry,  geometry(get_feature('auxiliar_moldura', 'id', '1')))"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule filter=" &quot;tipo&quot;  = 1212" key="{33714bb6-972c-4bd8-ba32-fdd9d63dbd95}" description="Fazenda">
        <settings calloutType="simple">
          <text-style isExpression="0" textColor="255,255,255,255" fontItalic="0" fontFamily="Arial" fontSizeUnit="MM" textOrientation="horizontal" fontCapitals="0" blendMode="0" fontWordSpacing="0" multilineHeight="1" previewBkgrdColor="255,255,255,255" textOpacity="1" fieldName="nome" fontLetterSpacing="0" fontWeight="50" fontSize="2.5" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" namedStyle="Normal" fontStrikeout="0" fontKerning="1" useSubstitutions="0">
            <text-buffer bufferDraw="1" bufferJoinStyle="128" bufferColor="0,0,0,255" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="0.5" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="MM"/>
            <text-mask maskEnabled="0" maskedSymbolLayers="" maskOpacity="1" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeType="0" shapeBorderWidth="0" shapeRadiiY="0" shapeSizeX="0" shapeRadiiX="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeDraw="0" shapeBlendMode="0" shapeRotationType="0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeY="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1">
              <symbol name="markerSymbol" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="145,82,45,255"/>
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
            </background>
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowScale="100" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.7" shadowDraw="0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowColor="0,0,0,255" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">" plussign="0" multilineAlign="1" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="18" decimals="3" formatNumbers="0" useMaxLineLengthForAutoWrap="1"/>
          <placement preserveRotation="1" xOffset="0" maxCurvedCharAngleOut="-25" quadOffset="7" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" layerType="PointGeometry" repeatDistanceUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" distUnits="MM" geometryGeneratorType="PointGeometry" dist="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" centroidWhole="0" rotationAngle="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" placement="0" offsetType="0" centroidInside="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" priority="8" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="2.5" maxCurvedCharAngleIn="25"/>
          <rendering scaleMin="0" fontLimitPixelSize="0" minFeatureSize="0" labelPerPart="0" obstacle="0" scaleVisibility="0" fontMaxPixelSize="10000" displayAll="0" drawLabels="1" mergeLines="0" limitNumLabels="0" scaleMax="0" maxNumLabels="2000" obstacleFactor="2" upsidedownLabels="0" fontMinPixelSize="3" obstacleType="0" zIndex="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="intersects($geometry,  geometry(get_feature('auxiliar_moldura', 'id', '1')))"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
  <customproperties>
    <property value="nome" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory maxScaleDenominator="0" direction="1" scaleDependency="Area" barWidth="5" showAxis="0" lineSizeType="MM" minScaleDenominator="0" sizeType="MM" backgroundColor="#ffffff" opacity="1" penWidth="0" minimumSize="0" rotationOffset="270" enabled="0" sizeScale="3x:0,0,0,0,0,0" width="15" spacing="0" scaleBasedVisibility="0" height="15" spacingUnit="MM" lineSizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" diagramOrientation="Up" penColor="#000000" penAlpha="255" backgroundAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field=""/>
      <axisSymbol>
        <symbol name="" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" dist="0" priority="0" placement="0" showAll="1" obstacle="0" linePlacementFlags="18">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nome">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tipo">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              <Option name="Abast - Administrativa (304)" type="QString" value="304"/>
              <Option name="Abast - Edificação de captação de água (301)" type="QString" value="301"/>
              <Option name="Abast - Edificação de recalque de água (303)" type="QString" value="303"/>
              <Option name="Abast - Edificação de tratamento de água (302)" type="QString" value="302"/>
              <Option name="Abast - Mista (395)" type="QString" value="395"/>
              <Option name="Abast - Outros (398)" type="QString" value="398"/>
              <Option name="Aero - Administração (2431)" type="QString" value="2431"/>
              <Option name="Aero - Hangar (2429)" type="QString" value="2429"/>
              <Option name="Aero - Outros (2498)" type="QString" value="2498"/>
              <Option name="Aero - Serviço de Combate à incendios (SCI) (2430)" type="QString" value="2430"/>
              <Option name="Aero - Terminal de cargas (2427)" type="QString" value="2427"/>
              <Option name="Aero - Terminal de passageiros (2426)" type="QString" value="2426"/>
              <Option name="Aero - Torre de controle (2428)" type="QString" value="2428"/>
              <Option name="Agro - Apiário (1214)" type="QString" value="1214"/>
              <Option name="Agro - Aviário (1213)" type="QString" value="1213"/>
              <Option name="Agro - Curral (1218)" type="QString" value="1218"/>
              <Option name="Agro - Outros (1298)" type="QString" value="1298"/>
              <Option name="Agro - Pocilga (1217)" type="QString" value="1217"/>
              <Option name="Agro - Sede operacional de fazenda (1212)" type="QString" value="1212"/>
              <Option name="Agro - Viveiro de plantas (1215)" type="QString" value="1215"/>
              <Option name="Agro - Viveiro para aquicultura (1216)" type="QString" value="1216"/>
              <Option name="Com - Administrativo (105)" type="QString" value="105"/>
              <Option name="Com - Central de comutação e transmissão (102)" type="QString" value="102"/>
              <Option name="Com - Centro de operações de comunicação (101)" type="QString" value="101"/>
              <Option name="Com - Estação repetidora (104)" type="QString" value="104"/>
              <Option name="Com - Estação rádio-base (103)" type="QString" value="103"/>
              <Option name="Comerc - Banco (908)" type="QString" value="908"/>
              <Option name="Comerc - Centro comercial (903)" type="QString" value="903"/>
              <Option name="Comerc - Centro de convenções (905)" type="QString" value="905"/>
              <Option name="Comerc - Centro de exposições (909)" type="QString" value="909"/>
              <Option name="Comerc - Hotel / motel / pousada (907)" type="QString" value="907"/>
              <Option name="Comerc - Mercado (904)" type="QString" value="904"/>
              <Option name="Comerc - Mercado público (910)" type="QString" value="910"/>
              <Option name="Comerc - Outros (998)" type="QString" value="998"/>
              <Option name="Dip – Consulado (2901)" type="QString" value="2901"/>
              <Option name="Dip – Embaixada (2902)" type="QString" value="2902"/>
              <Option name="Edificação abandonada (2)" type="QString" value="2"/>
              <Option name="Edificação de energia (201)" type="QString" value="201"/>
              <Option name="Edificação de medição de fenômenos (1501)" type="QString" value="1501"/>
              <Option name="Edificação destruída (1)" type="QString" value="1"/>
              <Option name="Edificação genérica (0)" type="QString" value="0"/>
              <Option name="Ens - Edificação de educação infantil - pré-escola (517)" type="QString" value="517"/>
              <Option name="Ens - Edificação de educação infantil – creche (516)" type="QString" value="516"/>
              <Option name="Ens - Edificação de educação professional de nível técnico (523)" type="QString" value="523"/>
              <Option name="Ens - Edificação de educação profissional de nível tecnológico (524)" type="QString" value="524"/>
              <Option name="Ens - Edificação de educação superior – Graduação (520)" type="QString" value="520"/>
              <Option name="Ens - Edificação de educação superior – graduação e pós-graduação (521)" type="QString" value="521"/>
              <Option name="Ens - Edificação de educação superior – pós-graduação e extensão (522)" type="QString" value="522"/>
              <Option name="Ens - Edificação de ensino fundamental (518)" type="QString" value="518"/>
              <Option name="Ens - Edificação de ensino médio (519)" type="QString" value="519"/>
              <Option name="Ens - Outras atividades de ensino (525)" type="QString" value="525"/>
              <Option name="Ext Min - Extração de carvão mineral (1110)" type="QString" value="1110"/>
              <Option name="Ext Min - Extração de minerais metálicos (1113)" type="QString" value="1113"/>
              <Option name="Ext Min - Extração de minerais não-metálicos (1114)" type="QString" value="1114"/>
              <Option name="Ext Min - Extração de petróleo e serviços relacionados (1111)" type="QString" value="1111"/>
              <Option name="Ext Min - Outros (1198)" type="QString" value="1198"/>
              <Option name="Farol (2804)" type="QString" value="2804"/>
              <Option name="Ferrov - Administração (2321)" type="QString" value="2321"/>
              <Option name="Ferrov - Estação ferroviária de passageiros (2316)" type="QString" value="2316"/>
              <Option name="Ferrov - Estação metroviária (2317)" type="QString" value="2317"/>
              <Option name="Ferrov - Oficina de manutenção (2320)" type="QString" value="2320"/>
              <Option name="Ferrov - Outros (2398)" type="QString" value="2398"/>
              <Option name="Ferrov - Terminal ferroviário de cargas (2318)" type="QString" value="2318"/>
              <Option name="Ferrov - Terminal ferroviário de passageiros e cargas (2319)" type="QString" value="2319"/>
              <Option name="Habitacão indigena (1401)" type="QString" value="1401"/>
              <Option name="Ind - Confecção de artigos de vestuário e acessórios (1018)" type="QString" value="1018"/>
              <Option name="Ind - Fabriação de máquinas de escritório e equipamentos de informática (1030)" type="QString" value="1030"/>
              <Option name="Ind - Fabricação alimentícia e bebidas (1015)" type="QString" value="1015"/>
              <Option name="Ind - Fabricação de artigos de borracha e material plástico (1025)" type="QString" value="1025"/>
              <Option name="Ind - Fabricação de celulose, papel e produtos de papel (1021)" type="QString" value="1021"/>
              <Option name="Ind - Fabricação de coque, refino de petróleo, elaboração de combustíveis nucleares e produção de álcool (1023)" type="QString" value="1023"/>
              <Option name="Ind - Fabricação de equipamentos de instrumentação médico-hospitalares, instrumentos de precisão e ópticos, automação industrial, cronômetros e relógios (1033)" type="QString" value="1033"/>
              <Option name="Ind - Fabricação de material eletrônico, de aparelhos e equipamentos de comunicações (1032)" type="QString" value="1032"/>
              <Option name="Ind - Fabricação de máquinas e equipamentos (1029)" type="QString" value="1029"/>
              <Option name="Ind - Fabricação de máquinas, aparelhos e materiais elétricos (1031)" type="QString" value="1031"/>
              <Option name="Ind - Fabricação de móveis e indústrias diversas (1036)" type="QString" value="1036"/>
              <Option name="Ind - Fabricação de outros equipamentos de transporte (1035)" type="QString" value="1035"/>
              <Option name="Ind - Fabricação de produtos de madeira e celulose (1020)" type="QString" value="1020"/>
              <Option name="Ind - Fabricação de produtos de metal (1028)" type="QString" value="1028"/>
              <Option name="Ind - Fabricação de produtos de minerais não-metálicos (1026)" type="QString" value="1026"/>
              <Option name="Ind - Fabricação de produtos do fumo (1016)" type="QString" value="1016"/>
              <Option name="Ind - Fabricação de produtos químicos (1024)" type="QString" value="1024"/>
              <Option name="Ind - Fabricação de produtos têxteis (1017)" type="QString" value="1017"/>
              <Option name="Ind - Fabricação e montagem de veículos automotores, reboques e carrocerias (1034)" type="QString" value="1034"/>
              <Option name="Ind - Industria de edição, impressão e reprodução de gravações (1022)" type="QString" value="1022"/>
              <Option name="Ind - Indústria de construção (1045)" type="QString" value="1045"/>
              <Option name="Ind - Indústria de metalurgia básica (1027)" type="QString" value="1027"/>
              <Option name="Ind - Indústria reciclagem (1037)" type="QString" value="1037"/>
              <Option name="Ind - Outros (1098)" type="QString" value="1098"/>
              <Option name="Ind - Preparação de couros, artefatos de couro, artigos de viagem e calçados (1019)" type="QString" value="1019"/>
              <Option name="Laz - Anfiteatro (805)" type="QString" value="805"/>
              <Option name="Laz - Arquivo (809)" type="QString" value="809"/>
              <Option name="Laz - Biblioteca (810)" type="QString" value="810"/>
              <Option name="Laz - Centro cultural (807)" type="QString" value="807"/>
              <Option name="Laz - Cinema (806)" type="QString" value="806"/>
              <Option name="Laz - Concha acústica (811)" type="QString" value="811"/>
              <Option name="Laz - Conservatório (812)" type="QString" value="812"/>
              <Option name="Laz - Coreto ou tribuna (813)" type="QString" value="813"/>
              <Option name="Laz - Equipamentos culturais diversos (814)" type="QString" value="814"/>
              <Option name="Laz - Espaço de eventos e ou cultural (815)" type="QString" value="815"/>
              <Option name="Laz - Estádio (801)" type="QString" value="801"/>
              <Option name="Laz - Ginásio (802)" type="QString" value="802"/>
              <Option name="Laz - Museu (803)" type="QString" value="803"/>
              <Option name="Laz - Outros (898)" type="QString" value="898"/>
              <Option name="Laz - Plataforma de pesca (808)" type="QString" value="808"/>
              <Option name="Laz - Teatro (804)" type="QString" value="804"/>
              <Option name="Pol – Delegacia de polícia civil (3001)" type="QString" value="3001"/>
              <Option name="Pol – Outras polícias civis (3098)" type="QString" value="3098"/>
              <Option name="Pol – Polícia militar (3005)" type="QString" value="3005"/>
              <Option name="Pol – Posto de polícia rodoviária federal (3004)" type="QString" value="3004"/>
              <Option name="Pol – Posto guarda municipal (3003)" type="QString" value="3003"/>
              <Option name="Pol – Posto policia militar (3002)" type="QString" value="3002"/>
              <Option name="Port - Edificação portuária (2501)" type="QString" value="2501"/>
              <Option name="Posto Fisc - Fiscalização (1911)" type="QString" value="1911"/>
              <Option name="Posto Fisc - Misto (1995)" type="QString" value="1995"/>
              <Option name="Posto Fisc - Posto de pesagem (1912)" type="QString" value="1912"/>
              <Option name="Posto Fisc - Tributação (1910)" type="QString" value="1910"/>
              <Option name="Posto de combustivel (2601)" type="QString" value="2601"/>
              <Option name="Pub Civ - Assembléia legislativa (1309)" type="QString" value="1309"/>
              <Option name="Pub Civ - Autarquia (1314)" type="QString" value="1314"/>
              <Option name="Pub Civ - Cartorial (1303)" type="QString" value="1303"/>
              <Option name="Pub Civ - Câmara municipal (1308)" type="QString" value="1308"/>
              <Option name="Pub Civ - Eleitoral (1305)" type="QString" value="1305"/>
              <Option name="Pub Civ - Fundação (1312)" type="QString" value="1312"/>
              <Option name="Pub Civ - Fórum (1310)" type="QString" value="1310"/>
              <Option name="Pub Civ - Gestão pública (1304)" type="QString" value="1304"/>
              <Option name="Pub Civ - Outros (1398)" type="QString" value="1398"/>
              <Option name="Pub Civ - Prefeitura (1322)" type="QString" value="1322"/>
              <Option name="Pub Civ - Prisional (1302)" type="QString" value="1302"/>
              <Option name="Pub Civ - Procuradoria (1313)" type="QString" value="1313"/>
              <Option name="Pub Civ - Produção ou pequisa pública (1306)" type="QString" value="1306"/>
              <Option name="Pub Civ - Secretaria (1311)" type="QString" value="1311"/>
              <Option name="Pub Civ - Seguridade social (1307)" type="QString" value="1307"/>
              <Option name="Pub Mil - Aquartelamento (1712)" type="QString" value="1712"/>
              <Option name="Pub Mil - Delegacia de serviço militar (1718)" type="QString" value="1718"/>
              <Option name="Pub Mil - Hotel de trânsito (1717)" type="QString" value="1717"/>
              <Option name="Pub Mil - Outros (1798)" type="QString" value="1798"/>
              <Option name="Rel - Administração (610)" type="QString" value="610"/>
              <Option name="Rel - Centro religioso (603)" type="QString" value="603"/>
              <Option name="Rel - Convento (605)" type="QString" value="605"/>
              <Option name="Rel - Igreja (601)" type="QString" value="601"/>
              <Option name="Rel - Mesquita (606)" type="QString" value="606"/>
              <Option name="Rel - Mosteiro (604)" type="QString" value="604"/>
              <Option name="Rel - Outros (698)" type="QString" value="698"/>
              <Option name="Rel - Sinagoga (607)" type="QString" value="607"/>
              <Option name="Rel - Templo (602)" type="QString" value="602"/>
              <Option name="Rel - Terreiro (609)" type="QString" value="609"/>
              <Option name="Rod - Outros (2298)" type="QString" value="2298"/>
              <Option name="Rod - Parada interestadual (2210)" type="QString" value="2210"/>
              <Option name="Rod - Posto de fiscalização rodoviária (2214)" type="QString" value="2214"/>
              <Option name="Rod - Posto de pedágio (2213)" type="QString" value="2213"/>
              <Option name="Rod - Terminal interestadual (2208)" type="QString" value="2208"/>
              <Option name="Rod - Terminal urbano (2209)" type="QString" value="2209"/>
              <Option name="Saneam - Administração (408)" type="QString" value="408"/>
              <Option name="Saneam - Edificação de recalque de resíduos (403)" type="QString" value="403"/>
              <Option name="Saneam - Edificação de tratamento de esgoto (405)" type="QString" value="405"/>
              <Option name="Saneam - Incinerador de resíduos (407)" type="QString" value="407"/>
              <Option name="Saneam - Outros (498)" type="QString" value="498"/>
              <Option name="Saneam - Usina de reciclagem (406)" type="QString" value="406"/>
              <Option name="Sau - Atendimento a urgência e emergências (pronto socorro) (2027)" type="QString" value="2027"/>
              <Option name="Sau - Atendimento hospitalar (2025)" type="QString" value="2025"/>
              <Option name="Sau - Atendimento hospitalar especializado (2026)" type="QString" value="2026"/>
              <Option name="Sau - Atenção ambulatorial (posto e centro de saúde) (2028)" type="QString" value="2028"/>
              <Option name="Sau - Outras atividades relacionadas com a atenção à saúde (instituto de pesquisa) (2030)" type="QString" value="2030"/>
              <Option name="Sau - Serviços de complementação diagnóstica ou terapêutica (2029)" type="QString" value="2029"/>
              <Option name="Sau - Serviços veterinários (2031)" type="QString" value="2031"/>
              <Option name="Ssoc – Serviço Social (2101)" type="QString" value="2101"/>
              <Option name="Tur - Cruzeiro (709)" type="QString" value="709"/>
              <Option name="Tur - Estátua (710)" type="QString" value="710"/>
              <Option name="Tur - Mirante (711)" type="QString" value="711"/>
              <Option name="Tur - Monumento (712)" type="QString" value="712"/>
              <Option name="Tur - Outros (798)" type="QString" value="798"/>
              <Option name="Tur - Panteão (713)" type="QString" value="713"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="material_construcao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              <Option name="Alvenaria (1)" type="QString" value="1"/>
              <Option name="Concreto (2)" type="QString" value="2"/>
              <Option name="Desconhecido (0)" type="QString" value="0"/>
              <Option name="Madeira (5)" type="QString" value="5"/>
              <Option name="Metal (3)" type="QString" value="3"/>
              <Option name="Não aplicável (97)" type="QString" value="97"/>
              <Option name="Outros (98)" type="QString" value="98"/>
              <Option name="Rocha (4)" type="QString" value="4"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="observacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="data_modificacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="controle_uuid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="usuario_criacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="usuario_atualizacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="insumo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="data_insumo">
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
    <alias name="" index="3" field="material_construcao"/>
    <alias name="" index="4" field="observacao"/>
    <alias name="" index="5" field="data_modificacao"/>
    <alias name="" index="6" field="controle_uuid"/>
    <alias name="" index="7" field="usuario_criacao"/>
    <alias name="" index="8" field="usuario_atualizacao"/>
    <alias name="" index="9" field="insumo"/>
    <alias name="" index="10" field="data_insumo"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="nome"/>
    <default expression="" applyOnUpdate="0" field="tipo"/>
    <default expression="" applyOnUpdate="0" field="material_construcao"/>
    <default expression="" applyOnUpdate="0" field="observacao"/>
    <default expression="" applyOnUpdate="0" field="data_modificacao"/>
    <default expression="" applyOnUpdate="0" field="controle_uuid"/>
    <default expression="" applyOnUpdate="0" field="usuario_criacao"/>
    <default expression="" applyOnUpdate="0" field="usuario_atualizacao"/>
    <default expression="" applyOnUpdate="0" field="insumo"/>
    <default expression="" applyOnUpdate="0" field="data_insumo"/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" field="id" constraints="3" exp_strength="0" notnull_strength="1"/>
    <constraint unique_strength="0" field="nome" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="tipo" constraints="1" exp_strength="0" notnull_strength="1"/>
    <constraint unique_strength="0" field="material_construcao" constraints="1" exp_strength="0" notnull_strength="1"/>
    <constraint unique_strength="0" field="observacao" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="data_modificacao" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="controle_uuid" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="usuario_criacao" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="usuario_atualizacao" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="insumo" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="data_insumo" constraints="0" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="nome" exp=""/>
    <constraint desc="" field="tipo" exp=""/>
    <constraint desc="" field="material_construcao" exp=""/>
    <constraint desc="" field="observacao" exp=""/>
    <constraint desc="" field="data_modificacao" exp=""/>
    <constraint desc="" field="controle_uuid" exp=""/>
    <constraint desc="" field="usuario_criacao" exp=""/>
    <constraint desc="" field="usuario_atualizacao" exp=""/>
    <constraint desc="" field="insumo" exp=""/>
    <constraint desc="" field="data_insumo" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;tipo&quot;">
    <columns>
      <column width="-1" name="id" type="field" hidden="0"/>
      <column width="-1" name="nome" type="field" hidden="0"/>
      <column width="399" name="tipo" type="field" hidden="0"/>
      <column width="196" name="material_construcao" type="field" hidden="0"/>
      <column width="-1" name="observacao" type="field" hidden="0"/>
      <column width="-1" name="data_modificacao" type="field" hidden="0"/>
      <column width="-1" name="controle_uuid" type="field" hidden="0"/>
      <column width="-1" name="usuario_criacao" type="field" hidden="0"/>
      <column width="-1" name="usuario_atualizacao" type="field" hidden="0"/>
      <column width="-1" name="insumo" type="field" hidden="0"/>
      <column width="-1" name="data_insumo" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
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
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="controle_uuid" editable="1"/>
    <field name="data_insumo" editable="1"/>
    <field name="data_modificacao" editable="1"/>
    <field name="id" editable="1"/>
    <field name="insumo" editable="1"/>
    <field name="material_construcao" editable="1"/>
    <field name="nome" editable="1"/>
    <field name="observacao" editable="1"/>
    <field name="tipo" editable="1"/>
    <field name="usuario_atualizacao" editable="1"/>
    <field name="usuario_criacao" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="controle_uuid" labelOnTop="0"/>
    <field name="data_insumo" labelOnTop="0"/>
    <field name="data_modificacao" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="insumo" labelOnTop="0"/>
    <field name="material_construcao" labelOnTop="0"/>
    <field name="nome" labelOnTop="0"/>
    <field name="observacao" labelOnTop="0"/>
    <field name="tipo" labelOnTop="0"/>
    <field name="usuario_atualizacao" labelOnTop="0"/>
    <field name="usuario_criacao" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>nome</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
