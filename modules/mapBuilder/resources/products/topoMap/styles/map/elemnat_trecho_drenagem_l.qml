<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 referencescale="-1" type="RuleRenderer" forceraster="0" symbollevels="1" enableorderby="0">
    <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
      <rule filter="&quot;visivel&quot; = 1" label="Visível" key="{47666e68-c08e-4a67-a5c4-20e9bccf8f2c}">
        <rule symbol="0" description="Regime permanente" filter="&quot;regime&quot; in (0, 1) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" label="L10319A" key="{dfbc5c66-20ad-4025-bd20-505153c8f05f}"/>
        <rule symbol="1" filter="&quot;regime&quot; in (3, 5) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" label="L10319B" key="{9fe301b7-3ba1-4416-8058-7acf2474d21d}"/>
        <rule symbol="2" filter="&quot;situacao_em_poligono&quot; in (2, 3, 4) OR &quot;tipo&quot; = 4" label="Dentro de polígono" key="{4a1d6d43-d959-4f13-af44-06764de76cc8}"/>
        <rule symbol="3" filter="ELSE" label="Outro" key="{fb8e6a60-73d2-41a7-87fc-2ec5e14cca86}"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" type="line" force_rhr="0" name="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="1" class="SimpleLine">
          <Option type="Map">
            <Option value="0" type="QString" name="align_dash_pattern"/>
            <Option value="flat" type="QString" name="capstyle"/>
            <Option value="5;2" type="QString" name="customdash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
            <Option value="MM" type="QString" name="customdash_unit"/>
            <Option value="0" type="QString" name="dash_pattern_offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
            <Option value="0" type="QString" name="draw_inside_polygon"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,160,223,255" type="QString" name="line_color"/>
            <Option value="solid" type="QString" name="line_style"/>
            <Option value="0.2" type="QString" name="line_width"/>
            <Option value="MM" type="QString" name="line_width_unit"/>
            <Option value="0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0" type="QString" name="ring_filter"/>
            <Option value="0" type="QString" name="trim_distance_end"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_end_unit"/>
            <Option value="0" type="QString" name="trim_distance_start"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_start_unit"/>
            <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
            <Option value="0" type="QString" name="use_custom_dash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" force_rhr="0" name="1" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option value="0" type="QString" name="align_dash_pattern"/>
            <Option value="flat" type="QString" name="capstyle"/>
            <Option value="2;0.5" type="QString" name="customdash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
            <Option value="MM" type="QString" name="customdash_unit"/>
            <Option value="0" type="QString" name="dash_pattern_offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
            <Option value="0" type="QString" name="draw_inside_polygon"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,160,223,255" type="QString" name="line_color"/>
            <Option value="dot" type="QString" name="line_style"/>
            <Option value="0.2" type="QString" name="line_width"/>
            <Option value="MM" type="QString" name="line_width_unit"/>
            <Option value="0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0" type="QString" name="ring_filter"/>
            <Option value="0" type="QString" name="trim_distance_end"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_end_unit"/>
            <Option value="0" type="QString" name="trim_distance_start"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_start_unit"/>
            <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
            <Option value="1" type="QString" name="use_custom_dash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" force_rhr="0" name="2" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option value="0" type="QString" name="align_dash_pattern"/>
            <Option value="square" type="QString" name="capstyle"/>
            <Option value="5;2" type="QString" name="customdash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
            <Option value="MM" type="QString" name="customdash_unit"/>
            <Option value="0" type="QString" name="dash_pattern_offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
            <Option value="0" type="QString" name="draw_inside_polygon"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="255,158,23,255" type="QString" name="line_color"/>
            <Option value="no" type="QString" name="line_style"/>
            <Option value="0.26" type="QString" name="line_width"/>
            <Option value="MM" type="QString" name="line_width_unit"/>
            <Option value="0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0" type="QString" name="ring_filter"/>
            <Option value="0" type="QString" name="trim_distance_end"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_end_unit"/>
            <Option value="0" type="QString" name="trim_distance_start"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_start_unit"/>
            <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
            <Option value="0" type="QString" name="use_custom_dash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" force_rhr="0" name="3" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option value="0" type="QString" name="align_dash_pattern"/>
            <Option value="square" type="QString" name="capstyle"/>
            <Option value="5;2" type="QString" name="customdash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
            <Option value="MM" type="QString" name="customdash_unit"/>
            <Option value="0" type="QString" name="dash_pattern_offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
            <Option value="0" type="QString" name="draw_inside_polygon"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="255,0,0,255" type="QString" name="line_color"/>
            <Option value="solid" type="QString" name="line_style"/>
            <Option value="1" type="QString" name="line_width"/>
            <Option value="MM" type="QString" name="line_width_unit"/>
            <Option value="0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0" type="QString" name="ring_filter"/>
            <Option value="0" type="QString" name="trim_distance_end"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_end_unit"/>
            <Option value="0" type="QString" name="trim_distance_start"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
            <Option value="MM" type="QString" name="trim_distance_start_unit"/>
            <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
            <Option value="0" type="QString" name="use_custom_dash"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{d1771534-8cf5-4e0b-a135-92af0ad1360c}">
      <rule description="Visível" filter="&quot;visivel&quot; = 1" key="{77edc8a6-dfe0-4e38-8e02-1791dd632d84}">
        <rule description="Massa Dagua" filter="&quot;situacao_em_poligono&quot; in (2,3) and &quot;tipo&quot; != 4" key="{bfcafc96-2f71-41e0-940c-b3823d319e8a}">
          <settings calloutType="simple">
            <text-style multilineHeight="1" namedStyle="Italic" fontSizeUnit="Point" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="0,160,223,255" blendMode="0" capitalization="1" textOpacity="1" fontSize="7" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fieldName="texto_edicao" isExpression="0" fontKerning="1" allowHtml="0" fontItalic="1" fontLetterSpacing="0" fontStrikeout="0" legendString="Aa" textOrientation="horizontal" fontUnderline="0" fontWordSpacing="0">
              <families/>
              <text-buffer bufferSizeUnits="Point" bufferNoFill="0" bufferOpacity="1" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,160,223,255" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128">
                <effect type="effectStack" enabled="0">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option value="13" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,0,255" type="QString" name="color"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="135" type="QString" name="offset_angle"/>
                      <Option value="2" type="QString" name="offset_distance"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_unit_scale"/>
                      <Option value="1" type="QString" name="opacity"/>
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
                      <Option value="0" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,255,255" type="QString" name="color1"/>
                      <Option value="0,255,0,255" type="QString" name="color2"/>
                      <Option value="0" type="QString" name="color_type"/>
                      <Option value="ccw" type="QString" name="direction"/>
                      <Option value="0" type="QString" name="discrete"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="0.5" type="QString" name="opacity"/>
                      <Option value="gradient" type="QString" name="rampType"/>
                      <Option value="255,255,255,255" type="QString" name="single_color"/>
                      <Option value="rgb" type="QString" name="spec"/>
                      <Option value="2" type="QString" name="spread"/>
                      <Option value="MM" type="QString" name="spread_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="spread_unit_scale"/>
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
                      <Option value="0" type="QString" name="blend_mode"/>
                      <Option value="10" type="QString" name="blur_level"/>
                      <Option value="1" type="QString" name="blur_method"/>
                      <Option value="Pixel" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="1" type="QString" name="enabled"/>
                      <Option value="1" type="QString" name="opacity"/>
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
                      <Option value="13" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,0,255" type="QString" name="color"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="135" type="QString" name="offset_angle"/>
                      <Option value="2" type="QString" name="offset_distance"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_unit_scale"/>
                      <Option value="1" type="QString" name="opacity"/>
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
                      <Option value="0" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,255,255" type="QString" name="color1"/>
                      <Option value="0,255,0,255" type="QString" name="color2"/>
                      <Option value="0" type="QString" name="color_type"/>
                      <Option value="ccw" type="QString" name="direction"/>
                      <Option value="0" type="QString" name="discrete"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="0.5" type="QString" name="opacity"/>
                      <Option value="gradient" type="QString" name="rampType"/>
                      <Option value="255,255,255,255" type="QString" name="single_color"/>
                      <Option value="rgb" type="QString" name="spec"/>
                      <Option value="2" type="QString" name="spread"/>
                      <Option value="MM" type="QString" name="spread_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="spread_unit_scale"/>
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
              <text-mask maskSizeUnits="MM" maskOpacity="1" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0.20000000000000001"/>
              <background shapeOpacity="1" shapeSizeY="0" shapeOffsetX="0" shapeBlendMode="0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSizeType="0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRotation="0" shapeRadiiY="0" shapeDraw="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeOffsetUnit="MM" shapeSizeX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeRadiiUnit="MM" shapeRadiiX="0">
                <symbol alpha="1" type="marker" force_rhr="0" name="markerSymbol" clip_to_extent="1">
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
                      <Option value="114,155,111,255" type="QString" name="color"/>
                      <Option value="1" type="QString" name="horizontal_anchor_point"/>
                      <Option value="bevel" type="QString" name="joinstyle"/>
                      <Option value="circle" type="QString" name="name"/>
                      <Option value="0,0" type="QString" name="offset"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="0,0,0,255" type="QString" name="outline_color"/>
                      <Option value="solid" type="QString" name="outline_style"/>
                      <Option value="0" type="QString" name="outline_width"/>
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
                        <Option value="" type="QString" name="name"/>
                        <Option name="properties"/>
                        <Option value="collection" type="QString" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" type="fill" force_rhr="0" name="fillSymbol" clip_to_extent="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                    <Option type="Map">
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                      <Option value="255,255,255,255" type="QString" name="color"/>
                      <Option value="bevel" type="QString" name="joinstyle"/>
                      <Option value="0,0" type="QString" name="offset"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="128,128,128,255" type="QString" name="outline_color"/>
                      <Option value="no" type="QString" name="outline_style"/>
                      <Option value="0" type="QString" name="outline_width"/>
                      <Option value="MM" type="QString" name="outline_width_unit"/>
                      <Option value="solid" type="QString" name="style"/>
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
                        <Option value="" type="QString" name="name"/>
                        <Option name="properties"/>
                        <Option value="collection" type="QString" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowDraw="0" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOffsetDist="1" shadowBlendMode="6" shadowUnder="0" shadowRadius="1.5" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
              <dd_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" formatNumbers="0" multilineAlign="0" placeDirectionSymbol="0" wrapChar="" autoWrapLength="0" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" useMaxLineLengthForAutoWrap="1"/>
            <placement offsetUnits="MM" geometryGeneratorEnabled="1" dist="0.5" geometryGeneratorType="LineGeometry" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="6" lineAnchorType="0" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" fitInPolygonOnly="0" repeatDistance="300" repeatDistanceUnits="MM" placement="3" centroidInside="0" overrunDistanceUnit="MM" offsetType="0" rotationAngle="0" preserveRotation="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" yOffset="0" layerType="LineGeometry" maxCurvedCharAngleIn="30" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" distMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" placementFlags="10" xOffset="0" maxCurvedCharAngleOut="-30" distUnits="MM"/>
            <rendering obstacleType="0" limitNumLabels="0" minFeatureSize="20" displayAll="0" scaleMin="0" scaleVisibility="0" obstacle="0" scaleMax="0" fontMinPixelSize="3" zIndex="0" drawLabels="1" labelPerPart="0" fontMaxPixelSize="10000" fontLimitPixelSize="0" upsidedownLabels="0" mergeLines="1" maxNumLabels="2" obstacleFactor="2" unplacedVisibility="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="Color">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="LinePlacementFlags">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="Show">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="Size">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="coalesce(&quot;tamanho_txt&quot;, 7)" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
                <Option value="0" type="int" name="blendMode"/>
                <Option type="Map" name="ddProperties">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
                <Option value="false" type="bool" name="drawToAllParts"/>
                <Option value="0" type="QString" name="enabled"/>
                <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
                <Option value="&lt;symbol alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
                <Option value="0" type="double" name="minLength"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
                <Option value="MM" type="QString" name="minLengthUnit"/>
                <Option value="0" type="double" name="offsetFromAnchor"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
                <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
                <Option value="0" type="double" name="offsetFromLabel"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
                <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Trecho de drenagem" filter="&quot;situacao_em_poligono&quot; in (1) and &quot;tipo&quot; != 4" key="{7d971113-f4e2-4544-bedc-32e9ad561d55}">
          <settings calloutType="simple">
            <text-style multilineHeight="1" namedStyle="Condensed Italic" fontSizeUnit="Point" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="0,160,223,255" blendMode="0" capitalization="0" textOpacity="1" fontSize="6" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fieldName="texto_edicao" isExpression="0" fontKerning="1" allowHtml="0" fontItalic="1" fontLetterSpacing="0" fontStrikeout="0" legendString="Aa" textOrientation="horizontal" fontUnderline="0" fontWordSpacing="0">
              <families/>
              <text-buffer bufferSizeUnits="Point" bufferNoFill="0" bufferOpacity="1" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,160,223,255" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128">
                <effect type="effectStack" enabled="0">
                  <effect type="dropShadow">
                    <Option type="Map">
                      <Option value="13" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,0,255" type="QString" name="color"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="135" type="QString" name="offset_angle"/>
                      <Option value="2" type="QString" name="offset_distance"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_unit_scale"/>
                      <Option value="1" type="QString" name="opacity"/>
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
                      <Option value="0" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,255,255" type="QString" name="color1"/>
                      <Option value="0,255,0,255" type="QString" name="color2"/>
                      <Option value="0" type="QString" name="color_type"/>
                      <Option value="ccw" type="QString" name="direction"/>
                      <Option value="0" type="QString" name="discrete"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="0.5" type="QString" name="opacity"/>
                      <Option value="gradient" type="QString" name="rampType"/>
                      <Option value="255,255,255,255" type="QString" name="single_color"/>
                      <Option value="rgb" type="QString" name="spec"/>
                      <Option value="2" type="QString" name="spread"/>
                      <Option value="MM" type="QString" name="spread_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="spread_unit_scale"/>
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
                      <Option value="0" type="QString" name="blend_mode"/>
                      <Option value="10" type="QString" name="blur_level"/>
                      <Option value="1" type="QString" name="blur_method"/>
                      <Option value="Pixel" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="1" type="QString" name="enabled"/>
                      <Option value="1" type="QString" name="opacity"/>
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
                      <Option value="13" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,0,255" type="QString" name="color"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="135" type="QString" name="offset_angle"/>
                      <Option value="2" type="QString" name="offset_distance"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_unit_scale"/>
                      <Option value="1" type="QString" name="opacity"/>
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
                      <Option value="0" type="QString" name="blend_mode"/>
                      <Option value="2.645" type="QString" name="blur_level"/>
                      <Option value="MM" type="QString" name="blur_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="blur_unit_scale"/>
                      <Option value="0,0,255,255" type="QString" name="color1"/>
                      <Option value="0,255,0,255" type="QString" name="color2"/>
                      <Option value="0" type="QString" name="color_type"/>
                      <Option value="ccw" type="QString" name="direction"/>
                      <Option value="0" type="QString" name="discrete"/>
                      <Option value="2" type="QString" name="draw_mode"/>
                      <Option value="0" type="QString" name="enabled"/>
                      <Option value="0.5" type="QString" name="opacity"/>
                      <Option value="gradient" type="QString" name="rampType"/>
                      <Option value="255,255,255,255" type="QString" name="single_color"/>
                      <Option value="rgb" type="QString" name="spec"/>
                      <Option value="2" type="QString" name="spread"/>
                      <Option value="MM" type="QString" name="spread_unit"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="spread_unit_scale"/>
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
              <text-mask maskSizeUnits="MM" maskOpacity="1" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0.20000000000000001"/>
              <background shapeOpacity="1" shapeSizeY="0" shapeOffsetX="0" shapeBlendMode="0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSizeType="0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRotation="0" shapeRadiiY="0" shapeDraw="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeOffsetUnit="MM" shapeSizeX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeRadiiUnit="MM" shapeRadiiX="0">
                <symbol alpha="1" type="marker" force_rhr="0" name="markerSymbol" clip_to_extent="1">
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
                      <Option value="114,155,111,255" type="QString" name="color"/>
                      <Option value="1" type="QString" name="horizontal_anchor_point"/>
                      <Option value="bevel" type="QString" name="joinstyle"/>
                      <Option value="circle" type="QString" name="name"/>
                      <Option value="0,0" type="QString" name="offset"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="0,0,0,255" type="QString" name="outline_color"/>
                      <Option value="solid" type="QString" name="outline_style"/>
                      <Option value="0" type="QString" name="outline_width"/>
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
                        <Option value="" type="QString" name="name"/>
                        <Option name="properties"/>
                        <Option value="collection" type="QString" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" type="fill" force_rhr="0" name="fillSymbol" clip_to_extent="1">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                  <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                    <Option type="Map">
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                      <Option value="255,255,255,255" type="QString" name="color"/>
                      <Option value="bevel" type="QString" name="joinstyle"/>
                      <Option value="0,0" type="QString" name="offset"/>
                      <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                      <Option value="MM" type="QString" name="offset_unit"/>
                      <Option value="128,128,128,255" type="QString" name="outline_color"/>
                      <Option value="no" type="QString" name="outline_style"/>
                      <Option value="0" type="QString" name="outline_width"/>
                      <Option value="MM" type="QString" name="outline_width_unit"/>
                      <Option value="solid" type="QString" name="style"/>
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
                        <Option value="" type="QString" name="name"/>
                        <Option name="properties"/>
                        <Option value="collection" type="QString" name="type"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowDraw="0" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOffsetDist="1" shadowBlendMode="6" shadowUnder="0" shadowRadius="1.5" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
              <dd_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" formatNumbers="0" multilineAlign="0" placeDirectionSymbol="0" wrapChar="" autoWrapLength="0" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" useMaxLineLengthForAutoWrap="1"/>
            <placement offsetUnits="MM" geometryGeneratorEnabled="1" dist="0.5" geometryGeneratorType="LineGeometry" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="6" lineAnchorType="0" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" fitInPolygonOnly="0" repeatDistance="300" repeatDistanceUnits="MM" placement="3" centroidInside="0" overrunDistanceUnit="MM" offsetType="0" rotationAngle="0" preserveRotation="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" yOffset="0" layerType="LineGeometry" maxCurvedCharAngleIn="30" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" distMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" placementFlags="10" xOffset="0" maxCurvedCharAngleOut="-30" distUnits="MM"/>
            <rendering obstacleType="0" limitNumLabels="0" minFeatureSize="20" displayAll="0" scaleMin="0" scaleVisibility="0" obstacle="0" scaleMax="0" fontMinPixelSize="3" zIndex="0" drawLabels="1" labelPerPart="0" fontMaxPixelSize="10000" fontLimitPixelSize="0" upsidedownLabels="0" mergeLines="1" maxNumLabels="2" obstacleFactor="2" unplacedVisibility="0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="Color">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('ciano-100_0-160-223_#00A0DF')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="LinePlacementFlags">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="CASE &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 1 THEN 'OL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 2 THEN 'AL' &#xd;&#xa;WHEN  &quot;posicao_rotulo&quot; = 3 THEN 'BL' &#xd;&#xa;ELSE&#xd;&#xa;'AL'&#xd;&#xa;END" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="Show">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                  <Option type="Map" name="Size">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="coalesce(&quot;tamanho_txt&quot;, 6)" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
                <Option value="0" type="int" name="blendMode"/>
                <Option type="Map" name="ddProperties">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
                <Option value="false" type="bool" name="drawToAllParts"/>
                <Option value="0" type="QString" name="enabled"/>
                <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
                <Option value="&lt;symbol alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
                <Option value="0" type="double" name="minLength"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
                <Option value="MM" type="QString" name="minLengthUnit"/>
                <Option value="0" type="double" name="offsetFromAnchor"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
                <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
                <Option value="0" type="double" name="offsetFromLabel"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
                <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
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
