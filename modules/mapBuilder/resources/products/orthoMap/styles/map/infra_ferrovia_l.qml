<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" labelsEnabled="0" version="3.24.3-Tisler">
  <renderer-v2 enableorderby="0" type="mergedFeatureRenderer" referencescale="-1" symbollevels="0" forceraster="0">
    <renderer-v2 enableorderby="0" type="RuleRenderer" referencescale="-1" symbollevels="0" forceraster="0">
      <rules key="{eab5fe5f-0a99-4361-ade5-6627e10fd91c}">
        <rule key="{0eb4b8ab-e4ae-4f8b-b242-ced76a18a7fc}" label="Bitola internacional" symbol="0" filter=" &quot;bitola&quot; != 1 and &quot;visivel&quot; = 1"/>
        <rule key="{09e310d2-2f01-4bce-a0d5-931f39175b67}" label="Bitola métrica" symbol="1" filter=" &quot;bitola&quot; = 1 and &quot;visivel&quot; = 1"/>
      </rules>
      <symbols>
        <symbol name="0" alpha="1" type="line" clip_to_extent="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
              <Option name="line_color" value="224,224,224,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.6" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                </Option>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="interval" value="6.4" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0" type="QString"/>
              <Option name="offset_along_line" value="3.2" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="place_on_every_part" value="true" type="bool"/>
              <Option name="placements" value="Interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@0@1" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                <Option type="Map">
                  <Option name="angle" value="0" type="QString"/>
                  <Option name="cap_style" value="square" type="QString"/>
                  <Option name="color" value="255,0,0,255" type="QString"/>
                  <Option name="horizontal_anchor_point" value="1" type="QString"/>
                  <Option name="joinstyle" value="bevel" type="QString"/>
                  <Option name="name" value="line" type="QString"/>
                  <Option name="offset" value="0,0" type="QString"/>
                  <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="offset_unit" value="MM" type="QString"/>
                  <Option name="outline_color" value="224,224,224,255" type="QString"/>
                  <Option name="outline_style" value="solid" type="QString"/>
                  <Option name="outline_width" value="0.4" type="QString"/>
                  <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="outline_width_unit" value="MM" type="QString"/>
                  <Option name="scale_method" value="diameter" type="QString"/>
                  <Option name="size" value="1.5" type="QString"/>
                  <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="size_unit" value="MM" type="QString"/>
                  <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                    </Option>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
              <Option name="line_color" value="0,0,0,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.3" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                </Option>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="interval" value="6.4" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0" type="QString"/>
              <Option name="offset_along_line" value="3.2" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="place_on_every_part" value="true" type="bool"/>
              <Option name="placements" value="Interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@0@3" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                <Option type="Map">
                  <Option name="angle" value="0" type="QString"/>
                  <Option name="cap_style" value="square" type="QString"/>
                  <Option name="color" value="255,0,0,255" type="QString"/>
                  <Option name="horizontal_anchor_point" value="1" type="QString"/>
                  <Option name="joinstyle" value="bevel" type="QString"/>
                  <Option name="name" value="line" type="QString"/>
                  <Option name="offset" value="0,0" type="QString"/>
                  <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="offset_unit" value="MM" type="QString"/>
                  <Option name="outline_color" value="0,0,0,255" type="QString"/>
                  <Option name="outline_style" value="solid" type="QString"/>
                  <Option name="outline_width" value="0.15" type="QString"/>
                  <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="outline_width_unit" value="MM" type="QString"/>
                  <Option name="scale_method" value="diameter" type="QString"/>
                  <Option name="size" value="1.5" type="QString"/>
                  <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="size_unit" value="MM" type="QString"/>
                  <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                    </Option>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol name="1" alpha="1" type="line" clip_to_extent="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
              <Option name="line_color" value="224,224,224,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.6" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                </Option>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="interval" value="12.8" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0.375" type="QString"/>
              <Option name="offset_along_line" value="3.2" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="place_on_every_part" value="true" type="bool"/>
              <Option name="placements" value="Interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@1" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                <Option type="Map">
                  <Option name="angle" value="0" type="QString"/>
                  <Option name="cap_style" value="square" type="QString"/>
                  <Option name="color" value="255,0,0,255" type="QString"/>
                  <Option name="horizontal_anchor_point" value="1" type="QString"/>
                  <Option name="joinstyle" value="bevel" type="QString"/>
                  <Option name="name" value="line" type="QString"/>
                  <Option name="offset" value="0,0" type="QString"/>
                  <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="offset_unit" value="MM" type="QString"/>
                  <Option name="outline_color" value="224,224,224,255" type="QString"/>
                  <Option name="outline_style" value="solid" type="QString"/>
                  <Option name="outline_width" value="0.4" type="QString"/>
                  <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="outline_width_unit" value="MM" type="QString"/>
                  <Option name="scale_method" value="diameter" type="QString"/>
                  <Option name="size" value="0.75" type="QString"/>
                  <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="size_unit" value="MM" type="QString"/>
                  <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                    </Option>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="interval" value="12.8" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="-0.375" type="QString"/>
              <Option name="offset_along_line" value="9.6" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="place_on_every_part" value="true" type="bool"/>
              <Option name="placements" value="Interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@2" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                <Option type="Map">
                  <Option name="angle" value="0" type="QString"/>
                  <Option name="cap_style" value="square" type="QString"/>
                  <Option name="color" value="255,0,0,255" type="QString"/>
                  <Option name="horizontal_anchor_point" value="1" type="QString"/>
                  <Option name="joinstyle" value="bevel" type="QString"/>
                  <Option name="name" value="line" type="QString"/>
                  <Option name="offset" value="0,0" type="QString"/>
                  <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="offset_unit" value="MM" type="QString"/>
                  <Option name="outline_color" value="224,224,224,255" type="QString"/>
                  <Option name="outline_style" value="solid" type="QString"/>
                  <Option name="outline_width" value="0.4" type="QString"/>
                  <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="outline_width_unit" value="MM" type="QString"/>
                  <Option name="scale_method" value="diameter" type="QString"/>
                  <Option name="size" value="0.75" type="QString"/>
                  <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="size_unit" value="MM" type="QString"/>
                  <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('cinza12_224-224-224_#E0E0E0')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                    </Option>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
              <Option name="line_color" value="0,0,0,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.3" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" value="true" type="bool"/>
                    <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                    <Option name="type" value="3" type="int"/>
                  </Option>
                </Option>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="interval" value="12.8" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="-0.375" type="QString"/>
              <Option name="offset_along_line" value="9.6" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="place_on_every_part" value="true" type="bool"/>
              <Option name="placements" value="Interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@4" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                <Option type="Map">
                  <Option name="angle" value="0" type="QString"/>
                  <Option name="cap_style" value="square" type="QString"/>
                  <Option name="color" value="255,0,0,255" type="QString"/>
                  <Option name="horizontal_anchor_point" value="1" type="QString"/>
                  <Option name="joinstyle" value="bevel" type="QString"/>
                  <Option name="name" value="line" type="QString"/>
                  <Option name="offset" value="0,0" type="QString"/>
                  <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="offset_unit" value="MM" type="QString"/>
                  <Option name="outline_color" value="0,0,0,255" type="QString"/>
                  <Option name="outline_style" value="solid" type="QString"/>
                  <Option name="outline_width" value="0.15" type="QString"/>
                  <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="outline_width_unit" value="MM" type="QString"/>
                  <Option name="scale_method" value="diameter" type="QString"/>
                  <Option name="size" value="0.75" type="QString"/>
                  <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="size_unit" value="MM" type="QString"/>
                  <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                    </Option>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="interval" value="12.8" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0.375" type="QString"/>
              <Option name="offset_along_line" value="3.2" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="place_on_every_part" value="true" type="bool"/>
              <Option name="placements" value="Interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@5" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                <Option type="Map">
                  <Option name="angle" value="0" type="QString"/>
                  <Option name="cap_style" value="square" type="QString"/>
                  <Option name="color" value="255,0,0,255" type="QString"/>
                  <Option name="horizontal_anchor_point" value="1" type="QString"/>
                  <Option name="joinstyle" value="bevel" type="QString"/>
                  <Option name="name" value="line" type="QString"/>
                  <Option name="offset" value="0,0" type="QString"/>
                  <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="offset_unit" value="MM" type="QString"/>
                  <Option name="outline_color" value="0,0,0,255" type="QString"/>
                  <Option name="outline_style" value="solid" type="QString"/>
                  <Option name="outline_width" value="0.15" type="QString"/>
                  <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="outline_width_unit" value="MM" type="QString"/>
                  <Option name="scale_method" value="diameter" type="QString"/>
                  <Option name="size" value="0.75" type="QString"/>
                  <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                  <Option name="size_unit" value="MM" type="QString"/>
                  <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" value="true" type="bool"/>
                        <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                        <Option name="type" value="3" type="int"/>
                      </Option>
                    </Option>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
