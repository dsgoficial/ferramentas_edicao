<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" labelsEnabled="1" version="3.38.2-Grenoble">
  <renderer-v2 type="RuleRenderer" symbollevels="1" enableorderby="0" referencescale="-1" forceraster="0">
    <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
      <rule label="Visível" filter="&quot;visivel&quot; = 1" key="{47666e68-c08e-4a67-a5c4-20e9bccf8f2c}">
        <rule label="L10319A" description="Regime permanente" filter="&quot;regime&quot; in (0, 1) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" key="{dfbc5c66-20ad-4025-bd20-505153c8f05f}" symbol="0"/>
        <rule label="L10319B" filter="&quot;regime&quot; in (3, 5) and &quot;situacao_em_poligono&quot; not in (2, 3, 4) and &quot;tipo&quot; in (1,2,3)" key="{9fe301b7-3ba1-4416-8058-7acf2474d21d}" symbol="1"/>
        <rule label="Dentro de polígono" filter="&quot;situacao_em_poligono&quot; in (2, 3, 4) OR &quot;tipo&quot; = 4" key="{4a1d6d43-d959-4f13-af44-06764de76cc8}" symbol="2"/>
        <rule label="Outro" filter="ELSE" key="{fb8e6a60-73d2-41a7-87fc-2ec5e14cca86}" symbol="3"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="0" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{27909415-a314-4e0b-ae14-9bcfdf3b9d72}" class="SimpleLine" pass="1" enabled="1">
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
            <Option type="QString" value="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" name="line_color"/>
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
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="1" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{3cd8ccfa-92e9-48fa-b0b5-b7396ffc7fd3}" class="SimpleLine" pass="0" enabled="1">
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
            <Option type="QString" value="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" name="line_color"/>
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
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="2" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{0b0b2efe-92e8-4ce1-a2f3-c9428aaaae4b}" class="SimpleLine" pass="0" enabled="1">
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
            <Option type="QString" value="255,158,23,255,rgb:1,0.61960784313725492,0.09019607843137255,1" name="line_color"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="3" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{fcc38fe9-00e3-494c-84e4-216ce4303458}" class="SimpleLine" pass="0" enabled="1">
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
            <Option type="QString" value="255,0,0,255,rgb:1,0,0,1" name="line_color"/>
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
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{fe91ff75-c5df-4725-b9c8-a6046e361611}" class="SimpleLine" pass="0" enabled="1">
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
            <Option type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="rule-based">
    <rules key="{0b8beab6-4961-40c0-916b-52a1e1c83fba}">
      <rule description="Massa Dagua" filter="&quot;situacao_em_poligono&quot; in (2,3) and &quot;tipo&quot; != 4 and &quot;visivel&quot; = 1" key="{c66db265-3e89-4a31-98a9-fc894ebf0777}">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" forcedBold="0" fontSize="7" fieldName="texto_edicao" isExpression="0" textColor="0,173,240,255,rgb:0,0.67843137254901964,0.94117647058823528,1" tabStopDistance="80" fontWeight="50" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="1" fontStrikeout="0" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" tabStopDistanceUnit="Point" namedStyle="Italic" multilineHeightUnit="Percentage" capitalization="1" useSubstitutions="0" fontKerning="1" legendString="Aa" textOrientation="horizontal" blendMode="0" forcedItalic="0" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontUnderline="0" allowHtml="0" fontFamily="Noto Sans">
            <families/>
            <text-buffer bufferSizeUnits="Point" bufferOpacity="1" bufferNoFill="0" bufferColor="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" bufferJoinStyle="128" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferSize="1">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option type="QString" value="13" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="135" name="offset_angle"/>
                    <Option type="QString" value="2" name="offset_distance"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                    <Option type="QString" value="1" name="opacity"/>
                  </Option>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option type="QString" value="0" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,255,255,rgb:0,0,1,1" name="color1"/>
                    <Option type="QString" value="0,255,0,255,rgb:0,1,0,1" name="color2"/>
                    <Option type="QString" value="0" name="color_type"/>
                    <Option type="QString" value="ccw" name="direction"/>
                    <Option type="QString" value="0" name="discrete"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="0.5" name="opacity"/>
                    <Option type="QString" value="gradient" name="rampType"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="single_color"/>
                    <Option type="QString" value="rgb" name="spec"/>
                    <Option type="QString" value="2" name="spread"/>
                    <Option type="QString" value="MM" name="spread_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
                  </Option>
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
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option type="QString" value="13" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="135" name="offset_angle"/>
                    <Option type="QString" value="2" name="offset_distance"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                    <Option type="QString" value="1" name="opacity"/>
                  </Option>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option type="QString" value="0" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,255,255,rgb:0,0,1,1" name="color1"/>
                    <Option type="QString" value="0,255,0,255,rgb:0,1,0,1" name="color2"/>
                    <Option type="QString" value="0" name="color_type"/>
                    <Option type="QString" value="ccw" name="direction"/>
                    <Option type="QString" value="0" name="discrete"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="0.5" name="opacity"/>
                    <Option type="QString" value="gradient" name="rampType"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="single_color"/>
                    <Option type="QString" value="rgb" name="spec"/>
                    <Option type="QString" value="2" name="spread"/>
                    <Option type="QString" value="MM" name="spread_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
                  </Option>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskOpacity="1" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;infra_vala_l_7ede732b_2965_4761_bea9_f09bf9259c66;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;infra_elemento_energia_l_4368b0e4_d9fd_4646_a037_ce18e441e1cc;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;infra_elemento_energia_l_d9ea2082_132e_4d35_bed0_9858c3690b2d;{55443dbb-5588-491b-806e-c165a9ee63be};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{d46e11c5-e2c8-43b0-b40d-ca8464ccaed8};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{905c7a3d-a943-46c3-a6fe-de89f16987d2};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{04f50f0d-2162-453c-98ef-99552440b9f3};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{0334b6c2-617a-4158-b3b6-4e0cd3130f34};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{fd703f84-f4af-47a1-8ba7-4f8498dc7ce2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d2b65364-35c6-4a8d-9f43-43dea3b2cca9};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{21a771cc-d8cf-4fc2-ad5c-354efe7e5ff1};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{06e9fc24-7f02-4100-bcc4-b75bcb74135d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d3da1359-7219-497c-b573-e05d509228f2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{372e9081-2c3b-4da8-a12b-a555eb3e7f7d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5d2622ce-de2e-441a-a618-cc5ffffad26f};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c992dca7-51b8-4597-9a84-fea32a7b7780};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{b1e4f26a-f3c8-4a4e-a5f2-4c2a7f6cd5b2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{0ab34468-16dd-42b8-b478-ab07e8921545};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{033605bd-d82d-4246-9781-35f509256df6};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{32dac937-c841-4c15-ba47-03d80cc01c51};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{565d5f36-35a7-4102-b85a-4a6d43885500};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{06f7133d-9daf-45fc-948a-718c223258e8};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{1e9ea483-4e5f-4cd6-9c46-a4936e6ada61};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{783a92ce-bc8e-4340-bf2e-cc8bfed2ecb5};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5dd878b2-c824-4981-96f2-49c204c9a661};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{cb18c5a6-58bf-4436-a4e8-e4b10a135d40};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ed8489f1-b291-4be4-82ee-b70b44ade527};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f7145199-da1d-4589-a81a-8b30bb23e222};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{9451fcdb-c0db-430c-b2f5-3f9457fbcaee};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{2d9fe75c-7ee6-41bb-84eb-3137e4209b4e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{16bd339f-1b1c-47e9-a50e-d39b7892e354};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ec59d252-512f-4d88-b6a2-c746aeec74c0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{e470c9ed-26a4-4eab-8d78-8ee5f2a85367};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{db90d97f-612c-4f57-8b2b-74a40262a343};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d633f748-5802-4a4b-8a83-d1cc06e79f47};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{073e7c2d-53d6-4298-b6c9-027f15b47ccf};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{0f1ae589-2795-4c69-ac8f-219e50c09979};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{86353edb-f4c5-43dc-8cd3-3ff70c926e3f};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{24959168-bfd6-49f5-b0eb-2928c40494ac};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{af2343f1-adef-43bd-ba9d-4096c92b0850};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7f4d5a88-9ad5-4ead-abff-166022c5ab10};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7407bf40-c7be-4d63-8d34-1088be8fc675};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{13ad9613-fd3e-4710-b3a4-aa5f80dccb2d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3fcf1708-2c7e-4c53-a44b-6495f184261b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{607b8cb2-1202-42ea-8bde-c6fa09363da0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f9a87b2c-d8f5-453c-ac7e-12d14806723e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{08f79cce-6c0d-4c23-a1fc-7d705be642e0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c4685d15-bcee-4d4e-afa5-7625227f8c75};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{08c7b17c-74fe-4240-877a-d03bf5c788b0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{cb713790-60a9-42f0-96f9-5e978d74cdb4};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f75d6f4c-3ebf-47fd-8ef5-5de068c5c82c};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{15dce511-bf84-4a4f-87e6-81e89833efd0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c4059f5a-d625-4cb9-87d0-474e1ae05467};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d823b4aa-6483-4871-8e55-076e71bd4e5c};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c6eb29bc-0d65-4714-b1fc-cc05ab371b63};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f2364c5b-faaa-4336-9ff2-b12426fc282b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{9f28d7a6-4b41-495d-a054-4f15c1e38685};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{b2975b21-6ebf-41ce-86e7-e39139465736};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{824ccb70-3269-418a-b0b7-640fda9ab63d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d4010dfd-68fb-43d7-9318-29bb59497b03};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d273ae01-965d-4129-b02c-33413e06984e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{fabe0cb6-c898-4832-b863-be2a82f55bbc};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{954d11c3-7ccc-4c70-bb92-78652d79ce1e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{8ba6b144-6f13-407c-96b3-5f09f9fc0634};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{1387fea6-5e82-4405-8dc1-b961a13441d3};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{394285e7-d81b-4ebf-a74f-88250af64f74};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7a8b6beb-63a4-45d4-bd5b-b1dab4561aee};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{8ddbd52e-142e-48a1-8e44-44e304a40640};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3af28ca4-5445-44ba-ac94-4518fc479f5b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{15efee61-898b-4901-a2d5-09d0dd1d253e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ab0f2b29-dea6-4930-bf79-45aa24338596};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{544c48c1-e23a-42c3-b7fe-afe67b1c48a6};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c80ee1ea-676e-4663-874b-6cae62adeb8b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{2d691d96-c348-4e29-be60-b244d0207a18};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{33e12db8-182a-4afd-8491-33acdd2a83f8};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{0b65ee7d-5379-425d-bde2-4b3de8a2c0a9};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{4668bc0c-1e36-43c3-a30a-8e515b3027a0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{79863f66-3d2f-4726-9441-2ab1e1bd4974};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3589aa05-07e6-4206-a60f-9b667147b6c9};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{dd1bd0ab-759b-40a6-acd1-d203f5b6fe1e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5fd32375-ac51-486b-a53e-2c621c7fd273};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{4f269890-75f6-4915-b0e1-16f204dd6028};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{24b7c20d-0937-4729-a1a7-ece4af742ce2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3aacf9a0-612f-4641-899e-1f0034514910};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7bfc8d32-6896-4770-8838-62abd6423f08};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{fd3140f1-46c6-48ec-8a77-beead1bebf24};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ce991860-4241-4691-9c93-c26b94cf292c};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{2056498d-90d7-455e-890f-868d5d5c44fd};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{be7454b1-df9c-4205-8262-3d0de6087673};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5a79dbf4-3ab9-4c87-a13a-2786227f89fb};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3807ab5b-5a0c-412b-ad3d-859a80a517d4};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{a48c8189-a7de-42d0-8cd1-6fec1c2f522d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ed2e2db4-3498-4486-bba0-72678859ad25};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{e1404f6b-541e-4a71-aff5-972d46afdc4c};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{233d7f41-40fb-4b14-bb13-5cce02418f5e};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{372757a6-455e-43b8-862e-9797836cb71a};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{165e7c93-c278-45a2-976a-06e413af515b};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{8f65ded6-92be-4fac-9eaa-bfd602bb00e7};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{0618242d-1cb3-4427-aac5-465bb77ea819};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{070b0970-6541-4445-8414-ccd534098dcb};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{9a667f22-71ec-4d38-9637-83ae6177ec6b};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{dee08b61-4608-475a-9782-5594764d543e};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{0686ee45-c89e-474e-a5d6-948b7c78ad93};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{e6259116-da72-4347-a521-0721d2061043};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{d6859912-8ea9-4d67-b200-819676876f78};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{44de592f-61bc-499a-ac40-202d9f488fa0};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{00270962-397d-4af0-9658-4e5d2d91e28c};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{f89a655b-5e6d-4907-9d3a-134278e34fc5};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{83d7bee2-8f7d-4f92-878b-418261f67ff6};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{cf64f962-23e3-4da6-a17d-9844ce41e5ff};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{ad369d20-4a38-4f6a-8219-b097ca2be455};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{91b172fa-45f7-4845-ad9b-e04fdbb8cfd9};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{1217dbc2-c4ff-46af-98ef-c13cd0b23406};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{6d01998e-116f-4269-ba7e-ccd826aa890a};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{22b62fa0-adf9-41c2-95e1-82f5b2771569};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{39d48e77-d472-45d9-98bb-f908a67e1a5f};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{bea70472-e446-49f0-9c3f-86521c99a765};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{ca25ed94-6bef-4aa6-85e1-54d7ed0205c3};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{cf8c25ab-9252-4f81-84d1-61b6706bd0e3};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{e3c98634-1ef7-4d12-80b6-f33208a1771d};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{3e029e79-e4bf-49ef-bd58-8ac8ec7ee8e6};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{e0c18a02-afbe-443e-a670-fea11e537f52};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{f468618b-ffcf-490a-99f3-5e7ac2b014d3};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{73444d8b-fc97-4c31-bb3f-4514001125dd};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{aab9ad0e-9479-49d8-a5ef-4adc05631e56};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{b9051e21-6c3d-436e-8f03-12eb57e2d11a};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{9e4ae193-95f5-4ced-93b8-8d541a9f8b18};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{d2f165be-e6d8-4a8c-ad62-1b692a94a549};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{a235e7b6-e2c0-4bb1-8ad9-311e3e6d5bc0};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{5798f36b-116c-4637-9b69-060c4d32c367};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{5aa324b2-f7d9-49b9-9e8f-5b626f7eeba2};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{2bcb4a7f-e207-4229-beec-dbf01ee16b8e};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{0d945229-4191-4198-8a75-896e79c07097};infra_vala_l_90aeeab2_a98e_4cca_b72b_f5ea260182bc;{31c3e0d0-673c-4697-8daa-473b1611e470}" maskJoinStyle="128" maskType="0" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="0.20000000000000001" maskSizeUnits="MM"/>
            <background shapeSVGFile="" shapeOpacity="1" shapeRadiiX="0" shapeRadiiUnit="MM" shapeType="0" shapeOffsetX="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSizeX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeOffsetY="0" shapeBlendMode="0" shapeRadiiY="0" shapeRotation="0">
              <symbol alpha="1" is_animated="0" type="marker" force_rhr="0" name="markerSymbol" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="114,155,111,255,rgb:0.44705882352941179,0.60784313725490191,0.43529411764705883,1" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
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
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" is_animated="0" type="fill" force_rhr="0" name="fillSymbol" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
                  </Option>
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
            <shadow shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetGlobal="1" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowScale="100" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" formatNumbers="0" multilineAlign="0" wrapChar="" leftDirectionSymbol="&lt;" autoWrapLength="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" placeDirectionSymbol="0" useMaxLineLengthForAutoWrap="1"/>
          <placement maxCurvedCharAngleIn="30" xOffset="0" priority="6" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" maximumDistanceUnit="MM" prioritization="PreferCloser" quadOffset="4" preserveRotation="0" geometryGeneratorType="LineGeometry" layerType="LineGeometry" repeatDistance="300" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-30" rotationUnit="AngleDegrees" polygonPlacementFlags="2" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" lineAnchorType="0" placement="3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" allowDegraded="0" lineAnchorTextPoint="CenterOfText" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetUnits="MM" centroidInside="0" geometryGeneratorEnabled="1" repeatDistanceUnits="MM" centroidWhole="0" lineAnchorClipping="0" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" lineAnchorPercent="0.5" maximumDistance="0" yOffset="0" overlapHandling="PreventOverlap" offsetType="0" dist="0.5" placementFlags="10" overrunDistance="0"/>
          <rendering obstacleType="0" zIndex="0" unplacedVisibility="0" fontMaxPixelSize="10000" scaleMin="0" scaleMax="0" limitNumLabels="0" labelPerPart="0" scaleVisibility="0" mergeLines="1" upsidedownLabels="0" obstacleFactor="1" fontMinPixelSize="3" obstacle="1" maxNumLabels="2" minFeatureSize="20" drawLabels="1" fontLimitPixelSize="0"/>
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
              <Option type="QString" value="&lt;symbol alpha=&quot;1&quot; is_animated=&quot;0&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{e0bbd391-9907-427d-b094-f7275d7aca92}&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
      <rule description="Trecho de drenagem" filter="&quot;situacao_em_poligono&quot; in (1) and &quot;tipo&quot; != 4 and &quot;visivel&quot; = 1" key="{623e9ce8-c53e-4329-a7b7-e76bb486630e}">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" forcedBold="0" fontSize="6" fieldName="texto_edicao" isExpression="0" textColor="0,173,240,255,rgb:0,0.67843137254901964,0.94117647058823528,1" tabStopDistance="80" fontWeight="50" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="1" fontStrikeout="0" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" tabStopDistanceUnit="Point" namedStyle="Condensed Italic" multilineHeightUnit="Percentage" capitalization="0" useSubstitutions="0" fontKerning="1" legendString="Aa" textOrientation="horizontal" blendMode="0" forcedItalic="0" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontUnderline="0" allowHtml="0" fontFamily="Noto Sans">
            <families/>
            <text-buffer bufferSizeUnits="Point" bufferOpacity="1" bufferNoFill="0" bufferColor="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" bufferJoinStyle="128" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferSize="1">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option type="QString" value="13" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="135" name="offset_angle"/>
                    <Option type="QString" value="2" name="offset_distance"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                    <Option type="QString" value="1" name="opacity"/>
                  </Option>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option type="QString" value="0" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,255,255,rgb:0,0,1,1" name="color1"/>
                    <Option type="QString" value="0,255,0,255,rgb:0,1,0,1" name="color2"/>
                    <Option type="QString" value="0" name="color_type"/>
                    <Option type="QString" value="ccw" name="direction"/>
                    <Option type="QString" value="0" name="discrete"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="0.5" name="opacity"/>
                    <Option type="QString" value="gradient" name="rampType"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="single_color"/>
                    <Option type="QString" value="rgb" name="spec"/>
                    <Option type="QString" value="2" name="spread"/>
                    <Option type="QString" value="MM" name="spread_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
                  </Option>
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
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option type="QString" value="13" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="135" name="offset_angle"/>
                    <Option type="QString" value="2" name="offset_distance"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                    <Option type="QString" value="1" name="opacity"/>
                  </Option>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option type="QString" value="0" name="blend_mode"/>
                    <Option type="QString" value="2.645" name="blur_level"/>
                    <Option type="QString" value="MM" name="blur_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                    <Option type="QString" value="0,0,255,255,rgb:0,0,1,1" name="color1"/>
                    <Option type="QString" value="0,255,0,255,rgb:0,1,0,1" name="color2"/>
                    <Option type="QString" value="0" name="color_type"/>
                    <Option type="QString" value="ccw" name="direction"/>
                    <Option type="QString" value="0" name="discrete"/>
                    <Option type="QString" value="2" name="draw_mode"/>
                    <Option type="QString" value="0" name="enabled"/>
                    <Option type="QString" value="0.5" name="opacity"/>
                    <Option type="QString" value="gradient" name="rampType"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="single_color"/>
                    <Option type="QString" value="rgb" name="spec"/>
                    <Option type="QString" value="2" name="spread"/>
                    <Option type="QString" value="MM" name="spread_unit"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
                  </Option>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskOpacity="1" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;infra_vala_l_7ede732b_2965_4761_bea9_f09bf9259c66;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;infra_elemento_energia_l_4368b0e4_d9fd_4646_a037_ce18e441e1cc;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;infra_elemento_energia_l_d9ea2082_132e_4d35_bed0_9858c3690b2d;{55443dbb-5588-491b-806e-c165a9ee63be};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{d46e11c5-e2c8-43b0-b40d-ca8464ccaed8};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{905c7a3d-a943-46c3-a6fe-de89f16987d2};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{04f50f0d-2162-453c-98ef-99552440b9f3};llp_delimitacao_fisica_l_bf9c7b0b_c089_4f51_ba0a_9533e825208a;{0334b6c2-617a-4158-b3b6-4e0cd3130f34};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{fd703f84-f4af-47a1-8ba7-4f8498dc7ce2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d2b65364-35c6-4a8d-9f43-43dea3b2cca9};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{21a771cc-d8cf-4fc2-ad5c-354efe7e5ff1};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{06e9fc24-7f02-4100-bcc4-b75bcb74135d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d3da1359-7219-497c-b573-e05d509228f2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{372e9081-2c3b-4da8-a12b-a555eb3e7f7d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5d2622ce-de2e-441a-a618-cc5ffffad26f};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c992dca7-51b8-4597-9a84-fea32a7b7780};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{b1e4f26a-f3c8-4a4e-a5f2-4c2a7f6cd5b2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{0ab34468-16dd-42b8-b478-ab07e8921545};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{033605bd-d82d-4246-9781-35f509256df6};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{32dac937-c841-4c15-ba47-03d80cc01c51};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{565d5f36-35a7-4102-b85a-4a6d43885500};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{06f7133d-9daf-45fc-948a-718c223258e8};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{1e9ea483-4e5f-4cd6-9c46-a4936e6ada61};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{783a92ce-bc8e-4340-bf2e-cc8bfed2ecb5};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5dd878b2-c824-4981-96f2-49c204c9a661};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{cb18c5a6-58bf-4436-a4e8-e4b10a135d40};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ed8489f1-b291-4be4-82ee-b70b44ade527};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f7145199-da1d-4589-a81a-8b30bb23e222};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{9451fcdb-c0db-430c-b2f5-3f9457fbcaee};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{2d9fe75c-7ee6-41bb-84eb-3137e4209b4e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{16bd339f-1b1c-47e9-a50e-d39b7892e354};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ec59d252-512f-4d88-b6a2-c746aeec74c0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{e470c9ed-26a4-4eab-8d78-8ee5f2a85367};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{db90d97f-612c-4f57-8b2b-74a40262a343};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d633f748-5802-4a4b-8a83-d1cc06e79f47};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{073e7c2d-53d6-4298-b6c9-027f15b47ccf};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{0f1ae589-2795-4c69-ac8f-219e50c09979};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{86353edb-f4c5-43dc-8cd3-3ff70c926e3f};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{24959168-bfd6-49f5-b0eb-2928c40494ac};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{af2343f1-adef-43bd-ba9d-4096c92b0850};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7f4d5a88-9ad5-4ead-abff-166022c5ab10};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7407bf40-c7be-4d63-8d34-1088be8fc675};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{13ad9613-fd3e-4710-b3a4-aa5f80dccb2d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3fcf1708-2c7e-4c53-a44b-6495f184261b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{607b8cb2-1202-42ea-8bde-c6fa09363da0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f9a87b2c-d8f5-453c-ac7e-12d14806723e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{08f79cce-6c0d-4c23-a1fc-7d705be642e0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c4685d15-bcee-4d4e-afa5-7625227f8c75};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{08c7b17c-74fe-4240-877a-d03bf5c788b0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{cb713790-60a9-42f0-96f9-5e978d74cdb4};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f75d6f4c-3ebf-47fd-8ef5-5de068c5c82c};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{15dce511-bf84-4a4f-87e6-81e89833efd0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c4059f5a-d625-4cb9-87d0-474e1ae05467};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d823b4aa-6483-4871-8e55-076e71bd4e5c};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c6eb29bc-0d65-4714-b1fc-cc05ab371b63};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{f2364c5b-faaa-4336-9ff2-b12426fc282b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{9f28d7a6-4b41-495d-a054-4f15c1e38685};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{b2975b21-6ebf-41ce-86e7-e39139465736};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{824ccb70-3269-418a-b0b7-640fda9ab63d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d4010dfd-68fb-43d7-9318-29bb59497b03};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{d273ae01-965d-4129-b02c-33413e06984e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{fabe0cb6-c898-4832-b863-be2a82f55bbc};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{954d11c3-7ccc-4c70-bb92-78652d79ce1e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{8ba6b144-6f13-407c-96b3-5f09f9fc0634};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{1387fea6-5e82-4405-8dc1-b961a13441d3};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{394285e7-d81b-4ebf-a74f-88250af64f74};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7a8b6beb-63a4-45d4-bd5b-b1dab4561aee};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{8ddbd52e-142e-48a1-8e44-44e304a40640};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3af28ca4-5445-44ba-ac94-4518fc479f5b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{15efee61-898b-4901-a2d5-09d0dd1d253e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ab0f2b29-dea6-4930-bf79-45aa24338596};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{544c48c1-e23a-42c3-b7fe-afe67b1c48a6};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{c80ee1ea-676e-4663-874b-6cae62adeb8b};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{2d691d96-c348-4e29-be60-b244d0207a18};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{33e12db8-182a-4afd-8491-33acdd2a83f8};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{0b65ee7d-5379-425d-bde2-4b3de8a2c0a9};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{4668bc0c-1e36-43c3-a30a-8e515b3027a0};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{79863f66-3d2f-4726-9441-2ab1e1bd4974};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3589aa05-07e6-4206-a60f-9b667147b6c9};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{dd1bd0ab-759b-40a6-acd1-d203f5b6fe1e};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5fd32375-ac51-486b-a53e-2c621c7fd273};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{4f269890-75f6-4915-b0e1-16f204dd6028};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{24b7c20d-0937-4729-a1a7-ece4af742ce2};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3aacf9a0-612f-4641-899e-1f0034514910};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{7bfc8d32-6896-4770-8838-62abd6423f08};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{fd3140f1-46c6-48ec-8a77-beead1bebf24};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ce991860-4241-4691-9c93-c26b94cf292c};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{2056498d-90d7-455e-890f-868d5d5c44fd};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{be7454b1-df9c-4205-8262-3d0de6087673};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{5a79dbf4-3ab9-4c87-a13a-2786227f89fb};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{3807ab5b-5a0c-412b-ad3d-859a80a517d4};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{a48c8189-a7de-42d0-8cd1-6fec1c2f522d};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{ed2e2db4-3498-4486-bba0-72678859ad25};infra_ferrovia_l_af950813_b144_4b8e_8605_e2b7a72c3bef;{e1404f6b-541e-4a71-aff5-972d46afdc4c};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{233d7f41-40fb-4b14-bb13-5cce02418f5e};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{372757a6-455e-43b8-862e-9797836cb71a};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{165e7c93-c278-45a2-976a-06e413af515b};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{8f65ded6-92be-4fac-9eaa-bfd602bb00e7};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{0618242d-1cb3-4427-aac5-465bb77ea819};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{070b0970-6541-4445-8414-ccd534098dcb};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{9a667f22-71ec-4d38-9637-83ae6177ec6b};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{dee08b61-4608-475a-9782-5594764d543e};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{0686ee45-c89e-474e-a5d6-948b7c78ad93};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{e6259116-da72-4347-a521-0721d2061043};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{d6859912-8ea9-4d67-b200-819676876f78};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{44de592f-61bc-499a-ac40-202d9f488fa0};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{00270962-397d-4af0-9658-4e5d2d91e28c};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{f89a655b-5e6d-4907-9d3a-134278e34fc5};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{83d7bee2-8f7d-4f92-878b-418261f67ff6};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{cf64f962-23e3-4da6-a17d-9844ce41e5ff};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{ad369d20-4a38-4f6a-8219-b097ca2be455};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{91b172fa-45f7-4845-ad9b-e04fdbb8cfd9};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{1217dbc2-c4ff-46af-98ef-c13cd0b23406};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{6d01998e-116f-4269-ba7e-ccd826aa890a};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{22b62fa0-adf9-41c2-95e1-82f5b2771569};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{39d48e77-d472-45d9-98bb-f908a67e1a5f};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{bea70472-e446-49f0-9c3f-86521c99a765};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{ca25ed94-6bef-4aa6-85e1-54d7ed0205c3};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{cf8c25ab-9252-4f81-84d1-61b6706bd0e3};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{e3c98634-1ef7-4d12-80b6-f33208a1771d};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{3e029e79-e4bf-49ef-bd58-8ac8ec7ee8e6};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{e0c18a02-afbe-443e-a670-fea11e537f52};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{f468618b-ffcf-490a-99f3-5e7ac2b014d3};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{73444d8b-fc97-4c31-bb3f-4514001125dd};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{aab9ad0e-9479-49d8-a5ef-4adc05631e56};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{b9051e21-6c3d-436e-8f03-12eb57e2d11a};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{9e4ae193-95f5-4ced-93b8-8d541a9f8b18};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{d2f165be-e6d8-4a8c-ad62-1b692a94a549};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{a235e7b6-e2c0-4bb1-8ad9-311e3e6d5bc0};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{5798f36b-116c-4637-9b69-060c4d32c367};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{5aa324b2-f7d9-49b9-9e8f-5b626f7eeba2};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{2bcb4a7f-e207-4229-beec-dbf01ee16b8e};infra_via_deslocamento_l_81dc081c_22f1_47f4_83ee_e215edbc1d1a;{0d945229-4191-4198-8a75-896e79c07097};infra_vala_l_90aeeab2_a98e_4cca_b72b_f5ea260182bc;{31c3e0d0-673c-4697-8daa-473b1611e470}" maskJoinStyle="128" maskType="0" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="0.20000000000000001" maskSizeUnits="MM"/>
            <background shapeSVGFile="" shapeOpacity="1" shapeRadiiX="0" shapeRadiiUnit="MM" shapeType="0" shapeOffsetX="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSizeX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeOffsetY="0" shapeBlendMode="0" shapeRadiiY="0" shapeRotation="0">
              <symbol alpha="1" is_animated="0" type="marker" force_rhr="0" name="markerSymbol" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="114,155,111,255,rgb:0.44705882352941179,0.60784313725490191,0.43529411764705883,1" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
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
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" is_animated="0" type="fill" force_rhr="0" name="fillSymbol" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
                  </Option>
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
            <shadow shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetGlobal="1" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowScale="100" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" formatNumbers="0" multilineAlign="0" wrapChar="" leftDirectionSymbol="&lt;" autoWrapLength="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" placeDirectionSymbol="0" useMaxLineLengthForAutoWrap="1"/>
          <placement maxCurvedCharAngleIn="30" xOffset="0" priority="6" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" maximumDistanceUnit="MM" prioritization="PreferCloser" quadOffset="4" preserveRotation="0" geometryGeneratorType="LineGeometry" layerType="LineGeometry" repeatDistance="300" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-30" rotationUnit="AngleDegrees" polygonPlacementFlags="2" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" lineAnchorType="0" placement="3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" allowDegraded="0" lineAnchorTextPoint="CenterOfText" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetUnits="MM" centroidInside="0" geometryGeneratorEnabled="1" repeatDistanceUnits="MM" centroidWhole="0" lineAnchorClipping="0" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" lineAnchorPercent="0.5" maximumDistance="0" yOffset="0" overlapHandling="PreventOverlap" offsetType="0" dist="0.5" placementFlags="10" overrunDistance="0"/>
          <rendering obstacleType="0" zIndex="0" unplacedVisibility="0" fontMaxPixelSize="10000" scaleMin="0" scaleMax="0" limitNumLabels="0" labelPerPart="0" scaleVisibility="0" mergeLines="1" upsidedownLabels="0" obstacleFactor="2" fontMinPixelSize="3" obstacle="0" maxNumLabels="2" minFeatureSize="20" drawLabels="1" fontLimitPixelSize="0"/>
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
              <Option type="QString" value="&lt;symbol alpha=&quot;1&quot; is_animated=&quot;0&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{6a224443-a734-4923-b30d-cead4c7522ce}&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
