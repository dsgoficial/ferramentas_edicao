<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.24.3-Tisler" styleCategories="Symbology|Labeling">
  <renderer-v2 symbollevels="1" forceraster="0" enableorderby="0" referencescale="-1" type="RuleRenderer">
    <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
      <rule key="{47666e68-c08e-4a67-a5c4-20e9bccf8f2c}" filter="&quot;visivel&quot; = 1" label="Visível">
        <rule symbol="0" key="{dfbc5c66-20ad-4025-bd20-505153c8f05f}" filter="&quot;regime&quot; in (0, 1) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" label="L10319A" description="Regime permanente"/>
        <rule symbol="1" key="{9fe301b7-3ba1-4416-8058-7acf2474d21d}" filter="&quot;regime&quot; in (3, 5) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" label="L10319B"/>
        <rule symbol="2" key="{4a1d6d43-d959-4f13-af44-06764de76cc8}" filter="&quot;situacao_em_poligono&quot; in (2, 3, 4) OR &quot;tipo&quot; = 4" label="Dentro de polígono"/>
        <rule symbol="3" key="{fb8e6a60-73d2-41a7-87fc-2ec5e14cca86}" filter="ELSE" label="Outro"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" name="0" force_rhr="0" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" pass="1" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="flat" type="QString"/>
            <Option name="customdash" value="5;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="0,160,223,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.2" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="0" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,160,223,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.2" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="outlineColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="1" force_rhr="0" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="flat" type="QString"/>
            <Option name="customdash" value="2;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="0,160,223,255" type="QString"/>
            <Option name="line_style" value="dot" type="QString"/>
            <Option name="line_width" value="0.2" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="2;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,160,223,255" k="line_color"/>
          <prop v="dot" k="line_style"/>
          <prop v="0.2" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="outlineColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="2" force_rhr="0" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="5;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="255,158,23,255" type="QString"/>
            <Option name="line_style" value="no" type="QString"/>
            <Option name="line_width" value="0.26" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="0" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
          <prop v="255,158,23,255" k="line_color"/>
          <prop v="no" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="3" force_rhr="0" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="5;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="255,0,0,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="1" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="0" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
          <prop v="255,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{582fff7b-a856-45de-9558-d67224466f5a}">
      <rule key="{bff142b6-ac0c-4ce5-ad00-788cb4b84153}" filter="&quot;visivel&quot; = 1" description="Visível">
        <rule key="{28275487-88dc-4cfc-805c-9dace6c7cbb4}" filter="&quot;situacao_em_poligono&quot; in (2,3) and &quot;tipo&quot; != 4" description="Massa Dagua">
          <settings calloutType="simple">
            <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontKerning="1" textColor="0,173,240,255" capitalization="1" multilineHeight="1" fontSizeUnit="Point" fontLetterSpacing="0" previewBkgrdColor="255,255,255,255" fontSize="7" fontWeight="50" namedStyle="Italic" fontItalic="1" textOpacity="1" fontFamily="Noto Sans" blendMode="0" fontStrikeout="0" isExpression="0" textOrientation="horizontal" allowHtml="0" fieldName="texto_edicao" fontWordSpacing="0" legendString="Aa" fontUnderline="0" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferSizeUnits="Point" bufferNoFill="0" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,160,223,255" bufferJoinStyle="128">
                <effect enabled="0" type="effectStack">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option name="blend_mode" value="13" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color" value="0,0,0,255" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="offset_angle" value="135" type="QString"/>
                      <Option name="offset_distance" value="2" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="opacity" value="1" type="QString"/>
                    </Option>
                    <prop v="13" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,0,255" k="color"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="135" k="offset_angle"/>
                    <prop v="2" k="offset_distance"/>
                    <prop v="MM" k="offset_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                    <prop v="1" k="opacity"/>
                  </effect>
                  <effect type="outerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" value="0" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color1" value="0,0,255,255" type="QString"/>
                      <Option name="color2" value="0,255,0,255" type="QString"/>
                      <Option name="color_type" value="0" type="QString"/>
                      <Option name="direction" value="ccw" type="QString"/>
                      <Option name="discrete" value="0" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="opacity" value="0.5" type="QString"/>
                      <Option name="rampType" value="gradient" type="QString"/>
                      <Option name="single_color" value="255,255,255,255" type="QString"/>
                      <Option name="spec" value="rgb" type="QString"/>
                      <Option name="spread" value="2" type="QString"/>
                      <Option name="spread_unit" value="MM" type="QString"/>
                      <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    </Option>
                    <prop v="0" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,255,255" k="color1"/>
                    <prop v="0,255,0,255" k="color2"/>
                    <prop v="0" k="color_type"/>
                    <prop v="ccw" k="direction"/>
                    <prop v="0" k="discrete"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="0.5" k="opacity"/>
                    <prop v="gradient" k="rampType"/>
                    <prop v="255,255,255,255" k="single_color"/>
                    <prop v="rgb" k="spec"/>
                    <prop v="2" k="spread"/>
                    <prop v="MM" k="spread_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                  </effect>
                  <effect type="blur">
                    <Option type="Map">
                      <Option name="blend_mode" value="0" type="QString"/>
                      <Option name="blur_level" value="10" type="QString"/>
                      <Option name="blur_method" value="1" type="QString"/>
                      <Option name="blur_unit" value="Pixel" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="1" type="QString"/>
                      <Option name="opacity" value="1" type="QString"/>
                    </Option>
                    <prop v="0" k="blend_mode"/>
                    <prop v="10" k="blur_level"/>
                    <prop v="1" k="blur_method"/>
                    <prop v="Pixel" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="1" k="enabled"/>
                    <prop v="1" k="opacity"/>
                  </effect>
                  <effect type="innerShadow">
                    <Option type="Map">
                      <Option name="blend_mode" value="13" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color" value="0,0,0,255" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="offset_angle" value="135" type="QString"/>
                      <Option name="offset_distance" value="2" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="opacity" value="1" type="QString"/>
                    </Option>
                    <prop v="13" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,0,255" k="color"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="135" k="offset_angle"/>
                    <prop v="2" k="offset_distance"/>
                    <prop v="MM" k="offset_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                    <prop v="1" k="opacity"/>
                  </effect>
                  <effect type="innerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" value="0" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color1" value="0,0,255,255" type="QString"/>
                      <Option name="color2" value="0,255,0,255" type="QString"/>
                      <Option name="color_type" value="0" type="QString"/>
                      <Option name="direction" value="ccw" type="QString"/>
                      <Option name="discrete" value="0" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="opacity" value="0.5" type="QString"/>
                      <Option name="rampType" value="gradient" type="QString"/>
                      <Option name="single_color" value="255,255,255,255" type="QString"/>
                      <Option name="spec" value="rgb" type="QString"/>
                      <Option name="spread" value="2" type="QString"/>
                      <Option name="spread_unit" value="MM" type="QString"/>
                      <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    </Option>
                    <prop v="0" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,255,255" k="color1"/>
                    <prop v="0,255,0,255" k="color2"/>
                    <prop v="0" k="color_type"/>
                    <prop v="ccw" k="direction"/>
                    <prop v="0" k="discrete"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="0.5" k="opacity"/>
                    <prop v="gradient" k="rampType"/>
                    <prop v="255,255,255,255" k="single_color"/>
                    <prop v="rgb" k="spec"/>
                    <prop v="2" k="spread"/>
                    <prop v="MM" k="spread_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                  </effect>
                </effect>
              </text-buffer>
              <text-mask maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="0.40000000000000002" maskSizeUnits="MM" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0" maskType="0" maskJoinStyle="128"/>
              <background shapeRadiiY="0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeBorderWidth="0" shapeSizeX="0" shapeDraw="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOffsetY="0" shapeJoinStyle="64" shapeSizeY="0" shapeSizeUnit="MM" shapeBorderWidthUnit="MM" shapeType="0" shapeRadiiUnit="MM" shapeOpacity="1" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeOffsetX="0">
                <symbol alpha="1" clip_to_extent="1" name="markerSymbol" force_rhr="0" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                    <Option type="Map">
                      <Option name="angle" value="0" type="QString"/>
                      <Option name="cap_style" value="square" type="QString"/>
                      <Option name="color" value="114,155,111,255" type="QString"/>
                      <Option name="horizontal_anchor_point" value="1" type="QString"/>
                      <Option name="joinstyle" value="bevel" type="QString"/>
                      <Option name="name" value="circle" type="QString"/>
                      <Option name="offset" value="0,0" type="QString"/>
                      <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="outline_color" value="0,0,0,255" type="QString"/>
                      <Option name="outline_style" value="solid" type="QString"/>
                      <Option name="outline_width" value="0" type="QString"/>
                      <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="outline_width_unit" value="MM" type="QString"/>
                      <Option name="scale_method" value="diameter" type="QString"/>
                      <Option name="size" value="2" type="QString"/>
                      <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="size_unit" value="MM" type="QString"/>
                      <Option name="vertical_anchor_point" value="1" type="QString"/>
                    </Option>
                    <prop v="0" k="angle"/>
                    <prop v="square" k="cap_style"/>
                    <prop v="114,155,111,255" k="color"/>
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
                        <Option name="name" value="" type="QString"/>
                        <Option name="properties"/>
                        <Option name="type" value="collection" type="QString"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" name="fillSymbol" force_rhr="0" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" pass="0" locked="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color" value="255,255,255,255" type="QString"/>
                      <Option name="joinstyle" value="bevel" type="QString"/>
                      <Option name="offset" value="0,0" type="QString"/>
                      <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="outline_color" value="128,128,128,255" type="QString"/>
                      <Option name="outline_style" value="no" type="QString"/>
                      <Option name="outline_width" value="0" type="QString"/>
                      <Option name="outline_width_unit" value="MM" type="QString"/>
                      <Option name="style" value="solid" type="QString"/>
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
                        <Option name="name" value="" type="QString"/>
                        <Option name="properties"/>
                        <Option name="type" value="collection" type="QString"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowRadius="1.5" shadowDraw="0" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format wrapChar="" placeDirectionSymbol="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" multilineAlign="0" addDirectionSymbol="0" decimals="3" formatNumbers="0" plussign="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;"/>
            <placement rotationUnit="AngleDegrees" lineAnchorClipping="0" overrunDistanceUnit="MM" layerType="LineGeometry" yOffset="0" overrunDistance="0" rotationAngle="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" centroidWhole="0" dist="0.5" preserveRotation="0" repeatDistanceUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="6" geometryGeneratorType="LineGeometry" lineAnchorType="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" offsetType="0" placementFlags="10" distUnits="MM" fitInPolygonOnly="0" maxCurvedCharAngleOut="-30" centroidInside="0" maxCurvedCharAngleIn="30" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="300" lineAnchorPercent="0.5" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="3" geometryGeneratorEnabled="1"/>
            <rendering obstacleType="0" maxNumLabels="2" unplacedVisibility="0" obstacleFactor="1" fontMinPixelSize="3" scaleVisibility="0" limitNumLabels="0" scaleMax="0" mergeLines="1" fontLimitPixelSize="0" drawLabels="1" minFeatureSize="20" fontMaxPixelSize="10000" scaleMin="0" upsidedownLabels="0" obstacle="1" zIndex="0" displayAll="0" labelPerPart="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="Color" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                  <Option name="LinePlacementFlags" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                  <Option name="Size" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="coalesce(&quot;tamanho_txt&quot;, 7)" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                </Option>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
                <Option name="blendMode" value="0" type="int"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
                <Option name="drawToAllParts" value="false" type="bool"/>
                <Option name="enabled" value="0" type="QString"/>
                <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
                <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
                <Option name="minLength" value="0" type="double"/>
                <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="minLengthUnit" value="MM" type="QString"/>
                <Option name="offsetFromAnchor" value="0" type="double"/>
                <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
                <Option name="offsetFromLabel" value="0" type="double"/>
                <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule key="{0b415cbc-6bbc-42de-821b-e182b7635dba}" filter="&quot;situacao_em_poligono&quot; in (1) and &quot;tipo&quot; != 4" description="Trecho de drenagem">
          <settings calloutType="simple">
            <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontKerning="1" textColor="0,173,240,255" capitalization="0" multilineHeight="1" fontSizeUnit="Point" fontLetterSpacing="0" previewBkgrdColor="255,255,255,255" fontSize="6" fontWeight="50" namedStyle="Condensed Italic" fontItalic="1" textOpacity="1" fontFamily="Noto Sans" blendMode="0" fontStrikeout="0" isExpression="0" textOrientation="horizontal" allowHtml="0" fieldName="texto_edicao" fontWordSpacing="0" legendString="Aa" fontUnderline="0" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferSizeUnits="Point" bufferNoFill="0" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,160,223,255" bufferJoinStyle="128">
                <effect enabled="0" type="effectStack">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option name="blend_mode" value="13" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color" value="0,0,0,255" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="offset_angle" value="135" type="QString"/>
                      <Option name="offset_distance" value="2" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="opacity" value="1" type="QString"/>
                    </Option>
                    <prop v="13" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,0,255" k="color"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="135" k="offset_angle"/>
                    <prop v="2" k="offset_distance"/>
                    <prop v="MM" k="offset_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                    <prop v="1" k="opacity"/>
                  </effect>
                  <effect type="outerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" value="0" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color1" value="0,0,255,255" type="QString"/>
                      <Option name="color2" value="0,255,0,255" type="QString"/>
                      <Option name="color_type" value="0" type="QString"/>
                      <Option name="direction" value="ccw" type="QString"/>
                      <Option name="discrete" value="0" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="opacity" value="0.5" type="QString"/>
                      <Option name="rampType" value="gradient" type="QString"/>
                      <Option name="single_color" value="255,255,255,255" type="QString"/>
                      <Option name="spec" value="rgb" type="QString"/>
                      <Option name="spread" value="2" type="QString"/>
                      <Option name="spread_unit" value="MM" type="QString"/>
                      <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    </Option>
                    <prop v="0" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,255,255" k="color1"/>
                    <prop v="0,255,0,255" k="color2"/>
                    <prop v="0" k="color_type"/>
                    <prop v="ccw" k="direction"/>
                    <prop v="0" k="discrete"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="0.5" k="opacity"/>
                    <prop v="gradient" k="rampType"/>
                    <prop v="255,255,255,255" k="single_color"/>
                    <prop v="rgb" k="spec"/>
                    <prop v="2" k="spread"/>
                    <prop v="MM" k="spread_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                  </effect>
                  <effect type="blur">
                    <Option type="Map">
                      <Option name="blend_mode" value="0" type="QString"/>
                      <Option name="blur_level" value="10" type="QString"/>
                      <Option name="blur_method" value="1" type="QString"/>
                      <Option name="blur_unit" value="Pixel" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="1" type="QString"/>
                      <Option name="opacity" value="1" type="QString"/>
                    </Option>
                    <prop v="0" k="blend_mode"/>
                    <prop v="10" k="blur_level"/>
                    <prop v="1" k="blur_method"/>
                    <prop v="Pixel" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="1" k="enabled"/>
                    <prop v="1" k="opacity"/>
                  </effect>
                  <effect type="innerShadow">
                    <Option type="Map">
                      <Option name="blend_mode" value="13" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color" value="0,0,0,255" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="offset_angle" value="135" type="QString"/>
                      <Option name="offset_distance" value="2" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="opacity" value="1" type="QString"/>
                    </Option>
                    <prop v="13" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,0,255" k="color"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="135" k="offset_angle"/>
                    <prop v="2" k="offset_distance"/>
                    <prop v="MM" k="offset_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                    <prop v="1" k="opacity"/>
                  </effect>
                  <effect type="innerGlow">
                    <Option type="Map">
                      <Option name="blend_mode" value="0" type="QString"/>
                      <Option name="blur_level" value="2.645" type="QString"/>
                      <Option name="blur_unit" value="MM" type="QString"/>
                      <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color1" value="0,0,255,255" type="QString"/>
                      <Option name="color2" value="0,255,0,255" type="QString"/>
                      <Option name="color_type" value="0" type="QString"/>
                      <Option name="direction" value="ccw" type="QString"/>
                      <Option name="discrete" value="0" type="QString"/>
                      <Option name="draw_mode" value="2" type="QString"/>
                      <Option name="enabled" value="0" type="QString"/>
                      <Option name="opacity" value="0.5" type="QString"/>
                      <Option name="rampType" value="gradient" type="QString"/>
                      <Option name="single_color" value="255,255,255,255" type="QString"/>
                      <Option name="spec" value="rgb" type="QString"/>
                      <Option name="spread" value="2" type="QString"/>
                      <Option name="spread_unit" value="MM" type="QString"/>
                      <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    </Option>
                    <prop v="0" k="blend_mode"/>
                    <prop v="2.645" k="blur_level"/>
                    <prop v="MM" k="blur_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                    <prop v="0,0,255,255" k="color1"/>
                    <prop v="0,255,0,255" k="color2"/>
                    <prop v="0" k="color_type"/>
                    <prop v="ccw" k="direction"/>
                    <prop v="0" k="discrete"/>
                    <prop v="2" k="draw_mode"/>
                    <prop v="0" k="enabled"/>
                    <prop v="0.5" k="opacity"/>
                    <prop v="gradient" k="rampType"/>
                    <prop v="255,255,255,255" k="single_color"/>
                    <prop v="rgb" k="spec"/>
                    <prop v="2" k="spread"/>
                    <prop v="MM" k="spread_unit"/>
                    <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                  </effect>
                </effect>
              </text-buffer>
              <text-mask maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="0.40000000000000002" maskSizeUnits="MM" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0" maskType="0" maskJoinStyle="128"/>
              <background shapeRadiiY="0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeBorderWidth="0" shapeSizeX="0" shapeDraw="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOffsetY="0" shapeJoinStyle="64" shapeSizeY="0" shapeSizeUnit="MM" shapeBorderWidthUnit="MM" shapeType="0" shapeRadiiUnit="MM" shapeOpacity="1" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeOffsetX="0">
                <symbol alpha="1" clip_to_extent="1" name="markerSymbol" force_rhr="0" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                    <Option type="Map">
                      <Option name="angle" value="0" type="QString"/>
                      <Option name="cap_style" value="square" type="QString"/>
                      <Option name="color" value="114,155,111,255" type="QString"/>
                      <Option name="horizontal_anchor_point" value="1" type="QString"/>
                      <Option name="joinstyle" value="bevel" type="QString"/>
                      <Option name="name" value="circle" type="QString"/>
                      <Option name="offset" value="0,0" type="QString"/>
                      <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="outline_color" value="0,0,0,255" type="QString"/>
                      <Option name="outline_style" value="solid" type="QString"/>
                      <Option name="outline_width" value="0" type="QString"/>
                      <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="outline_width_unit" value="MM" type="QString"/>
                      <Option name="scale_method" value="diameter" type="QString"/>
                      <Option name="size" value="2" type="QString"/>
                      <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="size_unit" value="MM" type="QString"/>
                      <Option name="vertical_anchor_point" value="1" type="QString"/>
                    </Option>
                    <prop v="0" k="angle"/>
                    <prop v="square" k="cap_style"/>
                    <prop v="114,155,111,255" k="color"/>
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
                        <Option name="name" value="" type="QString"/>
                        <Option name="properties"/>
                        <Option name="type" value="collection" type="QString"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" name="fillSymbol" force_rhr="0" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" pass="0" locked="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="color" value="255,255,255,255" type="QString"/>
                      <Option name="joinstyle" value="bevel" type="QString"/>
                      <Option name="offset" value="0,0" type="QString"/>
                      <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                      <Option name="offset_unit" value="MM" type="QString"/>
                      <Option name="outline_color" value="128,128,128,255" type="QString"/>
                      <Option name="outline_style" value="no" type="QString"/>
                      <Option name="outline_width" value="0" type="QString"/>
                      <Option name="outline_width_unit" value="MM" type="QString"/>
                      <Option name="style" value="solid" type="QString"/>
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
                        <Option name="name" value="" type="QString"/>
                        <Option name="properties"/>
                        <Option name="type" value="collection" type="QString"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowRadius="1.5" shadowDraw="0" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format wrapChar="" placeDirectionSymbol="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" multilineAlign="0" addDirectionSymbol="0" decimals="3" formatNumbers="0" plussign="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;"/>
            <placement rotationUnit="AngleDegrees" lineAnchorClipping="0" overrunDistanceUnit="MM" layerType="LineGeometry" yOffset="0" overrunDistance="0" rotationAngle="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" centroidWhole="0" dist="0.5" preserveRotation="0" repeatDistanceUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="6" geometryGeneratorType="LineGeometry" lineAnchorType="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" offsetType="0" placementFlags="10" distUnits="MM" fitInPolygonOnly="0" maxCurvedCharAngleOut="-30" centroidInside="0" maxCurvedCharAngleIn="30" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="300" lineAnchorPercent="0.5" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="3" geometryGeneratorEnabled="1"/>
            <rendering obstacleType="0" maxNumLabels="2" unplacedVisibility="0" obstacleFactor="2" fontMinPixelSize="3" scaleVisibility="0" limitNumLabels="0" scaleMax="0" mergeLines="1" fontLimitPixelSize="0" drawLabels="1" minFeatureSize="20" fontMaxPixelSize="10000" scaleMin="0" upsidedownLabels="0" obstacle="0" zIndex="0" displayAll="0" labelPerPart="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="Color" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                  <Option name="LinePlacementFlags" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                  <Option name="Size" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="coalesce(&quot;tamanho_txt&quot;, 7)" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                </Option>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
                <Option name="blendMode" value="0" type="int"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
                <Option name="drawToAllParts" value="false" type="bool"/>
                <Option name="enabled" value="0" type="QString"/>
                <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
                <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
                <Option name="minLength" value="0" type="double"/>
                <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="minLengthUnit" value="MM" type="QString"/>
                <Option name="offsetFromAnchor" value="0" type="double"/>
                <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
                <Option name="offsetFromLabel" value="0" type="double"/>
                <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
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
