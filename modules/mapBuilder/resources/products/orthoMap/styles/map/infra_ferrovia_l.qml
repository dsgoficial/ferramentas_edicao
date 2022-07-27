<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.24.3-Tisler" labelsEnabled="1">
  <renderer-v2 symbollevels="0" enableorderby="0" referencescale="-1" forceraster="0" type="mergedFeatureRenderer">
    <renderer-v2 symbollevels="0" enableorderby="0" referencescale="-1" forceraster="0" type="RuleRenderer">
      <rules key="{eab5fe5f-0a99-4361-ade5-6627e10fd91c}">
        <rule label="Bitola internacional Op e Desc" filter=" &quot;bitola&quot; != 1 AND  &quot;situacao_fisica&quot; in (3,0) AND &quot;visivel&quot; = 1" key="{0eb4b8ab-e4ae-4f8b-b242-ced76a18a7fc}" symbol="0"/>
        <rule label="Bitola métrica Op e Desc" filter=" &quot;bitola&quot; = 1 AND  &quot;situacao_fisica&quot; in (3,0) AND &quot;visivel&quot; = 1" key="{4a742e7d-78fd-473e-9ccf-25bd41aa73c7}" symbol="1"/>
        <rule label="Bitola métrica Aband e Em Const" filter=" &quot;bitola&quot; = 1 AND  &quot;situacao_fisica&quot; in (1,4) AND &quot;visivel&quot; = 1" key="{09e310d2-2f01-4bce-a0d5-931f39175b67}" symbol="2"/>
      </rules>
      <symbols>
        <symbol force_rhr="0" name="0" alpha="1" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="224,224,224,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.6" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
            <prop k="line_color" v="224,224,224,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.6"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option value="true" name="active" type="bool"/>
                    <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                    <Option value="3" name="type" type="int"/>
                  </Option>
                </Option>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="6.4" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3.2" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="6.4"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="3.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@0@1" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="224,224,224,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.4" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="1.5" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="224,224,224,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.4"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="1.5"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="0,0,0,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.3" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.3"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option value="true" name="active" type="bool"/>
                    <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                    <Option value="3" name="type" type="int"/>
                  </Option>
                </Option>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="6.4" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3.2" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="6.4"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="3.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@0@3" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="0,0,0,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.15" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="1.5" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.15"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="1.5"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol force_rhr="0" name="1" alpha="1" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="224,224,224,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.6" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
            <prop k="line_color" v="224,224,224,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.6"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option value="true" name="active" type="bool"/>
                    <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                    <Option value="3" name="type" type="int"/>
                  </Option>
                </Option>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="0.375" name="offset" type="QString"/>
              <Option value="3.2" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0.375"/>
            <prop k="offset_along_line" v="3.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@1@1" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="224,224,224,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.4" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="224,224,224,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.4"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="-0.375" name="offset" type="QString"/>
              <Option value="9.6" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="-0.375"/>
            <prop k="offset_along_line" v="9.6"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@1@2" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="224,224,224,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.4" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="224,224,224,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.4"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="flat" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="0,0,0,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.3" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.3"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option value="true" name="active" type="bool"/>
                    <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                    <Option value="3" name="type" type="int"/>
                  </Option>
                </Option>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="-0.375" name="offset" type="QString"/>
              <Option value="9.6" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="-0.375"/>
            <prop k="offset_along_line" v="9.6"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@1@4" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="0,0,0,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.15" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.15"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="0.375" name="offset" type="QString"/>
              <Option value="3.2" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0.375"/>
            <prop k="offset_along_line" v="3.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@1@5" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="0,0,0,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.15" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.15"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol force_rhr="0" name="2" alpha="1" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5.9;0.5" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="224,224,224,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.6" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5.9;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="224,224,224,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.6"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option value="true" name="active" type="bool"/>
                    <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                    <Option value="3" name="type" type="int"/>
                  </Option>
                </Option>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="0.375" name="offset" type="QString"/>
              <Option value="3.2" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0.375"/>
            <prop k="offset_along_line" v="3.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@2@1" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="224,224,224,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.4" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="224,224,224,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.4"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="-0.375" name="offset" type="QString"/>
              <Option value="9.6" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="-0.375"/>
            <prop k="offset_along_line" v="9.6"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@2@2" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="224,224,224,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.4" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="224,224,224,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.4"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('cinza12_224-224-224_#E0E0E0')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="flat" name="capstyle" type="QString"/>
              <Option value="5.9;0.5" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="0,0,0,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.3" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="1" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="flat"/>
            <prop k="customdash" v="5.9;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.3"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option value="true" name="active" type="bool"/>
                    <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                    <Option value="3" name="type" type="int"/>
                  </Option>
                </Option>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="-0.375" name="offset" type="QString"/>
              <Option value="9.6" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="-0.375"/>
            <prop k="offset_along_line" v="9.6"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@2@4" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="0,0,0,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.15" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.15"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" enabled="1" pass="0">
            <Option type="Map">
              <Option value="4" name="average_angle_length" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale" type="QString"/>
              <Option value="MM" name="average_angle_unit" type="QString"/>
              <Option value="12.8" name="interval" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="interval_map_unit_scale" type="QString"/>
              <Option value="MM" name="interval_unit" type="QString"/>
              <Option value="0.375" name="offset" type="QString"/>
              <Option value="3.2" name="offset_along_line" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_along_line_unit" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="true" name="place_on_every_part" type="bool"/>
              <Option value="Interval" name="placements" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="1" name="rotate" type="QString"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.8"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0.375"/>
            <prop k="offset_along_line" v="3.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" name="@2@5" alpha="1" clip_to_extent="1" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                <Option type="Map">
                  <Option value="0" name="angle" type="QString"/>
                  <Option value="square" name="cap_style" type="QString"/>
                  <Option value="255,0,0,255" name="color" type="QString"/>
                  <Option value="1" name="horizontal_anchor_point" type="QString"/>
                  <Option value="bevel" name="joinstyle" type="QString"/>
                  <Option value="line" name="name" type="QString"/>
                  <Option value="0,0" name="offset" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                  <Option value="MM" name="offset_unit" type="QString"/>
                  <Option value="0,0,0,255" name="outline_color" type="QString"/>
                  <Option value="solid" name="outline_style" type="QString"/>
                  <Option value="0.15" name="outline_width" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                  <Option value="MM" name="outline_width_unit" type="QString"/>
                  <Option value="diameter" name="scale_method" type="QString"/>
                  <Option value="0.75" name="size" type="QString"/>
                  <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                  <Option value="MM" name="size_unit" type="QString"/>
                  <Option value="1" name="vertical_anchor_point" type="QString"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="255,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="line"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="solid"/>
                <prop k="outline_width" v="0.15"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.75"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option value="true" name="active" type="bool"/>
                        <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                        <Option value="3" name="type" type="int"/>
                      </Option>
                    </Option>
                    <Option value="collection" name="type" type="QString"/>
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
    <rules key="{69a2ae9a-2272-4a9e-be3e-bff39b15a28e}">
      <rule key="{1e591e73-d858-48e2-b8a1-ef19c51bad25}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="Point" useSubstitutions="0" allowHtml="0" textOpacity="1" blendMode="0" fontKerning="1" legendString="Aa" fieldName="texto_edicao" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" capitalization="0" previewBkgrdColor="255,255,255,255" textColor="255,255,255,255" fontFamily="Noto Sans" fontItalic="1" fontWordSpacing="0" fontSize="6" isExpression="0" fontLetterSpacing="0" namedStyle="Condensed Italic" fontStrikeout="0" textOrientation="horizontal" fontUnderline="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferDraw="1" bufferColor="0,0,0,255" bufferSizeUnits="MM" bufferSize="0.5" bufferNoFill="1"/>
            <text-mask maskEnabled="0" maskType="0" maskJoinStyle="128" maskSizeUnits="MM" maskSize="0" maskOpacity="1" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeRadiiX="0" shapeRadiiUnit="Point" shapeDraw="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="Point" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeX="0" shapeRotationType="0" shapeOpacity="1" shapeJoinStyle="64" shapeOffsetUnit="Point" shapeType="0" shapeFillColor="255,255,255,255" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeY="0" shapeSizeUnit="Point" shapeSizeType="0" shapeRotation="0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" name="markerSymbol" alpha="1" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="190,178,151,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="190,178,151,255"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" name="fillSymbol" alpha="1" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" enabled="1" pass="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="Point" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
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
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowBlendMode="6" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" reverseDirectionSymbol="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" formatNumbers="0" decimals="3" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" plussign="0" addDirectionSymbol="0"/>
          <placement polygonPlacementFlags="2" centroidWhole="0" yOffset="0" priority="5" repeatDistance="0" overrunDistanceUnit="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" centroidInside="0" fitInPolygonOnly="0" maxCurvedCharAngleIn="25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" lineAnchorType="0" dist="0" offsetUnits="MM" lineAnchorClipping="0" xOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" geometryGenerator="" layerType="LineGeometry" rotationAngle="0" overrunDistance="0" placement="2" preserveRotation="1" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" rotationUnit="AngleDegrees" lineAnchorPercent="0.5" quadOffset="4" geometryGeneratorType="PointGeometry"/>
          <rendering displayAll="0" fontMinPixelSize="3" scaleMin="0" maxNumLabels="2000" obstacleFactor="1" drawLabels="1" obstacle="1" mergeLines="1" obstacleType="1" minFeatureSize="0" labelPerPart="0" upsidedownLabels="0" scaleMax="0" zIndex="0" fontMaxPixelSize="10000" scaleVisibility="0" limitNumLabels="0" unplacedVisibility="0" fontLimitPixelSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="BufferColor" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('preto0_0-0-0_#000000')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('branco_255-255-255_#FFFFFF')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
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
