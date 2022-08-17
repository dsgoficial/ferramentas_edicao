<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" labelsEnabled="1" readOnly="0" symbologyReferenceScale="-1" simplifyLocal="1" minScale="0" simplifyDrawingTol="1" version="3.24.3-Tisler" styleCategories="AllStyleCategories" maxScale="0" simplifyDrawingHints="1" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal fixedDuration="0" mode="0" endField="" enabled="0" limitMode="0" durationField="" startExpression="" durationUnit="min" endExpression="" startField="" accumulate="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" type="RuleRenderer" forceraster="0" symbollevels="1" referencescale="-1">
    <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
      <rule filter="&quot;simbolizar_carta_mini&quot; = 1" key="{8d7cff9b-b82c-4486-8ec6-346d21085778}">
        <rule symbol="0" filter="&quot;regime&quot; IN (0,1) and &quot;situacao_em_poligono&quot; not in (2,3,4)" description="Regime permanente" label="L10319A" key="{d438350f-e5f2-43a3-ad37-e723d23c9c9f}"/>
        <rule symbol="1" filter="&quot;regime&quot; in (3,5) and &quot;situacao_em_poligono&quot; not in (2,3,4)" label="L10319B" key="{f0189ecb-eb6c-48bb-9111-9d4f5639f30f}"/>
        <rule symbol="2" filter="&quot;situacao_em_poligono&quot;  in (2,3,4)" label="Dentro de polígono" key="{3dce10d2-e579-4f44-9d80-065fdb67090d}"/>
        <rule symbol="3" filter="ELSE" label="Outro" key="{2938db61-0f85-41a0-9628-824d8ded424c}"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="1">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="flat"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="0,160,223,255"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="0.2"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="flat"/>
            <Option type="QString" name="customdash" value="2;0.5"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="0,160,223,255"/>
            <Option type="QString" name="line_style" value="dot"/>
            <Option type="QString" name="line_width" value="0.2"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="1"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="2">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="255,158,23,255"/>
            <Option type="QString" name="line_style" value="no"/>
            <Option type="QString" name="line_width" value="0.26"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="3">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="255,0,0,255"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{0450eef1-4c45-4adc-a550-baaf8ba75c3b}">
      <rule filter="&quot;situacao_em_poligono&quot; in (2) and &quot;rotular_carta_mini&quot; = 1" description="Massa Dagua" key="{ca52054f-fad4-47d5-a8bb-277d48937307}">
        <settings calloutType="simple">
          <text-style fontUnderline="0" fontWordSpacing="0" textColor="0,160,223,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontKerning="1" textOpacity="1" legendString="Aa" fontSizeUnit="Point" fontItalic="1" namedStyle="Italic" fontStrikeout="0" multilineHeight="1" useSubstitutions="0" fontWeight="50" textOrientation="horizontal" blendMode="0" previewBkgrdColor="255,255,255,255" capitalization="1" allowHtml="0" isExpression="0" fontFamily="Noto Sans" fontLetterSpacing="0" fieldName="texto_edicao" fontSize="7">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferJoinStyle="128" bufferNoFill="0" bufferSizeUnits="Point" bufferDraw="0" bufferSize="1" bufferColor="0,160,223,255" bufferOpacity="1">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
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
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="direction" value="ccw"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spec" value="rgb"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
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
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="10"/>
                    <Option type="QString" name="blur_method" value="1"/>
                    <Option type="QString" name="blur_unit" value="Pixel"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="1"/>
                    <Option type="QString" name="opacity" value="1"/>
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
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
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
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="direction" value="ccw"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spec" value="rgb"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
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
            <text-mask maskEnabled="1" maskJoinStyle="128" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},1,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},2,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},3,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},4,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},5,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},6,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},7,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},8,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},9,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},10,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},11,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},12,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},13,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},14,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},15,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},16,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},17,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},18,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},19,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},20,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},21,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},22,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},23,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},24,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},25,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},26,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},27,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},28,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},29,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},30,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},31,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},32,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},33,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},34,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},35,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},36,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},37,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},38,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},39,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},40,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},41,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},42,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},43,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},44,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},45,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},46,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},47,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},48,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},49,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},50,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},51,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},52,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},53,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},54,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},55,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},56,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},57,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},58,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},59,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},60,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},61,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},62,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},63,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},64,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},65,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},66,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},67,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},68,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},69,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},70,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},71,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},72,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},73,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},74,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},75,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},76,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},77,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},78,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},79,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},80,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},81,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},82,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},83,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},84,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},85,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},86,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},87,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},88,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},89,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},90,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},91,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},92,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},93,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},94,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},95,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},96,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},97,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},98,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},99,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},100,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},101,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},102,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},103,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},104,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},105,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},106,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},107,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},108,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},109,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},110,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},111,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},112,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},113,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},114,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},115,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},116,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},117,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},118,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},119,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},120,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},121,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},122,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},123,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},124,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},125,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},126,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},127,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},128,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},129,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},130,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},131,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},132,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},133,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},134,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},135,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},136,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},137,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},138,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},139,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},140,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},141,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},142,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},143,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},144,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},145,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},146,0" maskSizeUnits="MM" maskType="0" maskSize="0.20000000000000001"/>
            <background shapeOffsetUnit="MM" shapeSizeX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRadiiY="0" shapeRadiiUnit="MM" shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeSizeY="0" shapeRotation="0" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOpacity="1" shapeSVGFile="" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeRadiiX="0" shapeDraw="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeType="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="114,155,111,255"/>
                    <Option type="QString" name="horizontal_anchor_point" value="1"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="name" value="circle"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="0,0,0,255"/>
                    <Option type="QString" name="outline_style" value="solid"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="scale_method" value="diameter"/>
                    <Option type="QString" name="size" value="2"/>
                    <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="size_unit" value="MM"/>
                    <Option type="QString" name="vertical_anchor_point" value="1"/>
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
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" type="fill" alpha="1" clip_to_extent="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleFill" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="255,255,255,255"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="128,128,128,255"/>
                    <Option type="QString" name="outline_style" value="no"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="style" value="solid"/>
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
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetGlobal="1" shadowBlendMode="6" shadowRadius="1.5" shadowOffsetDist="1" shadowOpacity="0.69999999999999996" shadowUnder="0" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" addDirectionSymbol="0" formatNumbers="0" decimals="3" autoWrapLength="0" placeDirectionSymbol="0" wrapChar="" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
          <placement quadOffset="4" placementFlags="10" priority="6" repeatDistanceUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" xOffset="0" rotationUnit="AngleDegrees" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" dist="0.5" rotationAngle="0" maxCurvedCharAngleIn="30" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="LineGeometry" layerType="LineGeometry" repeatDistance="300" yOffset="0" overrunDistanceUnit="MM" preserveRotation="0" offsetUnits="MM" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" geometryGeneratorEnabled="1" offsetType="0" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" centroidWhole="0" lineAnchorPercent="0.5" centroidInside="0" maxCurvedCharAngleOut="-30" placement="3" overrunDistance="0" distUnits="MM" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0"/>
          <rendering upsidedownLabels="0" zIndex="0" obstacle="0" fontMaxPixelSize="10000" scaleVisibility="0" unplacedVisibility="0" displayAll="0" fontLimitPixelSize="0" scaleMin="0" scaleMax="0" labelPerPart="0" obstacleFactor="2" maxNumLabels="2" minFeatureSize="20" fontMinPixelSize="3" mergeLines="1" limitNumLabels="0" drawLabels="1" obstacleType="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Show">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="coalesce(&quot;tamanho_txt&quot;, 7)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
              <Option type="int" name="blendMode" value="0"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
              <Option type="bool" name="drawToAllParts" value="false"/>
              <Option type="QString" name="enabled" value="0"/>
              <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
              <Option type="QString" name="lineSymbol" value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option type="double" name="minLength" value="0"/>
              <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="minLengthUnit" value="MM"/>
              <Option type="double" name="offsetFromAnchor" value="0"/>
              <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
              <Option type="double" name="offsetFromLabel" value="0"/>
              <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;situacao_em_poligono&quot; in (1) and &quot;rotular_carta_mini&quot; = 1" description="Trecho de drenagem" key="{34cdddf7-b0c7-4aea-b8a4-e8e7ecee19e7}">
        <settings calloutType="simple">
          <text-style fontUnderline="0" fontWordSpacing="0" textColor="0,160,223,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontKerning="1" textOpacity="1" legendString="Aa" fontSizeUnit="Point" fontItalic="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" useSubstitutions="0" fontWeight="50" textOrientation="horizontal" blendMode="0" previewBkgrdColor="255,255,255,255" capitalization="0" allowHtml="0" isExpression="0" fontFamily="Noto Sans" fontLetterSpacing="0" fieldName="texto_edicao" fontSize="6">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferJoinStyle="128" bufferNoFill="0" bufferSizeUnits="Point" bufferDraw="0" bufferSize="1" bufferColor="0,160,223,255" bufferOpacity="1">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
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
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="direction" value="ccw"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spec" value="rgb"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
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
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="10"/>
                    <Option type="QString" name="blur_method" value="1"/>
                    <Option type="QString" name="blur_unit" value="Pixel"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="1"/>
                    <Option type="QString" name="opacity" value="1"/>
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
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
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
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="direction" value="ccw"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spec" value="rgb"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
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
            <text-mask maskEnabled="1" maskJoinStyle="128" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_d92385eb_3e9d_412f_8f4d_c8b02a23b2de,{055b8edb-e294-45c0-aa6c-3244628fea0d},0,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},1,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},2,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},3,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},4,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},5,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},6,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},7,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},8,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},9,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},10,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},11,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},12,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},13,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},14,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},15,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},16,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},17,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},18,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},19,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},20,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},21,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},22,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},23,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},24,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},25,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},26,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},27,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},28,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},29,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},30,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},31,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},32,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},33,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},34,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},35,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},36,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},37,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},38,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},39,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},40,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},41,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},42,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},43,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},44,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},45,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},46,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},47,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},48,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},49,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},50,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},51,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},52,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},53,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},54,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},55,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},56,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},57,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},58,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},59,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},60,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},61,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},62,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},63,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},64,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},65,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},66,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},67,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},68,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},69,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},70,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},71,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},72,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},73,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},74,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},75,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},76,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},77,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},78,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},79,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},80,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},81,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},82,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},83,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},84,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},85,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},86,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},87,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},88,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},89,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},90,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},91,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},92,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},93,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},94,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},95,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},96,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},97,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},98,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},99,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},100,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},101,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},102,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},103,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},104,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},105,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},106,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},107,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},108,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},109,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},110,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},111,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},112,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},113,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},114,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},115,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},116,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},117,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},118,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},119,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},120,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},121,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},122,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},123,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},124,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},125,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},126,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},127,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},128,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},129,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},130,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},131,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},132,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},133,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},134,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},135,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},136,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},137,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},138,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},139,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},140,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},141,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},142,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},143,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},144,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},145,0;auxiliar_moldura_b226059a_5a12_433a_98bd_2820442e72d0,{8a918bbd-95af-4554-b58c-c2c4945d5351},146,0" maskSizeUnits="MM" maskType="0" maskSize="0.20000000000000001"/>
            <background shapeOffsetUnit="MM" shapeSizeX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRadiiY="0" shapeRadiiUnit="MM" shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeSizeY="0" shapeRotation="0" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOpacity="1" shapeSVGFile="" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeRadiiX="0" shapeDraw="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeType="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="114,155,111,255"/>
                    <Option type="QString" name="horizontal_anchor_point" value="1"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="name" value="circle"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="0,0,0,255"/>
                    <Option type="QString" name="outline_style" value="solid"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="scale_method" value="diameter"/>
                    <Option type="QString" name="size" value="2"/>
                    <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="size_unit" value="MM"/>
                    <Option type="QString" name="vertical_anchor_point" value="1"/>
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
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" type="fill" alpha="1" clip_to_extent="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleFill" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="255,255,255,255"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="128,128,128,255"/>
                    <Option type="QString" name="outline_style" value="no"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="style" value="solid"/>
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
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetGlobal="1" shadowBlendMode="6" shadowRadius="1.5" shadowOffsetDist="1" shadowOpacity="0.69999999999999996" shadowUnder="0" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" addDirectionSymbol="0" formatNumbers="0" decimals="3" autoWrapLength="0" placeDirectionSymbol="0" wrapChar="" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
          <placement quadOffset="4" placementFlags="10" priority="6" repeatDistanceUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" xOffset="0" rotationUnit="AngleDegrees" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" dist="0.5" rotationAngle="0" maxCurvedCharAngleIn="30" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="LineGeometry" layerType="LineGeometry" repeatDistance="300" yOffset="0" overrunDistanceUnit="MM" preserveRotation="0" offsetUnits="MM" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" geometryGeneratorEnabled="1" offsetType="0" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" centroidWhole="0" lineAnchorPercent="0.5" centroidInside="0" maxCurvedCharAngleOut="-30" placement="3" overrunDistance="0" distUnits="MM" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0"/>
          <rendering upsidedownLabels="0" zIndex="0" obstacle="0" fontMaxPixelSize="10000" scaleVisibility="0" unplacedVisibility="0" displayAll="0" fontLimitPixelSize="0" scaleMin="0" scaleMax="0" labelPerPart="0" obstacleFactor="2" maxNumLabels="2" minFeatureSize="20" fontMinPixelSize="3" mergeLines="1" limitNumLabels="0" drawLabels="1" obstacleType="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Show">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="coalesce(&quot;tamanho_txt&quot;, 6)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
              <Option type="int" name="blendMode" value="0"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
              <Option type="bool" name="drawToAllParts" value="false"/>
              <Option type="QString" name="enabled" value="0"/>
              <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
              <Option type="QString" name="lineSymbol" value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option type="double" name="minLength" value="0"/>
              <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="minLengthUnit" value="MM"/>
              <Option type="double" name="offsetFromAnchor" value="0"/>
              <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
              <Option type="double" name="offsetFromLabel" value="0"/>
              <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option type="List" name="dualview/previewExpressions">
        <Option type="QString" value="&quot;nome&quot;"/>
      </Option>
      <Option type="int" name="embeddedWidgets/count" value="0"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory penWidth="0" opacity="1" spacingUnit="MM" minimumSize="0" rotationOffset="270" lineSizeType="MM" labelPlacementMethod="XHeight" diagramOrientation="Up" width="15" sizeScale="3x:0,0,0,0,0,0" penAlpha="255" scaleBasedVisibility="0" backgroundAlpha="255" maxScaleDenominator="0" minScaleDenominator="0" penColor="#000000" sizeType="MM" spacingUnitScale="3x:0,0,0,0,0,0" scaleDependency="Area" lineSizeScale="3x:0,0,0,0,0,0" barWidth="5" enabled="0" height="15" backgroundColor="#ffffff" showAxis="1" direction="0" spacing="5">
      <fontProperties style="" description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0"/>
      <attribute field="" color="#000000" label=""/>
      <axisSymbol>
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="5;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="35,35,35,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.26"/>
              <Option type="QString" name="line_width_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="trim_distance_end" value="0"/>
              <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="trim_distance_end_unit" value="MM"/>
              <Option type="QString" name="trim_distance_start" value="0"/>
              <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="trim_distance_start_unit" value="MM"/>
              <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
              <Option type="QString" name="use_custom_dash" value="0"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" showAll="1" linePlacementFlags="18" zIndex="0" priority="0" placement="2" dist="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="nome">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tipo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="situacao_em_poligono">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="regime">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="texto_edicao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tamanho_txt">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="visivel">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="simbolizar_carta_mini">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="rotular_carta_mini">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="observacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="nome" index="1" name=""/>
    <alias field="tipo" index="2" name=""/>
    <alias field="situacao_em_poligono" index="3" name=""/>
    <alias field="regime" index="4" name=""/>
    <alias field="texto_edicao" index="5" name=""/>
    <alias field="tamanho_txt" index="6" name=""/>
    <alias field="visivel" index="7" name=""/>
    <alias field="simbolizar_carta_mini" index="8" name=""/>
    <alias field="rotular_carta_mini" index="9" name=""/>
    <alias field="observacao" index="10" name=""/>
  </aliases>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="nome" applyOnUpdate="0" expression=""/>
    <default field="tipo" applyOnUpdate="0" expression=""/>
    <default field="situacao_em_poligono" applyOnUpdate="0" expression=""/>
    <default field="regime" applyOnUpdate="0" expression=""/>
    <default field="texto_edicao" applyOnUpdate="0" expression=""/>
    <default field="tamanho_txt" applyOnUpdate="0" expression=""/>
    <default field="visivel" applyOnUpdate="0" expression=""/>
    <default field="simbolizar_carta_mini" applyOnUpdate="0" expression=""/>
    <default field="rotular_carta_mini" applyOnUpdate="0" expression=""/>
    <default field="observacao" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" notnull_strength="1" exp_strength="0" unique_strength="1" constraints="3"/>
    <constraint field="nome" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="tipo" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="situacao_em_poligono" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="regime" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="texto_edicao" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="tamanho_txt" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="visivel" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="simbolizar_carta_mini" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="rotular_carta_mini" notnull_strength="1" exp_strength="0" unique_strength="0" constraints="1"/>
    <constraint field="observacao" notnull_strength="0" exp_strength="0" unique_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="nome" exp="" desc=""/>
    <constraint field="tipo" exp="" desc=""/>
    <constraint field="situacao_em_poligono" exp="" desc=""/>
    <constraint field="regime" exp="" desc=""/>
    <constraint field="texto_edicao" exp="" desc=""/>
    <constraint field="tamanho_txt" exp="" desc=""/>
    <constraint field="visivel" exp="" desc=""/>
    <constraint field="simbolizar_carta_mini" exp="" desc=""/>
    <constraint field="rotular_carta_mini" exp="" desc=""/>
    <constraint field="observacao" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" hidden="0" width="-1" name="id"/>
      <column type="field" hidden="0" width="-1" name="nome"/>
      <column type="field" hidden="0" width="-1" name="tipo"/>
      <column type="field" hidden="0" width="-1" name="situacao_em_poligono"/>
      <column type="field" hidden="0" width="-1" name="regime"/>
      <column type="field" hidden="0" width="-1" name="texto_edicao"/>
      <column type="field" hidden="0" width="-1" name="tamanho_txt"/>
      <column type="field" hidden="0" width="-1" name="visivel"/>
      <column type="field" hidden="0" width="-1" name="simbolizar_carta_mini"/>
      <column type="field" hidden="0" width="-1" name="rotular_carta_mini"/>
      <column type="field" hidden="0" width="-1" name="observacao"/>
      <column type="actions" hidden="1" width="-1"/>
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
    <field editable="1" name="id"/>
    <field editable="1" name="nome"/>
    <field editable="1" name="observacao"/>
    <field editable="1" name="regime"/>
    <field editable="1" name="rotular_carta_mini"/>
    <field editable="1" name="simbolizar_carta_mini"/>
    <field editable="1" name="situacao_em_poligono"/>
    <field editable="1" name="tamanho_txt"/>
    <field editable="1" name="texto_edicao"/>
    <field editable="1" name="tipo"/>
    <field editable="1" name="visivel"/>
  </editable>
  <labelOnTop>
    <field name="id" labelOnTop="0"/>
    <field name="nome" labelOnTop="0"/>
    <field name="observacao" labelOnTop="0"/>
    <field name="regime" labelOnTop="0"/>
    <field name="rotular_carta_mini" labelOnTop="0"/>
    <field name="simbolizar_carta_mini" labelOnTop="0"/>
    <field name="situacao_em_poligono" labelOnTop="0"/>
    <field name="tamanho_txt" labelOnTop="0"/>
    <field name="texto_edicao" labelOnTop="0"/>
    <field name="tipo" labelOnTop="0"/>
    <field name="visivel" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="nome"/>
    <field reuseLastValue="0" name="observacao"/>
    <field reuseLastValue="0" name="regime"/>
    <field reuseLastValue="0" name="rotular_carta_mini"/>
    <field reuseLastValue="0" name="simbolizar_carta_mini"/>
    <field reuseLastValue="0" name="situacao_em_poligono"/>
    <field reuseLastValue="0" name="tamanho_txt"/>
    <field reuseLastValue="0" name="texto_edicao"/>
    <field reuseLastValue="0" name="tipo"/>
    <field reuseLastValue="0" name="visivel"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"nome"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
