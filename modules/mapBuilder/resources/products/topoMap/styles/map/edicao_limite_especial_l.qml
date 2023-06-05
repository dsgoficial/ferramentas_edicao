<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 type="mergedFeatureRenderer" enableorderby="0" referencescale="-1" symbollevels="0" forceraster="0">
    <renderer-v2 type="RuleRenderer" enableorderby="0" referencescale="-1" symbollevels="0" forceraster="0">
      <rules key="{ff3995e7-5994-44a3-800a-da9a9d3e9d9f}">
        <rule label="A10418A" description="Terra Indigena" key="{1e2d5c72-25d9-463c-98b6-25688afbcd8e}" symbol="0" filter="tipo = 2 and sobreposto = 2"/>
        <rule label="A10418A tracejado" description="Terra Indigena" key="{4cb62d00-cb4e-430b-9e64-a271c5211c1c}" symbol="1" filter="tipo = 2 and sobreposto = 1"/>
        <rule label="A10420A" description="Unidade de conservação" key="{e1be546a-ba1d-4c08-85d2-a2e56a7b693b}" symbol="2" filter="tipo in (5,24,25,26,27,28,29,30,31,32,33,34,35) and sobreposto = 2"/>
        <rule label="A10420A sobreposto" description="Unidade de conservação" key="{f48524de-be52-4185-a244-22fdc28e54b1}" symbol="3" filter="tipo in  (5,24,25,26,27,28,29,30,31,32,33,34,35) and sobreposto = 1"/>
        <rule label="A10408A" description="Unidade de conservação" key="{63b39a76-52b4-4be5-9fcb-60910375814a}" symbol="4" filter="tipo = 36 and sobreposto = 2"/>
        <rule label="A10408A sobreposto" description="Unidade de conservação" key="{6f8527a2-61b5-4534-8c2f-b780432d5412}" symbol="5" filter="tipo = 36 and sobreposto = 1"/>
        <rule key="{2baa4cee-ab16-4f3e-852e-823d79eaa55f}" symbol="6" filter="ELSE"/>
      </rules>
      <symbols>
        <symbol type="line" clip_to_extent="1" alpha="1" name="0" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="40,168,40,255" k="line_color"/>
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
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('cinza-12_211-211-211_#D3D3D3')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="201,201,201,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.15" k="line_width"/>
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
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
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
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="4" k="offset_along_line"/>
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
            <symbol type="marker" clip_to_extent="1" alpha="1" name="@0@2" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="0,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="circle" k="name"/>
                <prop v="0,0" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="35,35,35,255" k="outline_color"/>
                <prop v="no" k="outline_style"/>
                <prop v="0" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.25" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
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
        <symbol type="line" clip_to_extent="1" alpha="1" name="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;10" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="40,168,40,255" k="line_color"/>
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
            <prop v="1" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option type="bool" name="active" value="true"/>
                    <Option type="QString" name="expression" value="project_color('cinza-12_211-211-211_#D3D3D3')"/>
                    <Option type="int" name="type" value="3"/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;12" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="201,201,201,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.15" k="line_width"/>
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
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
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
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="15" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="4" k="offset_along_line"/>
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
            <symbol type="marker" clip_to_extent="1" alpha="1" name="@1@2" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="0,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="circle" k="name"/>
                <prop v="0,0" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="35,35,35,255" k="outline_color"/>
                <prop v="no" k="outline_style"/>
                <prop v="0" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.25" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
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
        <symbol type="line" clip_to_extent="1" alpha="1" name="2" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="131,194,164,255" k="line_color"/>
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
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="0,0,0,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.15" k="line_width"/>
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
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
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
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="4" k="offset_along_line"/>
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
            <symbol type="marker" clip_to_extent="1" alpha="1" name="@2@2" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="0,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="circle" k="name"/>
                <prop v="0,0" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="35,35,35,255" k="outline_color"/>
                <prop v="no" k="outline_style"/>
                <prop v="0" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.25" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
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
        <symbol type="line" clip_to_extent="1" alpha="1" name="3" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;10" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="131,194,164,255" k="line_color"/>
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
            <prop v="1" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
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
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;12" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="0,0,0,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.15" k="line_width"/>
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
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
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
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="15" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="4" k="offset_along_line"/>
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
            <symbol type="marker" clip_to_extent="1" alpha="1" name="@3@2" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="0,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="circle" k="name"/>
                <prop v="0,0" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="35,35,35,255" k="outline_color"/>
                <prop v="no" k="outline_style"/>
                <prop v="0" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.25" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
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
        <symbol type="line" clip_to_extent="1" alpha="1" name="4" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="131,194,164,255" k="line_color"/>
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
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="0,0,0,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.15" k="line_width"/>
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
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
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
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="4" k="offset_along_line"/>
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
            <symbol type="marker" clip_to_extent="1" alpha="1" name="@4@2" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="0,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="circle" k="name"/>
                <prop v="0,0" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="35,35,35,255" k="outline_color"/>
                <prop v="no" k="outline_style"/>
                <prop v="0" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.25" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
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
        <symbol type="line" clip_to_extent="1" alpha="1" name="5" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;10" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="131,194,164,255" k="line_color"/>
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
            <prop v="1" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
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
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;12" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="0,0,0,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.15" k="line_width"/>
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
          <layer enabled="1" locked="0" class="MarkerLine" pass="0">
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
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="15" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0" k="offset"/>
            <prop v="4" k="offset_along_line"/>
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
            <symbol type="marker" clip_to_extent="1" alpha="1" name="@5@2" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                <prop v="0" k="angle"/>
                <prop v="square" k="cap_style"/>
                <prop v="0,0,0,255" k="color"/>
                <prop v="1" k="horizontal_anchor_point"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="circle" k="name"/>
                <prop v="0,0" k="offset"/>
                <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                <prop v="MM" k="offset_unit"/>
                <prop v="35,35,35,255" k="outline_color"/>
                <prop v="no" k="outline_style"/>
                <prop v="0" k="outline_width"/>
                <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                <prop v="MM" k="outline_width_unit"/>
                <prop v="diameter" k="scale_method"/>
                <prop v="0.25" k="size"/>
                <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                <prop v="MM" k="size_unit"/>
                <prop v="1" k="vertical_anchor_point"/>
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
        <symbol type="line" clip_to_extent="1" alpha="1" name="6" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
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
            <prop v="255,1,5,255" k="line_color"/>
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
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{c77ae235-02f7-4c54-b065-f9769ec9a346}">
      <rule description="Texto aproximado" key="{0b29380e-1313-49c1-9750-662fec3d60b6}" filter="&quot;geometria_aproximada&quot; = 1 and  &quot;exibir_rotulo_aproximado&quot; = 1">
        <settings calloutType="simple">
          <text-style fontSize="6" multilineHeight="1" namedStyle="Condensed" allowHtml="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" blendMode="0" fontLetterSpacing="0" textOrientation="horizontal" fontItalic="0" fieldName="'APROXIMADO'" textColor="75,75,75,255" capitalization="1" fontUnderline="0" useSubstitutions="0" fontStrikeout="0" legendString="Aa" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" textOpacity="1" fontKerning="1" fontWeight="50" isExpression="1" fontWordSpacing="0">
            <families/>
            <text-buffer bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferOpacity="1" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskType="0" maskSize="0.20000000000000001" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="1" maskOpacity="1" maskedSymbolLayers="auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},1,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},2,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},3,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},4,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},5,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},6,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},7,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},8,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},9,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},10,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},11,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},12,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},13,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},14,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},15,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},16,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},17,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},18,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},19,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},20,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},21,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},22,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},23,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},24,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},25,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},26,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},27,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},28,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},29,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},30,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},31,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},32,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},33,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},34,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},35,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},36,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},37,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},38,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},39,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},40,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},41,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},42,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},43,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},44,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},45,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},46,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},47,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},48,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},49,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},50,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},51,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},52,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},53,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},54,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},55,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},56,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},57,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},58,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},59,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},60,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},61,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},62,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},63,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},64,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},65,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},66,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},67,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},68,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},69,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},70,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},71,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},72,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},73,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},74,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},75,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},76,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},77,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},78,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},79,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},80,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},81,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},82,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},83,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},84,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},85,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},86,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},87,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},88,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},89,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},90,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},91,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},92,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},93,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},94,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},95,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},96,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},97,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},98,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},99,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},100,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},101,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},102,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},103,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},104,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},105,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},106,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},107,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},108,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},109,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},110,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},111,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},112,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},113,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},114,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},115,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},116,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},117,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},118,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},119,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},120,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},121,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},122,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},123,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},124,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},125,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},126,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},127,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},128,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},129,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},130,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},131,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},132,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},133,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},134,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},135,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},136,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},137,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},138,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},139,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},140,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},141,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},142,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},143,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},144,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},145,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},146,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},147,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},1,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},2,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},3,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},4,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},5,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},6,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},7,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},8,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},9,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},10,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},11,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},12,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},13,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},14,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},15,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},16,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},17,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},18,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},19,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},20,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},21,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},22,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},23,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},24,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},25,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},26,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},27,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},28,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},29,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},30,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},31,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},32,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},33,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},34,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},35,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},36,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},37,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},38,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},39,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},40,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},41,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},42,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},43,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},44,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},45,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},46,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},47,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},48,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},49,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},50,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},51,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},52,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},53,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},54,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},55,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},56,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},57,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},58,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},59,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},60,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},61,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},62,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},63,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},64,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},65,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},66,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},67,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},68,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},69,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},70,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},71,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},72,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},73,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},74,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},75,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},76,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},77,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},78,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},79,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},80,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},81,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},82,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},83,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},84,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},85,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},86,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},87,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},88,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},89,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},90,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},91,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},92,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},93,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},94,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},95,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},96,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},97,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},98,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},99,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},100,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},101,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},102,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},103,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},104,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},105,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},106,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},107,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},108,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},109,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},110,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},111,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},112,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},113,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},114,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},115,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},116,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},117,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},118,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},119,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},120,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},121,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},122,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},123,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},124,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},125,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},126,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},127,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},128,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},129,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},130,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},131,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},132,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},133,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},134,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},135,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},136,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},137,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},138,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},139,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},140,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},141,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},142,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},143,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},144,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},145,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},146,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},147,0"/>
            <background shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeFillColor="255,255,255,255" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSizeType="0" shapeOffsetUnit="MM" shapeOpacity="1" shapeType="0" shapeBorderWidth="0" shapeSVGFile="" shapeSizeY="0" shapeDraw="0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeSizeUnit="MM">
              <symbol type="marker" clip_to_extent="1" alpha="1" name="markerSymbol" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
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
                  <prop v="0" k="angle"/>
                  <prop v="square" k="cap_style"/>
                  <prop v="141,90,153,255" k="color"/>
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
              <symbol type="fill" clip_to_extent="1" alpha="1" name="fillSymbol" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleFill" pass="0">
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
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowScale="100" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowRadius="1.5" shadowDraw="0" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowBlendMode="6" shadowUnder="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" addDirectionSymbol="0" autoWrapLength="0" leftDirectionSymbol="&lt;" decimals="3" formatNumbers="0" wrapChar="" rightDirectionSymbol=">" placeDirectionSymbol="0"/>
          <placement overrunDistanceUnit="MM" centroidWhole="0" lineAnchorClipping="0" rotationAngle="0" layerType="LineGeometry" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" placement="3" preserveRotation="1" geometryGeneratorEnabled="1" repeatDistanceUnits="MM" overrunDistance="0" offsetUnits="MM" xOffset="0" centroidInside="0" yOffset="0" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="LineGeometry" offsetType="0" maxCurvedCharAngleOut="-25" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" dist="0.59999999999999998" rotationUnit="AngleDegrees" repeatDistance="200" lineAnchorPercent="0.5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" lineAnchorType="0" placementFlags="10" priority="5" fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM"/>
          <rendering fontMinPixelSize="3" mergeLines="1" upsidedownLabels="0" scaleMax="0" fontLimitPixelSize="0" unplacedVisibility="0" drawLabels="1" fontMaxPixelSize="10000" obstacleType="1" obstacleFactor="1" scaleVisibility="0" obstacle="0" zIndex="0" minFeatureSize="0" limitNumLabels="0" maxNumLabels="2000" labelPerPart="0" displayAll="0" scaleMin="0"/>
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
              <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
