<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 enableorderby="0" symbollevels="1" type="RuleRenderer" referencescale="25000" forceraster="0">
    <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
      <rule filter="&quot;visivel&quot; = 1" label="Visível" key="{47666e68-c08e-4a67-a5c4-20e9bccf8f2c}">
        <rule symbol="0" filter="&quot;regime&quot; in (0, 1) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" description="Regime permanente" label="L10319A" key="{dfbc5c66-20ad-4025-bd20-505153c8f05f}"/>
        <rule symbol="1" filter="&quot;regime&quot; in (3, 5) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" label="L10319B" key="{9fe301b7-3ba1-4416-8058-7acf2474d21d}"/>
        <rule symbol="2" filter="&quot;situacao_em_poligono&quot; in (2, 3, 4) OR &quot;tipo&quot; = 4" label="Dentro de polígono" key="{4a1d6d43-d959-4f13-af44-06764de76cc8}"/>
        <rule symbol="3" filter="ELSE" label="Outro" key="{fb8e6a60-73d2-41a7-87fc-2ec5e14cca86}"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" clip_to_extent="1" name="0" type="line" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="1" class="SimpleLine" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,160,223,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.2"/>
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
            <Option name="use_custom_dash" type="QString" value="0"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,160,223,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.2"/>
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
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="outlineColor" type="Map">
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
      <symbol force_rhr="0" clip_to_extent="1" name="1" type="line" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleLine" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="2;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,160,223,255"/>
            <Option name="line_style" type="QString" value="dot"/>
            <Option name="line_width" type="QString" value="0.2"/>
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
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="2;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,160,223,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.2"/>
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
                  <Option name="expression" type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" clip_to_extent="1" name="2" type="line" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleLine" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="255,158,23,255"/>
            <Option name="line_style" type="QString" value="no"/>
            <Option name="line_width" type="QString" value="0.26"/>
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
            <Option name="use_custom_dash" type="QString" value="0"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,158,23,255"/>
          <prop k="line_style" v="no"/>
          <prop k="line_width" v="0.26"/>
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
      <symbol force_rhr="0" clip_to_extent="1" name="3" type="line" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SimpleLine" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="255,0,0,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="1"/>
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
            <Option name="use_custom_dash" type="QString" value="0"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1"/>
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
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{eb0aa0a6-e519-40f7-9cc0-f23d6d6fbfbe}">
      <rule filter="&quot;visivel&quot; = 1" description="Visível" key="{24ee0764-feae-4031-a98a-4643664b1c3f}">
        <rule filter="&quot;situacao_em_poligono&quot; in (2,3) and &quot;tipo&quot; != 4" description="Massa Dagua" key="{8675282a-e9e9-47a7-8280-86c83f6584c2}">
          <settings calloutType="simple">
            <text-style isExpression="0" fontLetterSpacing="0" fontItalic="1" allowHtml="0" namedStyle="Italic" textOpacity="1" legendString="Aa" useSubstitutions="0" textOrientation="horizontal" previewBkgrdColor="255,255,255,255" blendMode="0" fontFamily="Noto Sans" textColor="0,173,240,255" fontWeight="50" fontStrikeout="0" fontKerning="1" multilineHeight="1" capitalization="1" fontSize="7" fontWordSpacing="0" fieldName="texto_edicao" fontSizeUnit="Point" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
              <families/>
              <text-buffer bufferJoinStyle="128" bufferNoFill="0" bufferOpacity="1" bufferSize="1" bufferSizeUnits="Point" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,160,223,255" bufferDraw="0" bufferBlendMode="0">
                <effect enabled="0" type="effectStack">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="13"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="0,0,0,255"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="offset_angle" type="QString" value="135"/>
                      <Option name="offset_distance" type="QString" value="2"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="opacity" type="QString" value="1"/>
                    </Option>
                    <prop k="blend_mode" v="13"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color" v="0,0,0,255"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="offset_angle" v="135"/>
                    <prop k="offset_distance" v="2"/>
                    <prop k="offset_unit" v="MM"/>
                    <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="opacity" v="1"/>
                  </effect>
                  <effect type="outerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="0"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color1" type="QString" value="0,0,255,255"/>
                      <Option name="color2" type="QString" value="0,255,0,255"/>
                      <Option name="color_type" type="QString" value="0"/>
                      <Option name="direction" type="QString" value="ccw"/>
                      <Option name="discrete" type="QString" value="0"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="opacity" type="QString" value="0.5"/>
                      <Option name="rampType" type="QString" value="gradient"/>
                      <Option name="single_color" type="QString" value="255,255,255,255"/>
                      <Option name="spec" type="QString" value="rgb"/>
                      <Option name="spread" type="QString" value="2"/>
                      <Option name="spread_unit" type="QString" value="MM"/>
                      <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    </Option>
                    <prop k="blend_mode" v="0"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color1" v="0,0,255,255"/>
                    <prop k="color2" v="0,255,0,255"/>
                    <prop k="color_type" v="0"/>
                    <prop k="direction" v="ccw"/>
                    <prop k="discrete" v="0"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="opacity" v="0.5"/>
                    <prop k="rampType" v="gradient"/>
                    <prop k="single_color" v="255,255,255,255"/>
                    <prop k="spec" v="rgb"/>
                    <prop k="spread" v="2"/>
                    <prop k="spread_unit" v="MM"/>
                    <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                  </effect>
                  <effect type="blur">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="0"/>
                      <Option name="blur_level" type="QString" value="10"/>
                      <Option name="blur_method" type="QString" value="1"/>
                      <Option name="blur_unit" type="QString" value="Pixel"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="1"/>
                      <Option name="opacity" type="QString" value="1"/>
                    </Option>
                    <prop k="blend_mode" v="0"/>
                    <prop k="blur_level" v="10"/>
                    <prop k="blur_method" v="1"/>
                    <prop k="blur_unit" v="Pixel"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="1"/>
                    <prop k="opacity" v="1"/>
                  </effect>
                  <effect type="innerShadow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="13"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="0,0,0,255"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="offset_angle" type="QString" value="135"/>
                      <Option name="offset_distance" type="QString" value="2"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="opacity" type="QString" value="1"/>
                    </Option>
                    <prop k="blend_mode" v="13"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color" v="0,0,0,255"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="offset_angle" v="135"/>
                    <prop k="offset_distance" v="2"/>
                    <prop k="offset_unit" v="MM"/>
                    <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="opacity" v="1"/>
                  </effect>
                  <effect type="innerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="0"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color1" type="QString" value="0,0,255,255"/>
                      <Option name="color2" type="QString" value="0,255,0,255"/>
                      <Option name="color_type" type="QString" value="0"/>
                      <Option name="direction" type="QString" value="ccw"/>
                      <Option name="discrete" type="QString" value="0"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="opacity" type="QString" value="0.5"/>
                      <Option name="rampType" type="QString" value="gradient"/>
                      <Option name="single_color" type="QString" value="255,255,255,255"/>
                      <Option name="spec" type="QString" value="rgb"/>
                      <Option name="spread" type="QString" value="2"/>
                      <Option name="spread_unit" type="QString" value="MM"/>
                      <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    </Option>
                    <prop k="blend_mode" v="0"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color1" v="0,0,255,255"/>
                    <prop k="color2" v="0,255,0,255"/>
                    <prop k="color_type" v="0"/>
                    <prop k="direction" v="ccw"/>
                    <prop k="discrete" v="0"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="opacity" v="0.5"/>
                    <prop k="rampType" v="gradient"/>
                    <prop k="single_color" v="255,255,255,255"/>
                    <prop k="spec" v="rgb"/>
                    <prop k="spread" v="2"/>
                    <prop k="spread_unit" v="MM"/>
                    <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                  </effect>
                </effect>
              </text-buffer>
              <text-mask maskSize="0.40000000000000002" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0"/>
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
                      <Option name="color" type="QString" value="114,155,111,255"/>
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
                    <prop k="color" v="114,155,111,255"/>
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
            <text-format useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0" autoWrapLength="0" reverseDirectionSymbol="0" addDirectionSymbol="0" multilineAlign="0" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" formatNumbers="0"/>
            <placement rotationAngle="0" placementFlags="10" centroidInside="0" distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistance="7500" overrunDistance="0" lineAnchorPercent="0.5" geometryGeneratorType="LineGeometry" maxCurvedCharAngleIn="30" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" layerType="LineGeometry" offsetType="0" geometryGeneratorEnabled="1" xOffset="0" lineAnchorClipping="0" yOffset="0" offsetUnits="MM" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" priority="6" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" dist="0.5" fitInPolygonOnly="0" maxCurvedCharAngleOut="-30" preserveRotation="0" placement="3" polygonPlacementFlags="2" overrunDistanceUnit="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="RenderMetersInMapUnits"/>
            <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMin="0" maxNumLabels="2" displayAll="0" scaleMax="0" obstacleType="0" limitNumLabels="0" drawLabels="1" minFeatureSize="20" labelPerPart="0" fontLimitPixelSize="0" mergeLines="1" zIndex="0" upsidedownLabels="0" obstacleFactor="1" fontMinPixelSize="3" obstacle="1" unplacedVisibility="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="LinePlacementFlags" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="Size" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="coalesce(&quot;tamanho_txt&quot;, 7)"/>
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
                <Option name="lineSymbol" type="QString" value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
        <rule filter="&quot;situacao_em_poligono&quot; in (1) and &quot;tipo&quot; != 4" description="Trecho de drenagem" key="{0e7b8ae3-e8de-4edc-815c-41b2dbcb86a1}">
          <settings calloutType="simple">
            <text-style isExpression="0" fontLetterSpacing="0" fontItalic="1" allowHtml="0" namedStyle="Condensed Italic" textOpacity="1" legendString="Aa" useSubstitutions="0" textOrientation="horizontal" previewBkgrdColor="255,255,255,255" blendMode="0" fontFamily="Noto Sans" textColor="0,173,240,255" fontWeight="50" fontStrikeout="0" fontKerning="1" multilineHeight="1" capitalization="0" fontSize="6" fontWordSpacing="0" fieldName="texto_edicao" fontSizeUnit="Point" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
              <families/>
              <text-buffer bufferJoinStyle="128" bufferNoFill="0" bufferOpacity="1" bufferSize="1" bufferSizeUnits="Point" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,160,223,255" bufferDraw="0" bufferBlendMode="0">
                <effect enabled="0" type="effectStack">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="13"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="0,0,0,255"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="offset_angle" type="QString" value="135"/>
                      <Option name="offset_distance" type="QString" value="2"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="opacity" type="QString" value="1"/>
                    </Option>
                    <prop k="blend_mode" v="13"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color" v="0,0,0,255"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="offset_angle" v="135"/>
                    <prop k="offset_distance" v="2"/>
                    <prop k="offset_unit" v="MM"/>
                    <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="opacity" v="1"/>
                  </effect>
                  <effect type="outerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="0"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color1" type="QString" value="0,0,255,255"/>
                      <Option name="color2" type="QString" value="0,255,0,255"/>
                      <Option name="color_type" type="QString" value="0"/>
                      <Option name="direction" type="QString" value="ccw"/>
                      <Option name="discrete" type="QString" value="0"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="opacity" type="QString" value="0.5"/>
                      <Option name="rampType" type="QString" value="gradient"/>
                      <Option name="single_color" type="QString" value="255,255,255,255"/>
                      <Option name="spec" type="QString" value="rgb"/>
                      <Option name="spread" type="QString" value="2"/>
                      <Option name="spread_unit" type="QString" value="MM"/>
                      <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    </Option>
                    <prop k="blend_mode" v="0"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color1" v="0,0,255,255"/>
                    <prop k="color2" v="0,255,0,255"/>
                    <prop k="color_type" v="0"/>
                    <prop k="direction" v="ccw"/>
                    <prop k="discrete" v="0"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="opacity" v="0.5"/>
                    <prop k="rampType" v="gradient"/>
                    <prop k="single_color" v="255,255,255,255"/>
                    <prop k="spec" v="rgb"/>
                    <prop k="spread" v="2"/>
                    <prop k="spread_unit" v="MM"/>
                    <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                  </effect>
                  <effect type="blur">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="0"/>
                      <Option name="blur_level" type="QString" value="10"/>
                      <Option name="blur_method" type="QString" value="1"/>
                      <Option name="blur_unit" type="QString" value="Pixel"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="1"/>
                      <Option name="opacity" type="QString" value="1"/>
                    </Option>
                    <prop k="blend_mode" v="0"/>
                    <prop k="blur_level" v="10"/>
                    <prop k="blur_method" v="1"/>
                    <prop k="blur_unit" v="Pixel"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="1"/>
                    <prop k="opacity" v="1"/>
                  </effect>
                  <effect type="innerShadow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="13"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="0,0,0,255"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="offset_angle" type="QString" value="135"/>
                      <Option name="offset_distance" type="QString" value="2"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="opacity" type="QString" value="1"/>
                    </Option>
                    <prop k="blend_mode" v="13"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color" v="0,0,0,255"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="offset_angle" v="135"/>
                    <prop k="offset_distance" v="2"/>
                    <prop k="offset_unit" v="MM"/>
                    <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="opacity" v="1"/>
                  </effect>
                  <effect type="innerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" type="QString" value="0"/>
                      <Option name="blur_level" type="QString" value="2.645"/>
                      <Option name="blur_unit" type="QString" value="MM"/>
                      <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color1" type="QString" value="0,0,255,255"/>
                      <Option name="color2" type="QString" value="0,255,0,255"/>
                      <Option name="color_type" type="QString" value="0"/>
                      <Option name="direction" type="QString" value="ccw"/>
                      <Option name="discrete" type="QString" value="0"/>
                      <Option name="draw_mode" type="QString" value="2"/>
                      <Option name="enabled" type="QString" value="0"/>
                      <Option name="opacity" type="QString" value="0.5"/>
                      <Option name="rampType" type="QString" value="gradient"/>
                      <Option name="single_color" type="QString" value="255,255,255,255"/>
                      <Option name="spec" type="QString" value="rgb"/>
                      <Option name="spread" type="QString" value="2"/>
                      <Option name="spread_unit" type="QString" value="MM"/>
                      <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    </Option>
                    <prop k="blend_mode" v="0"/>
                    <prop k="blur_level" v="2.645"/>
                    <prop k="blur_unit" v="MM"/>
                    <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                    <prop k="color1" v="0,0,255,255"/>
                    <prop k="color2" v="0,255,0,255"/>
                    <prop k="color_type" v="0"/>
                    <prop k="direction" v="ccw"/>
                    <prop k="discrete" v="0"/>
                    <prop k="draw_mode" v="2"/>
                    <prop k="enabled" v="0"/>
                    <prop k="opacity" v="0.5"/>
                    <prop k="rampType" v="gradient"/>
                    <prop k="single_color" v="255,255,255,255"/>
                    <prop k="spec" v="rgb"/>
                    <prop k="spread" v="2"/>
                    <prop k="spread_unit" v="MM"/>
                    <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                  </effect>
                </effect>
              </text-buffer>
              <text-mask maskSize="0.40000000000000002" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0"/>
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
                      <Option name="color" type="QString" value="114,155,111,255"/>
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
                    <prop k="color" v="114,155,111,255"/>
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
            <text-format useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0" autoWrapLength="0" reverseDirectionSymbol="0" addDirectionSymbol="0" multilineAlign="0" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" formatNumbers="0"/>
            <placement rotationAngle="0" placementFlags="10" centroidInside="0" distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistance="7500" overrunDistance="0" lineAnchorPercent="0.5" geometryGeneratorType="LineGeometry" maxCurvedCharAngleIn="30" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" layerType="LineGeometry" offsetType="0" geometryGeneratorEnabled="1" xOffset="0" lineAnchorClipping="0" yOffset="0" offsetUnits="MM" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" priority="6" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" dist="0.5" fitInPolygonOnly="0" maxCurvedCharAngleOut="-30" preserveRotation="0" placement="3" polygonPlacementFlags="2" overrunDistanceUnit="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="RenderMetersInMapUnits"/>
            <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMin="0" maxNumLabels="2" displayAll="0" scaleMax="0" obstacleType="0" limitNumLabels="0" drawLabels="1" minFeatureSize="20" labelPerPart="0" fontLimitPixelSize="0" mergeLines="1" zIndex="0" upsidedownLabels="0" obstacleFactor="2" fontMinPixelSize="3" obstacle="0" unplacedVisibility="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="LinePlacementFlags" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="Size" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="coalesce(&quot;tamanho_txt&quot;, 7)"/>
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
                <Option name="lineSymbol" type="QString" value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
  <layerGeometryType>1</layerGeometryType>
</qgis>
