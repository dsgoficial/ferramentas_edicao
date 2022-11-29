<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 forceraster="0" type="mergedFeatureRenderer" symbollevels="0" referencescale="-1" enableorderby="0">
    <renderer-v2 forceraster="0" type="RuleRenderer" symbollevels="0" referencescale="-1" enableorderby="0">
      <rules key="{43626dff-bb69-4cd6-a9bf-d195403f9a3f}">
        <rule key="{e47bca0f-c81b-4e27-9382-f1a56eb62daf}" filter="&quot;visivel&quot; = 1">
          <rule key="{86fb18eb-736c-475c-b792-d9efe7fee37c}" symbol="0" filter="ELSE"/>
          <rule key="{90c27566-86ba-41c6-8463-c154ed70aefa}" label="L11105AH" symbol="1" filter="situacao_fisica in (0,3) and bitola in (1,4,5) and eletrificada = 2 and nr_linhas in (0,1)  and em_arruamento = 2 and tipo = 7"/>
        </rule>
      </rules>
      <symbols>
        <symbol type="line" clip_to_extent="1" name="0" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer pass="0" enabled="1" class="SimpleLine" locked="0">
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
              <Option type="QString" name="line_color" value="255,5,1,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="1.86"/>
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
            <prop v="255,5,1,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="1.86" k="line_width"/>
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
        <symbol type="line" clip_to_extent="1" name="1" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer pass="0" enabled="1" class="MarkerLine" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="12.8"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="9.6"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="12.8" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="9.6" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="true" k="place_on_every_part"/>
            <prop v="Interval" k="placements"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol type="marker" clip_to_extent="1" name="@1@0" alpha="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="255,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="line"/>
                  <Option type="QString" name="offset" value="0,0.375"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="0,0,0,255"/>
                  <Option type="QString" name="outline_style" value="solid"/>
                  <Option type="QString" name="outline_width" value="0.4"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.75"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="255,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="line" k="name"/>
                <prop v="0,0.375" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="0,0,0,255" k="outline_color"/>
                <prop v="solid" k="outline_style"/>
                <prop v="0.4" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.75" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('cinza-07_224-224-224_#E0E0E0')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('cinza-07_224-224-224_#E0E0E0')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                    </Option>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer pass="0" enabled="1" class="MarkerLine" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="12.8"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="3.2"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="12.8" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3.2" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="true" k="place_on_every_part"/>
            <prop v="Interval" k="placements"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol type="marker" clip_to_extent="1" name="@1@1" alpha="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="255,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="line"/>
                  <Option type="QString" name="offset" value="0,-0.375"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="0,0,0,255"/>
                  <Option type="QString" name="outline_style" value="solid"/>
                  <Option type="QString" name="outline_width" value="0.4"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.75"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="255,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="line" k="name"/>
                <prop v="0,-0.375" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="0,0,0,255" k="outline_color"/>
                <prop v="solid" k="outline_style"/>
                <prop v="0.4" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.75" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('cinza-07_224-224-224_#E0E0E0')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('cinza-07_224-224-224_#E0E0E0')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                    </Option>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer pass="0" enabled="1" class="SimpleLine" locked="0">
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
              <Option type="QString" name="line_color" value="0,0,0,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.3"/>
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
            <prop v="0,0,0,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.3" k="line_width"/>
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
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('preto-0_0-0-0_#000000')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer pass="0" enabled="1" class="MarkerLine" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="12.8"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="9.6"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="12.8" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="9.6" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="true" k="place_on_every_part"/>
            <prop v="Interval" k="placements"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol type="marker" clip_to_extent="1" name="@1@3" alpha="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="255,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="line"/>
                  <Option type="QString" name="offset" value="0,0.375"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="0,0,0,255"/>
                  <Option type="QString" name="outline_style" value="solid"/>
                  <Option type="QString" name="outline_width" value="0.15"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.75"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="255,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="line" k="name"/>
                <prop v="0,0.375" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="0,0,0,255" k="outline_color"/>
                <prop v="solid" k="outline_style"/>
                <prop v="0.15" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.75" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-0_0-0-0_#000000')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-0_0-0-0_#000000')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                    </Option>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer pass="0" enabled="1" class="MarkerLine" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="12.8"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="3.2"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="12.8" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3.2" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="true" k="place_on_every_part"/>
            <prop v="Interval" k="placements"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol type="marker" clip_to_extent="1" name="@1@4" alpha="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="255,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="line"/>
                  <Option type="QString" name="offset" value="0,-0.375"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="0,0,0,255"/>
                  <Option type="QString" name="outline_style" value="solid"/>
                  <Option type="QString" name="outline_width" value="0.15"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.75"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="255,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="line" k="name"/>
                <prop v="0,-0.375" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="0,0,0,255" k="outline_color"/>
                <prop v="solid" k="outline_style"/>
                <prop v="0.15" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.75" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-0_0-0-0_#000000')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-0_0-0-0_#000000')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                    </Option>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{7eb0101d-ab80-4763-acde-7892f45d7976}">
      <rule key="{df8e5695-a634-4cb0-b166-43d5e7890911}" filter="&quot;visivel&quot; = 1">
        <rule key="{b9e7abe5-a272-4a6b-ae96-31023202c7ad}" filter="situacao_fisica in (0,3) and bitola in (1,4,5) and eletrificada = 2 and nr_linhas in (0,1)  and em_arruamento = 2 and tipo = 7">
          <settings calloutType="simple">
            <text-style fontFamily="Noto Sans" allowHtml="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWeight="25" fontLetterSpacing="0" capitalization="0" blendMode="0" textOpacity="1" fontSizeUnit="Point" fontKerning="1" fontStrikeout="0" namedStyle="Condensed Light Italic" textColor="50,50,50,255" multilineHeight="1" fontItalic="1" isExpression="0" fontUnderline="0" fieldName="nome" fontWordSpacing="0" legendString="Aa" useSubstitutions="0" fontSize="10" previewBkgrdColor="255,255,255,255" textOrientation="horizontal">
              <families/>
              <text-buffer bufferSizeUnits="MM" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferDraw="0" bufferOpacity="1" bufferNoFill="1" bufferSize="1" bufferColor="250,250,250,255"/>
              <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers="" maskEnabled="0" maskSizeUnits="MM" maskJoinStyle="128" maskSize="0" maskType="0"/>
              <background shapeBorderWidth="0" shapeSizeY="0" shapeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="Point" shapeRadiiX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="Point" shapeSizeUnit="Point" shapeSVGFile="" shapeRadiiY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeOffsetY="0" shapeSizeType="0" shapeOpacity="1" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeSizeX="0" shapeRotation="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
                <symbol type="marker" clip_to_extent="1" name="markerSymbol" alpha="1" force_rhr="0">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
                    <Option type="Map">
                      <Option type="QString" name="angle" value="0"/>
                      <Option type="QString" name="cap_style" value="square"/>
                      <Option type="QString" name="color" value="152,125,183,255"/>
                      <Option type="QString" name="horizontal_anchor_point" value="1"/>
                      <Option type="QString" name="joinstyle" value="bevel"/>
                      <Option type="QString" name="name" value="circle"/>
                      <Option type="QString" name="offset" value="0,0"/>
                      <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                      <Option type="QString" name="offset_unit" value="MM"/>
                      <Option type="QString" name="outline_color" value="35,35,35,255"/>
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
                    <prop v="152,125,183,255" k="color"/>
                    <prop v="1" k="horizontal_anchor_point"/>
                    <prop v="bevel" k="joinstyle"/>
                    <prop v="circle" k="name"/>
                    <prop v="0,0" k="offset"/>
                    <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                    <prop v="MM" k="offset_unit"/>
                    <prop v="35,35,35,255" k="outline_color"/>
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
                <symbol type="fill" clip_to_extent="1" name="fillSymbol" alpha="1" force_rhr="0">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer pass="0" enabled="1" class="SimpleFill" locked="0">
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
                      <Option type="QString" name="outline_width_unit" value="Point"/>
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
                    <prop v="Point" k="outline_width_unit"/>
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
              <shadow shadowRadius="1.5" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowOffsetAngle="135"/>
              <dd_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" decimals="3" wrapChar="" addDirectionSymbol="0" leftDirectionSymbol="&lt;" formatNumbers="0" plussign="0" autoWrapLength="0" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0"/>
            <placement offsetType="0" layerType="LineGeometry" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistance="0" lineAnchorType="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" preserveRotation="1" maxCurvedCharAngleOut="-25" fitInPolygonOnly="0" rotationUnit="AngleDegrees" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" dist="0" geometryGeneratorEnabled="0" centroidWhole="0" repeatDistance="0" lineAnchorPercent="0.5" offsetUnits="MM" geometryGeneratorType="PointGeometry" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" repeatDistanceUnits="MM" polygonPlacementFlags="2" quadOffset="4" placementFlags="10" geometryGenerator="" distUnits="MM" rotationAngle="0" maxCurvedCharAngleIn="25" lineAnchorClipping="0" placement="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR"/>
            <rendering mergeLines="0" scaleMin="0" limitNumLabels="0" fontMaxPixelSize="10000" unplacedVisibility="0" fontMinPixelSize="3" upsidedownLabels="0" fontLimitPixelSize="0" displayAll="0" labelPerPart="0" scaleMax="0" minFeatureSize="0" zIndex="0" obstacleFactor="1" obstacleType="1" drawLabels="1" obstacle="1" scaleVisibility="0" maxNumLabels="2000"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
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
                <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
