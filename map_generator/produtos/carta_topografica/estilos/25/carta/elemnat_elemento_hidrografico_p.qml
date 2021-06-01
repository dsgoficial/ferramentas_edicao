<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" version="3.12.2-București" readOnly="0" hasScaleBasedVisibilityFlag="0" minScale="100000000" simplifyDrawingTol="1" simplifyDrawingHints="0" labelsEnabled="1" simplifyMaxScale="1" simplifyAlgorithm="0" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" type="RuleRenderer" symbollevels="0" forceraster="0">
    <rules key="{777b30c0-eca0-4b47-ab3c-18dd28190bca}">
      <rule symbol="0" label="Corredeira ou queda d'água" filter=" &quot;tipo&quot;  in (12, 9, 10, 11)" key="{04fbc4dc-5072-4c8c-b8d7-1edc7fe153e2}"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
        <layer enabled="1" class="GeometryGenerator" pass="0" locked="0">
          <prop k="SymbolType" v="Marker"/>
          <prop k="geometryModifier" v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )&#xd;&#xa;"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
            <layer enabled="1" class="SvgMarker" pass="0" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="255,158,23,255"/>
              <prop k="fixedAspectRatio" v="0"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB3aWR0aD0iMTBtbSIKICAgaGVpZ2h0PSIxMG1tIgogICB2aWV3Qm94PSIwIDAgMTAgMTAiCiAgIHZlcnNpb249IjEuMSIKICAgaWQ9InN2ZzgiCiAgIGlua3NjYXBlOnZlcnNpb249IjAuOTIuNCAoNWRhNjg5YzMxMywgMjAxOS0wMS0xNCkiCiAgIHNvZGlwb2RpOmRvY25hbWU9IkNvcnJlZGVpcmEuc3ZnIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzMiI+CiAgICA8aW5rc2NhcGU6cGF0aC1lZmZlY3QKICAgICAgIGVmZmVjdD0ic3Bpcm8iCiAgICAgICBpZD0icGF0aC1lZmZlY3Q4NDgiCiAgICAgICBpc192aXNpYmxlPSJ0cnVlIiAvPgogICAgPGNsaXBQYXRoCiAgICAgICBpZD0iY2xpcFBhdGgxOCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlkPSJwYXRoMjAiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGQ9Ik0gMCwwIEggOTEuODQzOCBWIDkxLjg0MzggSCAwIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxjbGlwUGF0aAogICAgICAgaWQ9ImNsaXBQYXRoMTgtNCI+CiAgICAgIDxwYXRoCiAgICAgICAgIGlkPSJwYXRoMjAtNyIKICAgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgICAgZD0iTSAwLDAgSCA5MS44NDM4IFYgOTEuODQzOCBIIDAiIC8+CiAgICA8L2NsaXBQYXRoPgogICAgPGNsaXBQYXRoCiAgICAgICBpZD0iY2xpcFBhdGgxOC02Ij4KICAgICAgPHBhdGgKICAgICAgICAgaWQ9InBhdGgyMC01IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBkPSJNIDAsMCBIIDE1OS44NzUgViAxNTkuODc1IEggMCIgLz4KICAgIDwvY2xpcFBhdGg+CiAgICA8c3R5bGUKICAgICAgIGlkPSJzdHlsZTEwMDMiCiAgICAgICB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbCiAgICAuc3RyMCB7c3Ryb2tlOiMzNzM0MzU7c3Ryb2tlLXdpZHRoOjEzfQogICAgLmZpbDAge2ZpbGw6I0ZFRkVGRX0KICAgXV0+PC9zdHlsZT4KICAgIDxpbmtzY2FwZTpwYXRoLWVmZmVjdAogICAgICAgZWZmZWN0PSJzcGlybyIKICAgICAgIGlkPSJwYXRoLWVmZmVjdDg0OC00IgogICAgICAgaXNfdmlzaWJsZT0idHJ1ZSIgLz4KICAgIDxpbmtzY2FwZTpwYXRoLWVmZmVjdAogICAgICAgZWZmZWN0PSJzcGlybyIKICAgICAgIGlkPSJwYXRoLWVmZmVjdDg0OC00LTYiCiAgICAgICBpc192aXNpYmxlPSJ0cnVlIiAvPgogIDwvZGVmcz4KICA8c29kaXBvZGk6bmFtZWR2aWV3CiAgICAgaWQ9ImJhc2UiCiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIgogICAgIGJvcmRlcmNvbG9yPSIjNjY2NjY2IgogICAgIGJvcmRlcm9wYWNpdHk9IjEuMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIgogICAgIGlua3NjYXBlOnBhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6em9vbT0iMTMuNTI2MTY1IgogICAgIGlua3NjYXBlOmN4PSIxMC42Njg5MjMiCiAgICAgaW5rc2NhcGU6Y3k9IjI5LjAyNzcxMiIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0iZzgzMiIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6c25hcC1vdGhlcnM9ImZhbHNlIgogICAgIGlua3NjYXBlOm9iamVjdC1ub2Rlcz0iZmFsc2UiCiAgICAgaW5rc2NhcGU6c25hcC1ub2Rlcz0iZmFsc2UiCiAgICAgaW5rc2NhcGU6c25hcC1nbG9iYWw9ImZhbHNlIgogICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIKICAgICBpbmtzY2FwZTp3aW5kb3ctaGVpZ2h0PSIxMDE3IgogICAgIGlua3NjYXBlOndpbmRvdy14PSItOCIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGE1Ij4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwtMjg3KSI+CiAgICA8ZwogICAgICAgaWQ9Imc4MzIiCiAgICAgICB0cmFuc2Zvcm09Im1hdHJpeCgwLjA2ODg3MjQ2LDAsMCwwLjA2Mzc3MzM0LDIuODI0ODY4NCwyNjguMTM4OTQpIgogICAgICAgc3R5bGU9InN0cm9rZS13aWR0aDozLjk5MjI3MTE4Ij4KICAgICAgPHJlY3QKICAgICAgICAgc3R5bGU9ImZpbGw6I2ZmZmZmZjtmaWxsLW9wYWNpdHk6MTtmaWxsLXJ1bGU6ZXZlbm9kZDtzdHJva2U6IzAwMDAwMDtzdHJva2Utd2lkdGg6Mi4yNjMzMzUyO3N0cm9rZS1saW5lam9pbjpyb3VuZDtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBpZD0icmVjdDE5IgogICAgICAgICB3aWR0aD0iMTMyLjYxNjQ5IgogICAgICAgICBoZWlnaHQ9IjE0Mi4yMjg4OCIKICAgICAgICAgeD0iLTM0LjAwOTM5MiIKICAgICAgICAgeT0iMzAzLjE1MzQxIiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDojZmZmZmZmO3N0cm9rZTojMDBlM2ZiO3N0cm9rZS13aWR0aDoxNi4yOTg2NzA1MztzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxO2ZpbGwtb3BhY2l0eToxIgogICAgICAgICBkPSJtIC0xMDAuOTQzMjMsMjg2LjYxODggYyAzLjU3ODI5MSwtOS41ODA2NCAxMC40MzYyNzQsLTE3LjkwMTc2IDE5LjE1NzAyOSwtMjMuMjQ0MTYgOC43MjA3NTYsLTUuMzQyNCAxOS4yNDkwNDgsLTcuNjcyMjMgMjkuNDA5NjQxLC02LjUwODEzIDguMzY5OTc0LDAuOTU4OTUgMTYuMjk0MDIsNC4xNzQ4MSAyNC4wNjMxNjMsNy40MzMxIDcuNzY5MTQzLDMuMjU4MjkgMTUuNjA4ODEzLDYuNjIxNDMgMjMuOTM1NDc0Nyw3LjkwMzEzIDEwLjUwNTUyNTcsMS42MTcwOSAyMS41MTczOTUzLC0wLjI0ODE1IDMwLjkwNDM2NTMsLTUuMjM0NzIgOS4zODY5NywtNC45ODY1NiAxNy4wOTcyMjcsLTEzLjA2NjkzIDIxLjYzODUyNCwtMjIuNjc3MjIiCiAgICAgICAgIGlkPSJwYXRoODQ2IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpbmtzY2FwZTpwYXRoLWVmZmVjdD0iI3BhdGgtZWZmZWN0ODQ4IgogICAgICAgICBpbmtzY2FwZTpvcmlnaW5hbC1kPSJtIC0xMDAuOTQzMjMsMjg2LjYxODggYyAxNi4wOTgwNTgsLTkuOTIxNTggMzIuMzgxNjIxLC0xOS44MzkwMSA0OC41NjY2NywtMjkuNzUyMjkgMTYuMTg1MDQ4LC05LjkxMzI4IDMyLjAwMjkzMywxMC4yMiA0Ny45OTg2Mzc3LDE1LjMzNjIzIDE1Ljk5NTcwNTMsNS4xMTYyMiAzNS4wMzI0MzEzLC0xOC42MTIxMSA1Mi41NDI4ODkzLC0yNy45MTE5NCIKICAgICAgICAgdHJhbnNmb3JtPSJtYXRyaXgoMC42MTMzMDE2MywwLDAsMC41OTA0MjMyOCw0OC4yOTY3MiwxNzIuNTA4NTgpIiAvPgogICAgICA8cGF0aAogICAgICAgICBzdHlsZT0iZmlsbDpub25lO3N0cm9rZTojMDBlM2ZiO3N0cm9rZS13aWR0aDoxNi4yOTg2NzA2NztzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIC0xMDAuOTQzMjMsMjg2LjYxODggYyAzLjU3ODI5MSwtOS41ODA2NCAxMC40MzYyNzQsLTE3LjkwMTc2IDE5LjE1NzAyOSwtMjMuMjQ0MTYgOC43MjA3NTYsLTUuMzQyNCAxOS4yNDkwNDgsLTcuNjcyMjMgMjkuNDA5NjQxLC02LjUwODEzIDguMzY5OTc0LDAuOTU4OTUgMTYuMjk0MDIsNC4xNzQ4MSAyNC4wNjMxNjMsNy40MzMxIDcuNzY5MTQzLDMuMjU4MjkgMTUuNjA4ODEzLDYuNjIxNDMgMjMuOTM1NDc0Nyw3LjkwMzEzIDEwLjUwNTUyNTcsMS42MTcwOSAyMS41MTczOTUzLC0wLjI0ODE1IDMwLjkwNDM2NTMsLTUuMjM0NzIgOS4zODY5NywtNC45ODY1NiAxNy4wOTcyMjcsLTEzLjA2NjkzIDIxLjYzODUyNCwtMjIuNjc3MjIiCiAgICAgICAgIGlkPSJwYXRoODQ2LTYiCiAgICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICAgIGlua3NjYXBlOnBhdGgtZWZmZWN0PSIjcGF0aC1lZmZlY3Q4NDgtNCIKICAgICAgICAgaW5rc2NhcGU6b3JpZ2luYWwtZD0ibSAtMTAwLjk0MzIzLDI4Ni42MTg4IGMgMTYuMDk4MDU4LC05LjkyMTU4IDMyLjM4MTYyMSwtMTkuODM5MDEgNDguNTY2NjcsLTI5Ljc1MjI5IDE2LjE4NTA0OCwtOS45MTMyOCAzMi4wMDI5MzMsMTAuMjIgNDcuOTk4NjM3NywxNS4zMzYyMyAxNS45OTU3MDUzLDUuMTE2MjIgMzUuMDMyNDMxMywtMTguNjEyMTEgNTIuNTQyODg5MywtMjcuOTExOTQiCiAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuNjEzMzAxNjIsMCwwLDAuNTkwNDIzMjgsNTAuMTYxMjM3LDIxNi43MTk4MSkiIC8+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMwMGUzZmI7c3Ryb2tlLXdpZHRoOjE2LjI5ODY3MDY3O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gLTEwMC45NDMyMywyODYuNjE4OCBjIDMuNTc4MjkxLC05LjU4MDY0IDEwLjQzNjI3NCwtMTcuOTAxNzYgMTkuMTU3MDI5LC0yMy4yNDQxNiA4LjcyMDc1NiwtNS4zNDI0IDE5LjI0OTA0OCwtNy42NzIyMyAyOS40MDk2NDEsLTYuNTA4MTMgOC4zNjk5NzQsMC45NTg5NSAxNi4yOTQwMiw0LjE3NDgxIDI0LjA2MzE2Myw3LjQzMzEgNy43NjkxNDMsMy4yNTgyOSAxNS42MDg4MTMsNi42MjE0MyAyMy45MzU0NzQ3LDcuOTAzMTMgMTAuNTA1NTI1NywxLjYxNzA5IDIxLjUxNzM5NTMsLTAuMjQ4MTUgMzAuOTA0MzY1MywtNS4yMzQ3MiA5LjM4Njk3LC00Ljk4NjU2IDE3LjA5NzIyNywtMTMuMDY2OTMgMjEuNjM4NTI0LC0yMi42NzcyMiIKICAgICAgICAgaWQ9InBhdGg4NDYtNi00IgogICAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgICBpbmtzY2FwZTpwYXRoLWVmZmVjdD0iI3BhdGgtZWZmZWN0ODQ4LTQtNiIKICAgICAgICAgaW5rc2NhcGU6b3JpZ2luYWwtZD0ibSAtMTAwLjk0MzIzLDI4Ni42MTg4IGMgMTYuMDk4MDU4LC05LjkyMTU4IDMyLjM4MTYyMSwtMTkuODM5MDEgNDguNTY2NjcsLTI5Ljc1MjI5IDE2LjE4NTA0OCwtOS45MTMyOCAzMi4wMDI5MzMsMTAuMjIgNDcuOTk4NjM3NywxNS4zMzYyMyAxNS45OTU3MDUzLDUuMTE2MjIgMzUuMDMyNDMxMywtMTguNjEyMTEgNTIuNTQyODg5MywtMjcuOTExOTQiCiAgICAgICAgIHRyYW5zZm9ybT0ibWF0cml4KDAuNjEzMzAxNjIsMCwwLDAuNTkwNDIzMjgsNTAuNzI5MjY4LDI1OS45Njc5OCkiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="0,153,255,255"/>
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
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style isExpression="0" textColor="0,0,0,255" fontItalic="0" fontFamily="Times New Roman" fontSizeUnit="MM" textOrientation="horizontal" fontCapitals="0" blendMode="0" fontWordSpacing="0" multilineHeight="1" previewBkgrdColor="255,255,255,255" textOpacity="1" fieldName="nome" fontLetterSpacing="0" fontWeight="50" fontSize="3.5" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" namedStyle="Normal" fontStrikeout="0" fontKerning="1" useSubstitutions="0">
        <text-buffer bufferDraw="1" bufferJoinStyle="128" bufferColor="255,255,255,255" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="0.6" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="MM"/>
        <text-mask maskEnabled="0" maskedSymbolLayers="" maskOpacity="1" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <background shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeType="0" shapeBorderWidth="0" shapeRadiiY="0" shapeSizeX="0" shapeRadiiX="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeDraw="0" shapeBlendMode="0" shapeRotationType="0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeY="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1">
          <symbol name="markerSymbol" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
            <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="183,72,75,255"/>
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
      <placement preserveRotation="1" xOffset="0" maxCurvedCharAngleOut="-25" quadOffset="4" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" layerType="PointGeometry" repeatDistanceUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )&#xd;&#xa;" distUnits="MM" geometryGeneratorType="PointGeometry" dist="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" geometryGeneratorEnabled="1" centroidWhole="0" rotationAngle="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" placement="0" offsetType="0" centroidInside="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" priority="7" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" maxCurvedCharAngleIn="25"/>
      <rendering scaleMin="0" fontLimitPixelSize="0" minFeatureSize="0" labelPerPart="0" obstacle="1" scaleVisibility="0" fontMaxPixelSize="10000" displayAll="0" drawLabels="1" mergeLines="0" limitNumLabels="0" scaleMax="0" maxNumLabels="1" obstacleFactor="1.78" upsidedownLabels="0" fontMinPixelSize="3" obstacleType="0" zIndex="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties" type="Map">
            <Option name="Show" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="intersects($geometry,  get_feature('auxiliar_moldura', 'id', '1'))"/>
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
    <DiagramCategory maxScaleDenominator="1e+08" direction="1" scaleDependency="Area" barWidth="5" showAxis="0" lineSizeType="MM" minScaleDenominator="0" sizeType="MM" backgroundColor="#ffffff" opacity="1" penWidth="0" minimumSize="0" rotationOffset="270" enabled="0" sizeScale="3x:0,0,0,0,0,0" width="15" spacing="0" scaleBasedVisibility="0" height="15" spacingUnit="MM" lineSizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" diagramOrientation="Up" penColor="#000000" penAlpha="255" backgroundAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0">
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
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              </Option>
              <Option type="Map">
                <Option name="Cachoeira (9)" type="QString" value="9"/>
              </Option>
              <Option type="Map">
                <Option name="Catarata (11)" type="QString" value="11"/>
              </Option>
              <Option type="Map">
                <Option name="Corredeira (12)" type="QString" value="12"/>
              </Option>
              <Option type="Map">
                <Option name="Foz marítima (6)" type="QString" value="6"/>
              </Option>
              <Option type="Map">
                <Option name="Olho dágua (3)" type="QString" value="3"/>
              </Option>
              <Option type="Map">
                <Option name="Poço artesiano (2)" type="QString" value="2"/>
              </Option>
              <Option type="Map">
                <Option name="Poço dágua (1)" type="QString" value="1"/>
              </Option>
              <Option type="Map">
                <Option name="Recife afastado (19)" type="QString" value="19"/>
              </Option>
              <Option type="Map">
                <Option name="Recife contiguo (18)" type="QString" value="18"/>
              </Option>
              <Option type="Map">
                <Option name="Rocha em água (8)" type="QString" value="8"/>
              </Option>
              <Option type="Map">
                <Option name="Salto (10)" type="QString" value="10"/>
              </Option>
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
    <alias name="" index="3" field="observacao"/>
    <alias name="" index="4" field="data_modificacao"/>
    <alias name="" index="5" field="controle_uuid"/>
    <alias name="" index="6" field="usuario_criacao"/>
    <alias name="" index="7" field="usuario_atualizacao"/>
    <alias name="" index="8" field="insumo"/>
    <alias name="" index="9" field="data_insumo"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="nome"/>
    <default expression="" applyOnUpdate="0" field="tipo"/>
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
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column width="-1" name="id" type="field" hidden="0"/>
      <column width="-1" name="nome" type="field" hidden="0"/>
      <column width="-1" name="tipo" type="field" hidden="0"/>
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
    <field name="controle_uuid" editable="1"/>
    <field name="data_insumo" editable="1"/>
    <field name="data_modificacao" editable="1"/>
    <field name="id" editable="1"/>
    <field name="insumo" editable="1"/>
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
