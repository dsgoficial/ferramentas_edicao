<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 referencescale="-1" type="mergedFeatureRenderer" forceraster="0" symbollevels="0" enableorderby="0">
    <renderer-v2 referencescale="-1" type="RuleRenderer" forceraster="0" symbollevels="0" enableorderby="0">
      <rules key="{ff3995e7-5994-44a3-800a-da9a9d3e9d9f}">
        <rule symbol="0" description="Terra Indigena" filter="tipo = 2 and sobreposto = 2" label="A10418A" scalemindenom="1000" scalemaxdenom="100000" key="{1e2d5c72-25d9-463c-98b6-25688afbcd8e}"/>
        <rule symbol="1" description="Terra Indigena" filter="tipo = 2 and sobreposto = 1" label="A10418A tracejado" key="{4cb62d00-cb4e-430b-9e64-a271c5211c1c}"/>
        <rule symbol="2" description="Unidade de conservação" filter="tipo in (5,24,25,26,27,28,29,30,31,32,33,34,35) and sobreposto = 2" label="A10420A" key="{e1be546a-ba1d-4c08-85d2-a2e56a7b693b}"/>
        <rule symbol="3" description="Unidade de conservação" filter="tipo in  (5,24,25,26,27,28,29,30,31,32,33,34,35) and sobreposto = 1" label="A10420A sobreposto" key="{f48524de-be52-4185-a244-22fdc28e54b1}"/>
        <rule symbol="4" description="Unidade de conservação" filter="tipo = 36 and sobreposto = 2" label="A10408A" key="{63b39a76-52b4-4be5-9fcb-60910375814a}"/>
        <rule symbol="5" description="Unidade de conservação" filter="tipo = 36 and sobreposto = 1" label="A10408A sobreposto" key="{6f8527a2-61b5-4534-8c2f-b780432d5412}"/>
        <rule symbol="6" filter="ELSE" key="{2baa4cee-ab16-4f3e-852e-823d79eaa55f}"/>
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
              <Option value="40,168,40,255" type="QString" name="line_color"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('cinza-21_194-194-194_#C2C2C2')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="3;2" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="201,201,201,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.15" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('verde346-100_23-158-106_#179E6A')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="5" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="4" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="1" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@0@2" clip_to_extent="1">
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
                  <Option value="0,0,0,255" type="QString" name="color"/>
                  <Option value="1" type="QString" name="horizontal_anchor_point"/>
                  <Option value="bevel" type="QString" name="joinstyle"/>
                  <Option value="circle" type="QString" name="name"/>
                  <Option value="0,0" type="QString" name="offset"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                  <Option value="MM" type="QString" name="offset_unit"/>
                  <Option value="35,35,35,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.25" type="QString" name="size"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                  <Option value="MM" type="QString" name="size_unit"/>
                  <Option value="1" type="QString" name="vertical_anchor_point"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('verde346-100_23-158-106_#179E6A')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('verde346-100_23-158-106_#179E6A')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                    </Option>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
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
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="5;10" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="40,168,40,255" type="QString" name="line_color"/>
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
              <Option value="1" type="QString" name="use_custom_dash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('cinza-21_194-194-194_#C2C2C2')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="3;12" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="201,201,201,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.15" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('verde346-100_23-158-106_#179E6A')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="15" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="4" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="1" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@1@2" clip_to_extent="1">
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
                  <Option value="0,0,0,255" type="QString" name="color"/>
                  <Option value="1" type="QString" name="horizontal_anchor_point"/>
                  <Option value="bevel" type="QString" name="joinstyle"/>
                  <Option value="circle" type="QString" name="name"/>
                  <Option value="0,0" type="QString" name="offset"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                  <Option value="MM" type="QString" name="offset_unit"/>
                  <Option value="35,35,35,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.25" type="QString" name="size"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                  <Option value="MM" type="QString" name="size_unit"/>
                  <Option value="1" type="QString" name="vertical_anchor_point"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('verde346-100_23-158-106_#179E6A')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('verde346-100_23-158-106_#179E6A')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                    </Option>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
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
              <Option value="131,194,164,255" type="QString" name="line_color"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('verde346-42_131-194-164_#83C2A4')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="3;2" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.15" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="5" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="4" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="1" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@2@2" clip_to_extent="1">
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
                  <Option value="0,0,0,255" type="QString" name="color"/>
                  <Option value="1" type="QString" name="horizontal_anchor_point"/>
                  <Option value="bevel" type="QString" name="joinstyle"/>
                  <Option value="circle" type="QString" name="name"/>
                  <Option value="0,0" type="QString" name="offset"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                  <Option value="MM" type="QString" name="offset_unit"/>
                  <Option value="35,35,35,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.25" type="QString" name="size"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                  <Option value="MM" type="QString" name="size_unit"/>
                  <Option value="1" type="QString" name="vertical_anchor_point"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                    </Option>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
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
              <Option value="10;20" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="131,194,164,255" type="QString" name="line_color"/>
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
              <Option value="1" type="QString" name="use_custom_dash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('verde346-42_131-194-164_#83C2A4')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="3;12" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.15" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="15" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="4" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="1" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@3@2" clip_to_extent="1">
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
                  <Option value="0,0,0,255" type="QString" name="color"/>
                  <Option value="1" type="QString" name="horizontal_anchor_point"/>
                  <Option value="bevel" type="QString" name="joinstyle"/>
                  <Option value="circle" type="QString" name="name"/>
                  <Option value="0,0" type="QString" name="offset"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                  <Option value="MM" type="QString" name="offset_unit"/>
                  <Option value="35,35,35,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.25" type="QString" name="size"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                  <Option value="MM" type="QString" name="size_unit"/>
                  <Option value="1" type="QString" name="vertical_anchor_point"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                    </Option>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol alpha="1" type="line" force_rhr="0" name="4" clip_to_extent="1">
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
              <Option value="131,194,164,255" type="QString" name="line_color"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('cinza-42_158-158-158_#9E9E9E')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="3;2" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.15" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="5" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="4" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="1" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@4@2" clip_to_extent="1">
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
                  <Option value="0,0,0,255" type="QString" name="color"/>
                  <Option value="1" type="QString" name="horizontal_anchor_point"/>
                  <Option value="bevel" type="QString" name="joinstyle"/>
                  <Option value="circle" type="QString" name="name"/>
                  <Option value="0,0" type="QString" name="offset"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                  <Option value="MM" type="QString" name="offset_unit"/>
                  <Option value="35,35,35,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.25" type="QString" name="size"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                  <Option value="MM" type="QString" name="size_unit"/>
                  <Option value="1" type="QString" name="vertical_anchor_point"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                    </Option>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol alpha="1" type="line" force_rhr="0" name="5" clip_to_extent="1">
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
              <Option value="10;20" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="131,194,164,255" type="QString" name="line_color"/>
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
              <Option value="1" type="QString" name="use_custom_dash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('cinza-42_158-158-158_#9E9E9E')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="3;12" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.15" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="15" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="4" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="1" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@5@2" clip_to_extent="1">
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
                  <Option value="0,0,0,255" type="QString" name="color"/>
                  <Option value="1" type="QString" name="horizontal_anchor_point"/>
                  <Option value="bevel" type="QString" name="joinstyle"/>
                  <Option value="circle" type="QString" name="name"/>
                  <Option value="0,0" type="QString" name="offset"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                  <Option value="MM" type="QString" name="offset_unit"/>
                  <Option value="35,35,35,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.25" type="QString" name="size"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                  <Option value="MM" type="QString" name="size_unit"/>
                  <Option value="1" type="QString" name="vertical_anchor_point"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                      <Option type="Map" name="outlineColor">
                        <Option value="true" type="bool" name="active"/>
                        <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                        <Option value="3" type="int" name="type"/>
                      </Option>
                    </Option>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
        </symbol>
        <symbol alpha="1" type="line" force_rhr="0" name="6" clip_to_extent="1">
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
              <Option value="255,1,5,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="1.86" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{987481ae-6c08-41c9-8107-add1e62bf4df}">
      <rule description="Texto aproximado" filter="&quot;geometria_aproximada&quot; = 1" key="{87b810c6-cbd3-400c-8c73-12b03c05080b}">
        <settings calloutType="simple">
          <text-style multilineHeight="1" namedStyle="Condensed" fontSizeUnit="Point" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="75,75,75,255" blendMode="0" capitalization="1" textOpacity="1" fontSize="6" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fieldName="texto_edicao" isExpression="1" fontKerning="1" allowHtml="0" fontItalic="0" fontLetterSpacing="0" fontStrikeout="0" legendString="Aa" textOrientation="horizontal" fontUnderline="0" fontWordSpacing="0">
            <families/>
            <text-buffer bufferSizeUnits="MM" bufferNoFill="1" bufferOpacity="1" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128"/>
            <text-mask maskSizeUnits="MM" maskOpacity="1" maskType="0" maskedSymbolLayers="" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0.20000000000000001"/>
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
                    <Option value="141,90,153,255" type="QString" name="color"/>
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
          <placement offsetUnits="MM" geometryGeneratorEnabled="1" dist="0" geometryGeneratorType="LineGeometry" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" lineAnchorType="0" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" fitInPolygonOnly="0" repeatDistance="200" repeatDistanceUnits="MM" placement="3" centroidInside="0" overrunDistanceUnit="MM" offsetType="0" rotationAngle="0" preserveRotation="1" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" yOffset="0" layerType="LineGeometry" maxCurvedCharAngleIn="25" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" distMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" placementFlags="10" xOffset="0" maxCurvedCharAngleOut="-25" distUnits="MM"/>
          <rendering obstacleType="1" limitNumLabels="0" minFeatureSize="0" displayAll="0" scaleMin="0" scaleVisibility="0" obstacle="1" scaleMax="0" fontMinPixelSize="3" zIndex="0" drawLabels="1" labelPerPart="0" fontMaxPixelSize="10000" fontLimitPixelSize="0" upsidedownLabels="0" mergeLines="0" maxNumLabels="2000" obstacleFactor="1" unplacedVisibility="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="project_color('preto-75_75-75-75_#4B4B4B')" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Show">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)" type="QString" name="expression"/>
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
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
