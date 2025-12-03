<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 symbollevels="0" forceraster="0" type="RuleRenderer" referencescale="-1" enableorderby="0">
    <rules key="{9ed15ebd-9075-4a2b-8fe6-a3b74ad93330}">
      <rule key="{16c45c6c-f923-4cd9-885c-e5331feaaad4}" filter="&quot;visivel&quot; =1" label="Visível">
        <rule symbol="0" key="{4a220843-0c95-45b3-a498-24a3731da7e2}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (1)" label="Cemiterio"/>
        <rule symbol="1" key="{bf4038cd-98e9-4bb0-8e9f-cfca9c83912b}" description="Campo Quadra e Pista de competição" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (2)" label="Sports Ground"/>
        <rule symbol="2" key="{b743f971-44f4-46e7-87c8-634ee8e1ae86}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (3)" label="Pista Competicao Outras"/>
        <rule symbol="3" key="{a51f4739-a69c-4540-be37-f4828ec1db10}" filter="tipo = 1001" label="Arquibancada"/>
        <rule symbol="4" key="{3dbc766a-fb9b-4186-9fa1-23be95ceed87}" filter="tipo = 501" label="Piscina"/>
        <rule symbol="5" key="{2c93065a-c1ef-4d14-b3bb-f108a8ca7108}" description="Pátio aeroportuário" filter="&quot;tipo&quot; = 409" label="A10811A"/>
        <rule symbol="6" key="{e96bb30d-03cf-4bf4-a2cb-57ee3a2d9b05}" filter="(&quot;tipo&quot; - &quot;tipo&quot;%100)/100 in (4) and tipo != 409" label="Pátio"/>
        <rule symbol="7" key="{3c22666c-642a-4bc6-9f25-32a8c2bc6e28}" filter="tipo = 901" label="Estacionamento"/>
        <rule symbol="8" key="{f921ea0a-a731-4d00-b05a-f260bdc1de20}" filter="tipo = 701" label="Ruina"/>
        <rule symbol="9" key="{31606071-735a-4162-8042-8a87e92a2308}" filter="tipo = 601" label="Sítio Arqueológico"/>
        <rule symbol="10" key="{6b599614-7f52-4ae0-a795-12d579e93b5b}" filter="ELSE"/>
      </rule>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,4,255"/>
          <prop k="outline_style" v="no"/>
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
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.1"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="trim_distance_end" type="QString" value="0"/>
            <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_end_unit" type="QString" value="MM"/>
            <Option name="trim_distance_start" type="QString" value="0"/>
            <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,4,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.1"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="trim_distance_end" v="0"/>
          <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_end_unit" v="MM"/>
          <prop k="trim_distance_start" v="0"/>
          <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_start_unit" v="MM"/>
          <prop k="tweak_dash_pattern_on_corners" v="0"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
      <symbol name="1" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="200,224,217,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="23,158,106,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.15"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="200,224,217,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="23,158,106,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('verde346-12_200-224-217_#C8E0D9')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="10" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="204,0,3,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="82,82,82,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="204,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="82,82,82,255"/>
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
      <symbol name="2" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
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
          <prop k="outline_color" v="35,35,35,255"/>
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
      <symbol name="3" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
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
          <prop k="outline_color" v="35,35,35,255"/>
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
      <symbol name="4" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('ciano-31_158-210-241_#9ED2F1')"/>
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
      <symbol name="5" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="192,199,233,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="56,70,157,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="192,199,233,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="56,70,157,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.1"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('azul72-12_192-199-233_#C0C7E9')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('azul72-100_56-70-157_#38469D')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
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
          <prop k="color" v="0,0,255,255"/>
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
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
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
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,0,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.1"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="trim_distance_end" type="QString" value="0"/>
            <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_end_unit" type="QString" value="MM"/>
            <Option name="trim_distance_start" type="QString" value="0"/>
            <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.1"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="trim_distance_end" v="0"/>
          <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_end_unit" v="MM"/>
          <prop k="trim_distance_start" v="0"/>
          <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_start_unit" v="MM"/>
          <prop k="tweak_dash_pattern_on_corners" v="0"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
      <symbol name="7" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
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
          <prop k="color" v="0,0,255,255"/>
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
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
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
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,0,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.1"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="trim_distance_end" type="QString" value="0"/>
            <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_end_unit" type="QString" value="MM"/>
            <Option name="trim_distance_start" type="QString" value="0"/>
            <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.1"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="trim_distance_end" v="0"/>
          <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_end_unit" v="MM"/>
          <prop k="trim_distance_start" v="0"/>
          <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_start_unit" v="MM"/>
          <prop k="tweak_dash_pattern_on_corners" v="0"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
      <symbol name="8" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
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
          <prop k="color" v="0,0,255,255"/>
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
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
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
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,0,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.1"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="trim_distance_end" type="QString" value="0"/>
            <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_end_unit" type="QString" value="MM"/>
            <Option name="trim_distance_start" type="QString" value="0"/>
            <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.1"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="trim_distance_end" v="0"/>
          <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_end_unit" v="MM"/>
          <prop k="trim_distance_start" v="0"/>
          <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_start_unit" v="MM"/>
          <prop k="tweak_dash_pattern_on_corners" v="0"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
      <symbol name="9" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
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
          <prop k="color" v="0,0,255,255"/>
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
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
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
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,0,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.1"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="trim_distance_end" type="QString" value="0"/>
            <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_end_unit" type="QString" value="MM"/>
            <Option name="trim_distance_start" type="QString" value="0"/>
            <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.1"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="trim_distance_end" v="0"/>
          <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_end_unit" v="MM"/>
          <prop k="trim_distance_start" v="0"/>
          <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="trim_distance_start_unit" v="MM"/>
          <prop k="tweak_dash_pattern_on_corners" v="0"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{7e4a3d10-ef92-41e6-b7dd-c95595282f45}">
      <rule key="{6256c642-421c-474f-8af3-a6ce32f4dfb4}" description="Ocupação do solo" filter="&quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style textOrientation="horizontal" fontItalic="0" allowHtml="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" fontSizeUnit="Point" fontKerning="1" fontUnderline="0" fieldName="texto_edicao" legendString="Aa" fontSize="6" isExpression="0" fontFamily="Noto Sans" blendMode="0" fontStrikeout="0" capitalization="0" fontWeight="50" multilineHeight="0.80000000000000004" fontLetterSpacing="0" useSubstitutions="0" previewBkgrdColor="255,255,255,255" textOpacity="1" textColor="36,31,33,255" namedStyle="Condensed">
            <families/>
            <text-buffer bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferBlendMode="0" bufferOpacity="1" bufferNoFill="1" bufferSize="1"/>
            <text-mask maskType="0" maskSize="0.20000000000000001" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskedSymbolLayers="elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{8837b77c-b89f-4053-ac86-4a25d9adbd25},0,0;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{aa00d086-e453-49b5-8af9-ed31568d12e6},0,0;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{b012def3-64fb-443a-9239-4c61a438c046},0;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{aa00d086-e453-49b5-8af9-ed31568d12e6},1;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{8837b77c-b89f-4053-ac86-4a25d9adbd25},2;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{272fd170-db21-4e87-8510-fa3bf9c32a70},1;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{8837b77c-b89f-4053-ac86-4a25d9adbd25},1,0;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{9369fc1f-ffe7-4380-aaea-21612f1cf20a},0;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{272fd170-db21-4e87-8510-fa3bf9c32a70},0,0;elemnat_curva_nivel_l_355829ba_50c3_4a61_9351_3028dae9ed6b,{a429cfcb-5c0d-40e4-bf7f-faaa5613b935},0;elemnat_trecho_drenagem_l_ab616298_a6bb_48be_80fc_63b02bf0e352,{dfbc5c66-20ad-4025-bd20-505153c8f05f},0;elemnat_trecho_drenagem_l_ab616298_a6bb_48be_80fc_63b02bf0e352,{9fe301b7-3ba1-4416-8058-7acf2474d21d},0;infra_elemento_energia_l_dacfeab1_ccdb_4f52_a418_2b00ec6e6854,{a93538e7-dadf-406b-8970-f97537b12c27},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a278aa31-bb3f-416d-b773-acccda931183},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a4728104-7d1e-4b46-9589-875cff04d846},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a4728104-7d1e-4b46-9589-875cff04d846},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e3083d60-5dd3-4d99-aaa5-eb0274970a13},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{7f941840-e68b-440f-aadf-cfef7fc44725},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},2,3;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e3083d60-5dd3-4d99-aaa5-eb0274970a13},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a278aa31-bb3f-416d-b773-acccda931183},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},2,2;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{4377952f-ac78-4e7b-ab61-e552b5cfff6a},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},2,2;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d661da6e-6e49-44b8-9ed7-ed219c5167c6},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e4584a54-8c26-4530-b12d-7294e242a802},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},2,3;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{5df52e0c-c6e8-48d8-b536-f14da71dce45},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{5df52e0c-c6e8-48d8-b536-f14da71dce45},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{032978da-33c9-4486-940a-715650f48d4b},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{4fe2b385-c9a7-48fc-a7ca-dd2a65f5157d},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{873b9c30-32a2-4f0c-bcf6-784a512ab2d4},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{6763e6fc-6442-476d-af3a-eb8dbcc2ec94},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a278aa31-bb3f-416d-b773-acccda931183},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{f9013348-73bd-45bf-9171-f8ca71868623},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e4584a54-8c26-4530-b12d-7294e242a802},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},2,3;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},2,2;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{5df52e0c-c6e8-48d8-b536-f14da71dce45},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d58a6083-33cf-4970-99ba-41bc0e5625c9},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{6763e6fc-6442-476d-af3a-eb8dbcc2ec94},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{4fe2b385-c9a7-48fc-a7ca-dd2a65f5157d},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{f9013348-73bd-45bf-9171-f8ca71868623},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},2,2;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d661da6e-6e49-44b8-9ed7-ed219c5167c6},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},2,3;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{4377952f-ac78-4e7b-ab61-e552b5cfff6a},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a4728104-7d1e-4b46-9589-875cff04d846},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{03ddca8d-4d91-4c90-b762-990f9ee0f47a},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d58a6083-33cf-4970-99ba-41bc0e5625c9},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e3083d60-5dd3-4d99-aaa5-eb0274970a13},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a278aa31-bb3f-416d-b773-acccda931183},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a278aa31-bb3f-416d-b773-acccda931183},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{44b3e84b-90f7-4744-a601-5e598978b818},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e3083d60-5dd3-4d99-aaa5-eb0274970a13},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{032978da-33c9-4486-940a-715650f48d4b},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{873b9c30-32a2-4f0c-bcf6-784a512ab2d4},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{032978da-33c9-4486-940a-715650f48d4b},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{f9013348-73bd-45bf-9171-f8ca71868623},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{5df52e0c-c6e8-48d8-b536-f14da71dce45},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{5df52e0c-c6e8-48d8-b536-f14da71dce45},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{571e48a2-0da2-43c6-96d9-31ba41dfdb07},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{cc6f40fa-2c80-481d-b258-43e7eccb73b8},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{03ddca8d-4d91-4c90-b762-990f9ee0f47a},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{4fe2b385-c9a7-48fc-a7ca-dd2a65f5157d},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{873b9c30-32a2-4f0c-bcf6-784a512ab2d4},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{f9013348-73bd-45bf-9171-f8ca71868623},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{6763e6fc-6442-476d-af3a-eb8dbcc2ec94},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{cc6f40fa-2c80-481d-b258-43e7eccb73b8},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{7f941840-e68b-440f-aadf-cfef7fc44725},1,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d58a6083-33cf-4970-99ba-41bc0e5625c9},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d58a6083-33cf-4970-99ba-41bc0e5625c9},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{e3083d60-5dd3-4d99-aaa5-eb0274970a13},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{f9013348-73bd-45bf-9171-f8ca71868623},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d661da6e-6e49-44b8-9ed7-ed219c5167c6},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{2439ca68-e81d-4994-8d2c-2aceb50456c4},1,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{873b9c30-32a2-4f0c-bcf6-784a512ab2d4},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{a4728104-7d1e-4b46-9589-875cff04d846},2,0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{c54711bd-5ad3-4532-a7b8-e44edcfa4197},0;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{d661da6e-6e49-44b8-9ed7-ed219c5167c6},2,1;infra_ferrovia_l_4e4101e4_48cd_47f0_b653_dfdf9e2c1068,{4377952f-ac78-4e7b-ab61-e552b5cfff6a},2,0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{1eba6b4b-ce86-4093-bed3-8f65349496aa},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{1eba6b4b-ce86-4093-bed3-8f65349496aa},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{a0a10e7a-732e-44be-bc62-84521437d385},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{a0a10e7a-732e-44be-bc62-84521437d385},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{5095e805-a614-4158-99ae-f0236404d5cd},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{ff5fcd1d-7cee-4931-98b1-98fdd914919e},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{5095e805-a614-4158-99ae-f0236404d5cd},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{81dd1c64-4eca-4f39-98ac-1e02be31763d},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{81dd1c64-4eca-4f39-98ac-1e02be31763d},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{6fd60408-e6fe-4225-a252-cf79779510c3},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{6fd60408-e6fe-4225-a252-cf79779510c3},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{705ddd27-dff4-4c39-8413-c4d1a648a743},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{705ddd27-dff4-4c39-8413-c4d1a648a743},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{4af4abf4-ea14-4b74-8974-066958b77b32},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{62dcfcbd-0755-40b8-b045-528f2de5a49c},2;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{f487a27d-b0a6-49c6-97fe-a4049be13072},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{62dcfcbd-0755-40b8-b045-528f2de5a49c},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{62dcfcbd-0755-40b8-b045-528f2de5a49c},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{0984fd1a-ec43-4b87-9012-1ced8973366c},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{f487a27d-b0a6-49c6-97fe-a4049be13072},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{a58e509b-907d-4909-b00b-ebd4e3c977fc},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{a58e509b-907d-4909-b00b-ebd4e3c977fc},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{dbcaebbc-1e57-437d-9002-a5c4f025e0b5},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{dbcaebbc-1e57-437d-9002-a5c4f025e0b5},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{16eff641-09ac-441b-9830-dc089de80b4f},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{5ff61725-199e-4b14-85ac-52c50442e26c},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{e0f88f6a-8229-467c-a518-643609f8738b},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{5ff61725-199e-4b14-85ac-52c50442e26c},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{c9eebb74-f741-4a01-b792-56a7d225ffbd},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{c9eebb74-f741-4a01-b792-56a7d225ffbd},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{863a5902-e561-400b-885c-18074eb31482},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{863a5902-e561-400b-885c-18074eb31482},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{459968c7-34d7-4d2a-a9d7-4b020e6b306d},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{5c815464-f5a1-4d96-83cb-a68b58f884bb},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{5c815464-f5a1-4d96-83cb-a68b58f884bb},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{04069c29-521d-4543-93db-0d72a40583dc},2;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{04069c29-521d-4543-93db-0d72a40583dc},1;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{04069c29-521d-4543-93db-0d72a40583dc},0;infra_via_deslocamento_l_51bf42fa_01f3_41a1_a24c_616d92041d59,{6c259dc7-0157-4377-8adc-a4684e030d9d},0;edicao_grid_edicao_l_0c3ca267_3dfa_4c8b_ae64_a5ed73c10067,master,0;edicao_grid_edicao_l_0c3ca267_3dfa_4c8b_ae64_a5ed73c10067,regular,0;edicao_grid_edicao_l_0c3ca267_3dfa_4c8b_ae64_a5ed73c10067,,0" maskOpacity="1" maskSizeUnits="MM"/>
            <background shapeRadiiUnit="MM" shapeType="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeOpacity="1" shapeOffsetY="0" shapeSizeType="0" shapeJoinStyle="64" shapeSizeUnit="MM" shapeRadiiX="0" shapeDraw="0" shapeSizeX="0" shapeSVGFile="" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeBlendMode="0" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" type="marker" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" locked="0" class="SimpleMarker" enabled="1">
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
              <symbol name="fillSymbol" clip_to_extent="1" type="fill" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" locked="0" class="SimpleFill" enabled="1">
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
            <shadow shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowBlendMode="6" shadowUnder="0" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowRadius="1.5" shadowScale="100" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" reverseDirectionSymbol="0" placeDirectionSymbol="0" rightDirectionSymbol=">" multilineAlign="3" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" autoWrapLength="0" wrapChar="|" formatNumbers="0" decimals="3"/>
          <placement centroidWhole="0" overrunDistance="0" priority="5" lineAnchorPercent="0.5" placementFlags="10" yOffset="-0.5" polygonPlacementFlags="2" geometryGeneratorEnabled="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" placement="8" quadOffset="2" lineAnchorClipping="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" dist="0" offsetType="0" overrunDistanceUnit="MM" geometryGeneratorType="PolygonGeometry" repeatDistanceUnits="MM" lineAnchorType="0" xOffset="0.5" rotationAngle="0" centroidInside="0" fitInPolygonOnly="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" maxCurvedCharAngleIn="25" repeatDistance="0" distUnits="MM" preserveRotation="1" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa; )" layerType="PolygonGeometry" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25"/>
          <rendering obstacleFactor="1" obstacleType="1" unplacedVisibility="0" obstacle="1" mergeLines="0" labelPerPart="0" upsidedownLabels="0" fontLimitPixelSize="0" scaleVisibility="0" zIndex="0" minFeatureSize="0" displayAll="0" scaleMax="0" maxNumLabels="2000" fontMinPixelSize="3" scaleMin="0" fontMaxPixelSize="10000" drawLabels="1" limitNumLabels="0"/>
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
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(centroid($geometry),  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
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
              <Option name="labelAnchorPoint" type="QString" value="centroid"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;254,0,254,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;254,0,254,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="5"/>
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
  <layerGeometryType>2</layerGeometryType>
</qgis>
