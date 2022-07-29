<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="0" version="3.24.3-Tisler" styleCategories="Symbology|Labeling">
  <renderer-v2 forceraster="0" symbollevels="0" type="mergedFeatureRenderer" referencescale="-1" enableorderby="0">
    <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" referencescale="-1" enableorderby="0">
      <rules key="{eab5fe5f-0a99-4361-ade5-6627e10fd91c}">
        <rule filter=" &quot;bitola&quot; != 1 AND  &quot;situacao_fisica&quot; in (3,0) AND &quot;visivel&quot; = 1" key="{0cc2ee3b-c3ea-42a1-9bd8-a068f9446b40}" symbol="0" label="Bitola internacional Op e Desc"/>
        <rule filter=" &quot;bitola&quot; = 1 AND  &quot;situacao_fisica&quot; in (3,0) AND &quot;visivel&quot; = 1" key="{838b1d38-26ff-4b90-bba1-15578ff1b1fe}" symbol="1" label="Bitola métrica Op e Desc"/>
        <rule filter=" &quot;bitola&quot; = 1 AND  &quot;situacao_fisica&quot; in (1,4) AND &quot;visivel&quot; = 1" key="{91ba453e-d32b-46bf-a477-4290d2ea0fb4}" symbol="2" label="Bitola métrica Aband e Em Const"/>
      </rules>
      <symbols>
        <symbol name="0" clip_to_extent="1" alpha="1" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
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
              <Option name="line_color" type="QString" value="224,224,224,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.6"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="6.4"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="3.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@0@1" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="224,224,224,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.4"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="1.5"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.3"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="6.4"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="3.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@0@3" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.15"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="1.5"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol name="1" clip_to_extent="1" alpha="1" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
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
              <Option name="line_color" type="QString" value="224,224,224,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.6"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.375"/>
              <Option name="offset_along_line" type="QString" value="3.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@1" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="224,224,224,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.4"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="-0.375"/>
              <Option name="offset_along_line" type="QString" value="9.6"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@2" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="224,224,224,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.4"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.3"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="-0.375"/>
              <Option name="offset_along_line" type="QString" value="9.6"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@4" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.15"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.375"/>
              <Option name="offset_along_line" type="QString" value="3.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@1@5" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.15"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol name="2" clip_to_extent="1" alpha="1" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5.9;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="224,224,224,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.6"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.375"/>
              <Option name="offset_along_line" type="QString" value="3.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@2@1" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="224,224,224,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.4"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="-0.375"/>
              <Option name="offset_along_line" type="QString" value="9.6"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@2@2" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="224,224,224,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.4"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('cinza07_224-224-224_#E0E0E0')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="5.9;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.3"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="-0.375"/>
              <Option name="offset_along_line" type="QString" value="9.6"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@2@4" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.15"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" class="MarkerLine" pass="0" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.8"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.375"/>
              <Option name="offset_along_line" type="QString" value="3.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@2@5" clip_to_extent="1" alpha="1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="255,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="line"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="solid"/>
                  <Option name="outline_width" type="QString" value="0.15"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.75"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto0_0-0-0_#000000')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                    </Option>
                    <Option name="type" type="QString" value="collection"/>
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
