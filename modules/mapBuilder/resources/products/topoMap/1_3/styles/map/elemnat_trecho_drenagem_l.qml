<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 symbollevels="1" type="RuleRenderer" forceraster="0" enableorderby="0" referencescale="-1">
    <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
      <rule key="{47666e68-c08e-4a67-a5c4-20e9bccf8f2c}" filter="&quot;visivel&quot; = 1" label="Visível">
        <rule symbol="0" key="{dfbc5c66-20ad-4025-bd20-505153c8f05f}" filter="&quot;regime&quot; in (0, 1) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" description="Regime permanente" label="L10319A"/>
        <rule symbol="1" key="{9fe301b7-3ba1-4416-8058-7acf2474d21d}" filter="&quot;regime&quot; in (3, 5) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" label="L10319B"/>
        <rule symbol="2" key="{4a1d6d43-d959-4f13-af44-06764de76cc8}" filter="&quot;situacao_em_poligono&quot; in (2, 3, 4) OR &quot;tipo&quot; = 4" label="Dentro de polígono"/>
        <rule symbol="3" key="{fb8e6a60-73d2-41a7-87fc-2ec5e14cca86}" filter="ELSE" label="Outro"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" alpha="1" type="line" clip_to_extent="1" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="1" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,160,223,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.2" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
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
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" alpha="1" type="line" clip_to_extent="1" name="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="2;0.5" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,160,223,255" name="line_color"/>
            <Option type="QString" value="dot" name="line_style"/>
            <Option type="QString" value="0.2" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="1" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
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
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" alpha="1" type="line" clip_to_extent="1" name="2">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,158,23,255" name="line_color"/>
            <Option type="QString" value="no" name="line_style"/>
            <Option type="QString" value="0.26" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" alpha="1" type="line" clip_to_extent="1" name="3">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,0,0,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="1" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{a36d02fd-257d-4033-9cd7-9b1d5fc39e17}">
      <rule key="{ace80f13-d668-45e2-a36a-64a4269f3591}" filter="&quot;visivel&quot; = 1" description="Visível">
        <rule key="{809f1a38-6d2b-4c49-b9a1-13f869f2d481}" filter="&quot;situacao_em_poligono&quot; in (2,3) and &quot;tipo&quot; != 4" description="Massa Dagua">
          <settings calloutType="simple">
            <text-style useSubstitutions="0" fontFamily="Noto Sans" textColor="0,173,240,255" fontLetterSpacing="0" namedStyle="Italic" fontUnderline="0" previewBkgrdColor="255,255,255,255" fontKerning="1" multilineHeight="1" fontWordSpacing="0" blendMode="0" fontItalic="1" allowHtml="0" isExpression="0" capitalization="1" fontStrikeout="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" legendString="Aa" fontWeight="50" fontSize="7" fontSizeUnit="Point" textOrientation="horizontal" textOpacity="1" fieldName="texto_edicao">
              <families/>
              <text-buffer bufferSize="1" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferBlendMode="0" bufferSizeUnits="Point" bufferColor="0,160,223,255" bufferNoFill="0" bufferDraw="0">
                <effect type="effectStack" enabled="0">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option type="QString" value="13" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,0,255" name="color"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="135" name="offset_angle"/>
                      <Option type="QString" value="2" name="offset_distance"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                      <Option type="QString" value="1" name="opacity"/>
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
                      <Option type="QString" value="0" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,255,255" name="color1"/>
                      <Option type="QString" value="0,255,0,255" name="color2"/>
                      <Option type="QString" value="0" name="color_type"/>
                      <Option type="QString" value="ccw" name="direction"/>
                      <Option type="QString" value="0" name="discrete"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="0.5" name="opacity"/>
                      <Option type="QString" value="gradient" name="rampType"/>
                      <Option type="QString" value="255,255,255,255" name="single_color"/>
                      <Option type="QString" value="rgb" name="spec"/>
                      <Option type="QString" value="2" name="spread"/>
                      <Option type="QString" value="MM" name="spread_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
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
                      <Option type="QString" value="0" name="blend_mode"/>
                      <Option type="QString" value="10" name="blur_level"/>
                      <Option type="QString" value="1" name="blur_method"/>
                      <Option type="QString" value="Pixel" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="1" name="enabled"/>
                      <Option type="QString" value="1" name="opacity"/>
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
                      <Option type="QString" value="13" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,0,255" name="color"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="135" name="offset_angle"/>
                      <Option type="QString" value="2" name="offset_distance"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                      <Option type="QString" value="1" name="opacity"/>
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
                      <Option type="QString" value="0" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,255,255" name="color1"/>
                      <Option type="QString" value="0,255,0,255" name="color2"/>
                      <Option type="QString" value="0" name="color_type"/>
                      <Option type="QString" value="ccw" name="direction"/>
                      <Option type="QString" value="0" name="discrete"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="0.5" name="opacity"/>
                      <Option type="QString" value="gradient" name="rampType"/>
                      <Option type="QString" value="255,255,255,255" name="single_color"/>
                      <Option type="QString" value="rgb" name="spec"/>
                      <Option type="QString" value="2" name="spread"/>
                      <Option type="QString" value="MM" name="spread_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
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
              <text-mask maskEnabled="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0" maskSizeUnits="MM" maskJoinStyle="128" maskSize="0.40000000000000002"/>
              <background shapeJoinStyle="64" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeOpacity="1" shapeBlendMode="0" shapeBorderWidth="0" shapeRadiiX="0" shapeSizeUnit="MM" shapeSVGFile="" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeSizeType="0" shapeOffsetY="0" shapeRadiiY="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255">
                <symbol force_rhr="0" alpha="1" type="marker" clip_to_extent="1" name="markerSymbol">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                    <Option type="Map">
                      <Option type="QString" value="0" name="angle"/>
                      <Option type="QString" value="square" name="cap_style"/>
                      <Option type="QString" value="114,155,111,255" name="color"/>
                      <Option type="QString" value="1" name="horizontal_anchor_point"/>
                      <Option type="QString" value="bevel" name="joinstyle"/>
                      <Option type="QString" value="circle" name="name"/>
                      <Option type="QString" value="0,0" name="offset"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="0,0,0,255" name="outline_color"/>
                      <Option type="QString" value="solid" name="outline_style"/>
                      <Option type="QString" value="0" name="outline_width"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                      <Option type="QString" value="MM" name="outline_width_unit"/>
                      <Option type="QString" value="diameter" name="scale_method"/>
                      <Option type="QString" value="2" name="size"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                      <Option type="QString" value="MM" name="size_unit"/>
                      <Option type="QString" value="1" name="vertical_anchor_point"/>
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
                        <Option type="QString" value="" name="name"/>
                        <Option name="properties"/>
                        <Option type="QString" value="collection" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol force_rhr="0" alpha="1" type="fill" clip_to_extent="1" name="fillSymbol">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                    <Option type="Map">
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                      <Option type="QString" value="255,255,255,255" name="color"/>
                      <Option type="QString" value="bevel" name="joinstyle"/>
                      <Option type="QString" value="0,0" name="offset"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="128,128,128,255" name="outline_color"/>
                      <Option type="QString" value="no" name="outline_style"/>
                      <Option type="QString" value="0" name="outline_width"/>
                      <Option type="QString" value="MM" name="outline_width_unit"/>
                      <Option type="QString" value="solid" name="style"/>
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
                        <Option type="QString" value="" name="name"/>
                        <Option name="properties"/>
                        <Option type="QString" value="collection" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowOffsetGlobal="1" shadowOffsetDist="1" shadowDraw="0" shadowBlendMode="6" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadiusUnit="MM" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
              <dd_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format placeDirectionSymbol="0" formatNumbers="0" plussign="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" multilineAlign="0" reverseDirectionSymbol="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3"/>
            <placement predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" layerType="LineGeometry" preserveRotation="0" repeatDistance="300" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" fitInPolygonOnly="0" centroidWhole="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" priority="6" lineAnchorClipping="0" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0" placement="3" polygonPlacementFlags="2" offsetType="0" geometryGeneratorEnabled="1" distUnits="MM" repeatDistanceUnits="MM" quadOffset="4" rotationAngle="0" geometryGeneratorType="LineGeometry" lineAnchorPercent="0.5" placementFlags="10" dist="0.5" maxCurvedCharAngleOut="-30" overrunDistance="0" rotationUnit="AngleDegrees" yOffset="0" xOffset="0" offsetUnits="MM" maxCurvedCharAngleIn="30"/>
            <rendering limitNumLabels="0" minFeatureSize="20" unplacedVisibility="0" obstacleType="0" maxNumLabels="2" obstacle="1" scaleVisibility="0" mergeLines="1" zIndex="0" scaleMin="0" fontMinPixelSize="3" drawLabels="1" obstacleFactor="1" fontLimitPixelSize="0" displayAll="0" fontMaxPixelSize="10000" scaleMax="0" upsidedownLabels="0" labelPerPart="0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="Color">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                  <Option type="Map" name="LinePlacementFlags">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                  <Option type="Map" name="Show">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                  <Option type="Map" name="Size">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="coalesce(&quot;tamanho_txt&quot;, 7)" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                </Option>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
                <Option type="int" value="0" name="blendMode"/>
                <Option type="Map" name="ddProperties">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
                <Option type="bool" value="false" name="drawToAllParts"/>
                <Option type="QString" value="0" name="enabled"/>
                <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
                <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
                <Option type="double" value="0" name="minLength"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
                <Option type="QString" value="MM" name="minLengthUnit"/>
                <Option type="double" value="0" name="offsetFromAnchor"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
                <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
                <Option type="double" value="0" name="offsetFromLabel"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
                <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule key="{badf4791-67e1-452a-a927-b1b4774e6b54}" filter="&quot;situacao_em_poligono&quot; in (1) and &quot;tipo&quot; != 4" description="Trecho de drenagem">
          <settings calloutType="simple">
            <text-style useSubstitutions="0" fontFamily="Noto Sans" textColor="0,173,240,255" fontLetterSpacing="0" namedStyle="Condensed Italic" fontUnderline="0" previewBkgrdColor="255,255,255,255" fontKerning="1" multilineHeight="1" fontWordSpacing="0" blendMode="0" fontItalic="1" allowHtml="0" isExpression="0" capitalization="0" fontStrikeout="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" legendString="Aa" fontWeight="50" fontSize="6" fontSizeUnit="Point" textOrientation="horizontal" textOpacity="1" fieldName="texto_edicao">
              <families/>
              <text-buffer bufferSize="1" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferBlendMode="0" bufferSizeUnits="Point" bufferColor="0,160,223,255" bufferNoFill="0" bufferDraw="0">
                <effect type="effectStack" enabled="0">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option type="QString" value="13" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,0,255" name="color"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="135" name="offset_angle"/>
                      <Option type="QString" value="2" name="offset_distance"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                      <Option type="QString" value="1" name="opacity"/>
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
                      <Option type="QString" value="0" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,255,255" name="color1"/>
                      <Option type="QString" value="0,255,0,255" name="color2"/>
                      <Option type="QString" value="0" name="color_type"/>
                      <Option type="QString" value="ccw" name="direction"/>
                      <Option type="QString" value="0" name="discrete"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="0.5" name="opacity"/>
                      <Option type="QString" value="gradient" name="rampType"/>
                      <Option type="QString" value="255,255,255,255" name="single_color"/>
                      <Option type="QString" value="rgb" name="spec"/>
                      <Option type="QString" value="2" name="spread"/>
                      <Option type="QString" value="MM" name="spread_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
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
                      <Option type="QString" value="0" name="blend_mode"/>
                      <Option type="QString" value="10" name="blur_level"/>
                      <Option type="QString" value="1" name="blur_method"/>
                      <Option type="QString" value="Pixel" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="1" name="enabled"/>
                      <Option type="QString" value="1" name="opacity"/>
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
                      <Option type="QString" value="13" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,0,255" name="color"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="135" name="offset_angle"/>
                      <Option type="QString" value="2" name="offset_distance"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                      <Option type="QString" value="1" name="opacity"/>
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
                      <Option type="QString" value="0" name="blend_mode"/>
                      <Option type="QString" value="2.645" name="blur_level"/>
                      <Option type="QString" value="MM" name="blur_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                      <Option type="QString" value="0,0,255,255" name="color1"/>
                      <Option type="QString" value="0,255,0,255" name="color2"/>
                      <Option type="QString" value="0" name="color_type"/>
                      <Option type="QString" value="ccw" name="direction"/>
                      <Option type="QString" value="0" name="discrete"/>
                      <Option type="QString" value="2" name="draw_mode"/>
                      <Option type="QString" value="0" name="enabled"/>
                      <Option type="QString" value="0.5" name="opacity"/>
                      <Option type="QString" value="gradient" name="rampType"/>
                      <Option type="QString" value="255,255,255,255" name="single_color"/>
                      <Option type="QString" value="rgb" name="spec"/>
                      <Option type="QString" value="2" name="spread"/>
                      <Option type="QString" value="MM" name="spread_unit"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
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
              <text-mask maskEnabled="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0" maskSizeUnits="MM" maskJoinStyle="128" maskSize="0.40000000000000002"/>
              <background shapeJoinStyle="64" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeOpacity="1" shapeBlendMode="0" shapeBorderWidth="0" shapeRadiiX="0" shapeSizeUnit="MM" shapeSVGFile="" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeSizeType="0" shapeOffsetY="0" shapeRadiiY="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255">
                <symbol force_rhr="0" alpha="1" type="marker" clip_to_extent="1" name="markerSymbol">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                    <Option type="Map">
                      <Option type="QString" value="0" name="angle"/>
                      <Option type="QString" value="square" name="cap_style"/>
                      <Option type="QString" value="114,155,111,255" name="color"/>
                      <Option type="QString" value="1" name="horizontal_anchor_point"/>
                      <Option type="QString" value="bevel" name="joinstyle"/>
                      <Option type="QString" value="circle" name="name"/>
                      <Option type="QString" value="0,0" name="offset"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="0,0,0,255" name="outline_color"/>
                      <Option type="QString" value="solid" name="outline_style"/>
                      <Option type="QString" value="0" name="outline_width"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                      <Option type="QString" value="MM" name="outline_width_unit"/>
                      <Option type="QString" value="diameter" name="scale_method"/>
                      <Option type="QString" value="2" name="size"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                      <Option type="QString" value="MM" name="size_unit"/>
                      <Option type="QString" value="1" name="vertical_anchor_point"/>
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
                        <Option type="QString" value="" name="name"/>
                        <Option name="properties"/>
                        <Option type="QString" value="collection" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol force_rhr="0" alpha="1" type="fill" clip_to_extent="1" name="fillSymbol">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                    <Option type="Map">
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                      <Option type="QString" value="255,255,255,255" name="color"/>
                      <Option type="QString" value="bevel" name="joinstyle"/>
                      <Option type="QString" value="0,0" name="offset"/>
                      <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                      <Option type="QString" value="MM" name="offset_unit"/>
                      <Option type="QString" value="128,128,128,255" name="outline_color"/>
                      <Option type="QString" value="no" name="outline_style"/>
                      <Option type="QString" value="0" name="outline_width"/>
                      <Option type="QString" value="MM" name="outline_width_unit"/>
                      <Option type="QString" value="solid" name="style"/>
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
                        <Option type="QString" value="" name="name"/>
                        <Option name="properties"/>
                        <Option type="QString" value="collection" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowOffsetGlobal="1" shadowOffsetDist="1" shadowDraw="0" shadowBlendMode="6" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadiusUnit="MM" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
              <dd_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format placeDirectionSymbol="0" formatNumbers="0" plussign="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" multilineAlign="0" reverseDirectionSymbol="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3"/>
            <placement predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" layerType="LineGeometry" preserveRotation="0" repeatDistance="300" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" fitInPolygonOnly="0" centroidWhole="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" priority="6" lineAnchorClipping="0" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0" placement="3" polygonPlacementFlags="2" offsetType="0" geometryGeneratorEnabled="1" distUnits="MM" repeatDistanceUnits="MM" quadOffset="4" rotationAngle="0" geometryGeneratorType="LineGeometry" lineAnchorPercent="0.5" placementFlags="10" dist="0.5" maxCurvedCharAngleOut="-30" overrunDistance="0" rotationUnit="AngleDegrees" yOffset="0" xOffset="0" offsetUnits="MM" maxCurvedCharAngleIn="30"/>
            <rendering limitNumLabels="0" minFeatureSize="20" unplacedVisibility="0" obstacleType="0" maxNumLabels="2" obstacle="0" scaleVisibility="0" mergeLines="1" zIndex="0" scaleMin="0" fontMinPixelSize="3" drawLabels="1" obstacleFactor="2" fontLimitPixelSize="0" displayAll="0" fontMaxPixelSize="10000" scaleMax="0" upsidedownLabels="0" labelPerPart="0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="Color">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                  <Option type="Map" name="LinePlacementFlags">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                  <Option type="Map" name="Show">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                  <Option type="Map" name="Size">
                    <Option type="bool" value="true" name="active"/>
                    <Option type="QString" value="coalesce(&quot;tamanho_txt&quot;, 7)" name="expression"/>
                    <Option type="int" value="3" name="type"/>
                  </Option>
                </Option>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
                <Option type="int" value="0" name="blendMode"/>
                <Option type="Map" name="ddProperties">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
                <Option type="bool" value="false" name="drawToAllParts"/>
                <Option type="QString" value="0" name="enabled"/>
                <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
                <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
                <Option type="double" value="0" name="minLength"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
                <Option type="QString" value="MM" name="minLengthUnit"/>
                <Option type="double" value="0" name="offsetFromAnchor"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
                <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
                <Option type="double" value="0" name="offsetFromLabel"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
                <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
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
