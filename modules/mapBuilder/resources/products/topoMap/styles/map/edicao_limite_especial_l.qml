<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 type="mergedFeatureRenderer" forceraster="0" enableorderby="0" referencescale="-1" symbollevels="0">
    <renderer-v2 type="RuleRenderer" forceraster="0" enableorderby="0" referencescale="-1" symbollevels="0">
      <rules key="{ff3995e7-5994-44a3-800a-da9a9d3e9d9f}">
        <rule key="{1e2d5c72-25d9-463c-98b6-25688afbcd8e}" label="A10418A" scalemindenom="1000" description="Terra Indigena" symbol="0" scalemaxdenom="100000" filter="tipo = 2 and sobreposto = 2"/>
        <rule key="{4cb62d00-cb4e-430b-9e64-a271c5211c1c}" label="A10418A tracejado" description="Terra Indigena" symbol="1" filter="tipo = 2 and sobreposto = 1"/>
        <rule key="{e1be546a-ba1d-4c08-85d2-a2e56a7b693b}" label="A10420A" description="Unidade de conservação" symbol="2" filter="tipo not in (1,2,4,36,9999) and sobreposto = 2"/>
        <rule key="{f48524de-be52-4185-a244-22fdc28e54b1}" label="A10420A sobreposto" description="Unidade de conservação" symbol="3" filter="tipo not in (1,2,4,36,9999) and sobreposto = 1"/>
        <rule key="{63b39a76-52b4-4be5-9fcb-60910375814a}" label="A10408A" description="Unidade de conservação" symbol="4" filter="tipo = 36 and sobreposto = 2"/>
        <rule key="{6f8527a2-61b5-4534-8c2f-b780432d5412}" label="A10408A sobreposto" description="Unidade de conservação" symbol="5" filter="tipo = 36 and sobreposto = 1"/>
        <rule key="{2baa4cee-ab16-4f3e-852e-823d79eaa55f}" symbol="6" filter="ELSE"/>
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
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="40,168,40,255"/>
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
            <prop k="line_color" v="40,168,40,255"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('cinza-21_194-194-194_#C2C2C2')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="201,201,201,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.15"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="201,201,201,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.15"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="5"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="4"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="5"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="4"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="@0@2">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="0,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="circle"/>
                  <Option type="QString" name="offset" value="0,0"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="35,35,35,255"/>
                  <Option type="QString" name="outline_style" value="no"/>
                  <Option type="QString" name="outline_width" value="0"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.25"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="0,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="circle"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="35,35,35,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.25"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('verde346-100_23-158-106_#179E6A')"/>
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
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="5;10"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="40,168,40,255"/>
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
              <Option type="QString" name="use_custom_dash" value="1"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;10"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="40,168,40,255"/>
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
            <prop k="use_custom_dash" v="1"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('cinza-21_194-194-194_#C2C2C2')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;12"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="201,201,201,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.15"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;12"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="201,201,201,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.15"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="15"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="4"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="15"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="4"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="@1@2">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="0,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="circle"/>
                  <Option type="QString" name="offset" value="0,0"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="35,35,35,255"/>
                  <Option type="QString" name="outline_style" value="no"/>
                  <Option type="QString" name="outline_width" value="0"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.25"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="0,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="circle"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="35,35,35,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.25"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('verde346-100_23-158-106_#179E6A')"/>
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
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="2">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="131,194,164,255"/>
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
            <prop k="line_color" v="131,194,164,255"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('verde346-42_131-194-164_#83C2A4')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="0,0,0,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.15"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.15"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="5"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="4"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="5"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="4"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="@2@2">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="0,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="circle"/>
                  <Option type="QString" name="offset" value="0,0"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="35,35,35,255"/>
                  <Option type="QString" name="outline_style" value="no"/>
                  <Option type="QString" name="outline_width" value="0"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.25"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="0,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="circle"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="35,35,35,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.25"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="3">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="10;20"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="131,194,164,255"/>
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
              <Option type="QString" name="use_custom_dash" value="1"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="10;20"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="131,194,164,255"/>
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
            <prop k="use_custom_dash" v="1"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('verde346-42_131-194-164_#83C2A4')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;12"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="0,0,0,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.15"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;12"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.15"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="15"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="4"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="15"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="4"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="@3@2">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="0,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="circle"/>
                  <Option type="QString" name="offset" value="0,0"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="35,35,35,255"/>
                  <Option type="QString" name="outline_style" value="no"/>
                  <Option type="QString" name="outline_width" value="0"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.25"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="0,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="circle"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="35,35,35,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.25"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="4">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="131,194,164,255"/>
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
            <prop k="line_color" v="131,194,164,255"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('cinza-42_158-158-158_#9E9E9E')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="0,0,0,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.15"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.15"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="5"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="4"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="5"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="4"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="@4@2">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="0,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="circle"/>
                  <Option type="QString" name="offset" value="0,0"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="35,35,35,255"/>
                  <Option type="QString" name="outline_style" value="no"/>
                  <Option type="QString" name="outline_width" value="0"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.25"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="0,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="circle"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="35,35,35,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.25"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="5">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="10;20"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="131,194,164,255"/>
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
              <Option type="QString" name="use_custom_dash" value="1"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="10;20"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="131,194,164,255"/>
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
            <prop k="use_custom_dash" v="1"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('cinza-42_158-158-158_#9E9E9E')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;12"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="0,0,0,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.15"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;12"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.15"/>
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
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="interval" value="15"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_along_line" value="4"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="bool" name="place_on_every_part" value="true"/>
              <Option type="QString" name="placements" value="Interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="15"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="4"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="@5@2">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="angle" value="0"/>
                  <Option type="QString" name="cap_style" value="square"/>
                  <Option type="QString" name="color" value="0,0,0,255"/>
                  <Option type="QString" name="horizontal_anchor_point" value="1"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="name" value="circle"/>
                  <Option type="QString" name="offset" value="0,0"/>
                  <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="offset_unit" value="MM"/>
                  <Option type="QString" name="outline_color" value="35,35,35,255"/>
                  <Option type="QString" name="outline_style" value="no"/>
                  <Option type="QString" name="outline_width" value="0"/>
                  <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="outline_width_unit" value="MM"/>
                  <Option type="QString" name="scale_method" value="diameter"/>
                  <Option type="QString" name="size" value="0.25"/>
                  <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="size_unit" value="MM"/>
                  <Option type="QString" name="vertical_anchor_point" value="1"/>
                </Option>
                <prop k="angle" v="0"/>
                <prop k="cap_style" v="square"/>
                <prop k="color" v="0,0,0,255"/>
                <prop k="horizontal_anchor_point" v="1"/>
                <prop k="joinstyle" v="bevel"/>
                <prop k="name" v="circle"/>
                <prop k="offset" v="0,0"/>
                <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="offset_unit" v="MM"/>
                <prop k="outline_color" v="35,35,35,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.25"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option type="int" name="type" value="3"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option type="bool" name="active" value="true"/>
                        <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="6">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="255,1,5,255"/>
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
            <prop k="line_color" v="255,1,5,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="1.86"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{71f16903-2aa6-40d8-a3cc-d0fd85a2a3fe}">
      <rule key="{bfc9c451-0cc1-41e9-8dac-52986bb86a8d}" description="Texto aproximado" filter="&quot;geometria_aproximada&quot; = 1">
        <settings calloutType="simple">
          <text-style fontSizeUnit="Point" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fieldName="texto_edicao" previewBkgrdColor="255,255,255,255" textColor="75,75,75,255" fontStrikeout="0" multilineHeight="1" capitalization="1" textOpacity="1" fontUnderline="0" namedStyle="Condensed" blendMode="0" fontSize="6" useSubstitutions="0" allowHtml="0" isExpression="1" fontWeight="50" fontLetterSpacing="0" fontFamily="Noto Sans" fontKerning="1" legendString="Aa" fontWordSpacing="0" textOrientation="horizontal">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferColor="255,255,255,255" bufferSize="1" bufferNoFill="1" bufferSizeUnits="MM" bufferBlendMode="0" bufferDraw="0" bufferJoinStyle="128"/>
            <text-mask maskedSymbolLayers="" maskSize="0.20000000000000001" maskType="0" maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskEnabled="1"/>
            <background shapeRadiiUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeRotation="0" shapeSizeUnit="MM" shapeRadiiX="0" shapeRotationType="0" shapeFillColor="255,255,255,255" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeOffsetY="0" shapeSVGFile="" shapeOffsetX="0" shapeBorderWidth="0" shapeSizeX="0" shapeOpacity="1" shapeSizeY="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeBorderColor="128,128,128,255" shapeType="0">
              <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="141,90,153,255"/>
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
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="141,90,153,255"/>
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
                <layer class="SimpleFill" enabled="1" pass="0" locked="0">
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
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetUnit="MM" shadowOffsetDist="1" shadowDraw="0" shadowUnder="0" shadowOpacity="0.69999999999999996" shadowOffsetGlobal="1" shadowBlendMode="6" shadowRadius="1.5" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowScale="100" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" multilineAlign="0" addDirectionSymbol="0" rightDirectionSymbol=">" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" wrapChar="" reverseDirectionSymbol="0" decimals="3" plussign="0" placeDirectionSymbol="0" formatNumbers="0"/>
          <placement priority="5" centroidWhole="0" xOffset="0" geometryGeneratorEnabled="1" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" offsetUnits="MM" overrunDistanceUnit="MM" offsetType="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleIn="25" geometryGeneratorType="LineGeometry" repeatDistanceUnits="MM" distUnits="MM" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" layerType="LineGeometry" repeatDistance="200" placement="3" maxCurvedCharAngleOut="-25" overrunDistance="0" placementFlags="10" rotationUnit="AngleDegrees" lineAnchorType="0" rotationAngle="0" fitInPolygonOnly="0" lineAnchorPercent="0.5" quadOffset="4" preserveRotation="1" dist="0" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" polygonPlacementFlags="2"/>
          <rendering minFeatureSize="0" scaleMin="0" fontLimitPixelSize="0" mergeLines="0" scaleMax="0" unplacedVisibility="0" drawLabels="1" displayAll="0" obstacleFactor="1" labelPerPart="0" obstacle="1" fontMaxPixelSize="10000" scaleVisibility="0" upsidedownLabels="0" zIndex="0" maxNumLabels="2000" fontMinPixelSize="3" limitNumLabels="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Color">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Show">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
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
              <Option type="QString" name="lineSymbol" value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
