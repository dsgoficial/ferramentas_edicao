<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis autoRefreshMode="Disabled" autoRefreshTime="0" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" layerType="Vector" maxScale="0" minScale="100000000" simplifyAlgorithm="0" simplifyDrawingHints="1" simplifyDrawingTol="1" simplifyLocal="1" simplifyMaxScale="1" styleCategories="Symbology|Labeling|Rendering" symbologyReferenceScale="-1" version="4.2.0-Belém do Pará">
  <renderer-v2 enableorderby="0" forceraster="0" referencescale="-1" symbollevels="0" type="mergedFeatureRenderer">
    <renderer-v2 enableorderby="0" forceraster="0" referencescale="-1" symbollevels="0" type="RuleRenderer">
      <rules key="{ff3995e7-5994-44a3-800a-da9a9d3e9d9f}">
        <rule description="Terra Indigena" filter="tipo = 2 and sobreposto = 2" key="{1e2d5c72-25d9-463c-98b6-25688afbcd8e}" label="A10418A" symbol="0"/>
        <rule description="Terra Indigena" filter="tipo = 2 and sobreposto = 1" key="{4cb62d00-cb4e-430b-9e64-a271c5211c1c}" label="A10418A tracejado" symbol="1"/>
        <rule description="Unidade de conservação" filter="tipo in (5,24,25,26,27,28,29,30,31,32,33,34,35) and sobreposto = 2" key="{e1be546a-ba1d-4c08-85d2-a2e56a7b693b}" label="A10420A" symbol="2"/>
        <rule description="Unidade de conservação" filter="tipo in  (5,24,25,26,27,28,29,30,31,32,33,34,35) and sobreposto = 1" key="{f48524de-be52-4185-a244-22fdc28e54b1}" label="A10420A sobreposto" symbol="3"/>
        <rule description="Unidade de conservação" filter="tipo = 36 and sobreposto = 2" key="{63b39a76-52b4-4be5-9fcb-60910375814a}" label="A10408A" symbol="4"/>
        <rule description="Unidade de conservação" filter="tipo = 36 and sobreposto = 1" key="{6f8527a2-61b5-4534-8c2f-b780432d5412}" label="A10408A sobreposto" symbol="5"/>
        <rule filter="ELSE" key="{2baa4cee-ab16-4f3e-852e-823d79eaa55f}" symbol="6"/>
      </rules>
      <symbols>
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="0" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{02f7d113-0899-4b06-b25b-2802a463fcdb}" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="40,168,40,255,rgb:0.1568628,0.6588235,0.1568628,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza-12_211-211-211_#D3D3D3')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" id="{d3446475-0bbb-4259-a0db-7cb7666e4d69}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;2"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="201,201,201,255,rgb:0.7882353,0.7882353,0.7882353,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.15"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" id="{c103fd1e-d87f-4632-a4d3-fdfe22743fdb}" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="blank_segments_unit" type="QString" value="MapUnit"/>
              <Option name="interval" type="QString" value="5"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="4"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            </Option>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="@0@2" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" id="{4007972f-6362-4bcd-ae0e-3ca46f2414e9}" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.25"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
                </Option>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
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
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{3a8ea1ff-7eca-4bde-b633-eda2f0a19c9c}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5;10"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="40,168,40,255,rgb:0.1568628,0.6588235,0.1568628,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza-12_211-211-211_#D3D3D3')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" id="{56b3d18f-bd68-4dd1-91aa-73619704a96b}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;12"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="201,201,201,255,rgb:0.7882353,0.7882353,0.7882353,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.15"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" id="{1053e117-1f6c-4e97-9f6b-8873e20a73e7}" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="blank_segments_unit" type="QString" value="MapUnit"/>
              <Option name="interval" type="QString" value="15"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="4"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            </Option>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="@1@2" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" id="{70785d7d-7756-4627-b2eb-53e987368135}" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.25"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
                </Option>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('verde346-100_23-158-106_#179E6A')"/>
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
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="2" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{4666c777-508c-40e5-9c21-03151b4dd022}" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="131,194,164,255,rgb:0.5137255,0.7607843,0.6431373,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('verde346-42_131-194-164_#83C2A4')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" id="{1de14b1d-cea4-415f-aa47-f225a3a67c94}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;2"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.15"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" id="{68a61859-d316-4361-afc3-a70bda5e5662}" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="blank_segments_unit" type="QString" value="MapUnit"/>
              <Option name="interval" type="QString" value="5"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="4"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            </Option>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="@2@2" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" id="{04ca016c-d8d7-48d2-82ad-cd71fb335b6a}" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.25"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
                </Option>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="3" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{f51e7938-639c-41d8-8931-f702486fb48f}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5;10"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="131,194,164,255,rgb:0.5137255,0.7607843,0.6431373,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('verde346-42_131-194-164_#83C2A4')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" id="{9413985d-3711-4111-9518-d7f22ace9626}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;12"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.15"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" id="{4b271fb9-c725-43d6-b991-6ed16f42a6dc}" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="blank_segments_unit" type="QString" value="MapUnit"/>
              <Option name="interval" type="QString" value="15"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="4"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            </Option>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="@3@2" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" id="{d2bc5979-385b-431d-973f-0eec71b0c777}" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.25"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
                </Option>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="4" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{a7637cc7-16f9-4551-8ea9-4a808ba36e83}" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="131,194,164,255,rgb:0.5137255,0.7607843,0.6431373,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza-42_158-158-158_#9E9E9E')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" id="{26ffaa18-b616-4f13-8d58-1617cb57edea}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;2"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.15"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" id="{7150b6b1-d2cb-4591-8b65-3eec504c6ac6}" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="blank_segments_unit" type="QString" value="MapUnit"/>
              <Option name="interval" type="QString" value="5"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="4"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            </Option>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="@4@2" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" id="{7ae5841e-1354-4870-b24d-f14b4bb60361}" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.25"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
                </Option>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="5" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{abd559a9-da7a-4b12-b8d4-6e116a5499ec}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5;10"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="131,194,164,255,rgb:0.5137255,0.7607843,0.6431373,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('cinza-42_158-158-158_#9E9E9E')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" id="{e9c717a5-5b54-4a0f-aecc-35dc35b75934}" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;12"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.15"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" id="{ce66a689-e1aa-45c8-9250-f0ad0e0af000}" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="blank_segments_unit" type="QString" value="MapUnit"/>
              <Option name="interval" type="QString" value="15"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="4"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            </Option>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="@5@2" type="marker">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" id="{3e71a219-e6ed-4f7f-a063-b7f73ac30fff}" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.25"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
                </Option>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties" type="Map">
                      <Option name="fillColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                        <Option name="type" type="int" value="3"/>
                      </Option>
                      <Option name="outlineColor" type="Map">
                        <Option name="active" type="bool" value="true"/>
                        <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
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
        <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="6" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" id="{3e57ed90-48d8-4d96-9ab4-6b26f2a2b21f}" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="255,1,5,255,rgb:1,0.0039216,0.0196078,1"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1.86"/>
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
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </symbols>
      <data-defined-properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties"/>
          <Option name="type" type="QString" value="collection"/>
        </Option>
      </data-defined-properties>
    </renderer-v2>
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" id="{f16e0820-a2b6-4633-98cc-f2371853d977}" locked="0" pass="0">
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
            <Option name="line_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.26"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="rule-based">
    <rules key="{c286082a-a28d-4ea2-b5c1-3e5005206f2a}">
      <rule active="0" description="Texto aproximado" filter="&quot;geometria_aproximada&quot; = 1 and  &quot;exibir_rotulo_aproximado&quot; = 1" key="{6aff4f26-eddf-4ccb-8100-e4185591aec5}">
        <settings calloutType="simple">
          <text-style allowHtml="0" blendMode="0" capitalization="1" fieldName="'APROXIMADO'" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="1" legendString="Aa" multilineHeight="1" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="75,75,75,255,rgb:0.2941177,0.2941177,0.2941177,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
            <families/>
            <text-buffer bufferBlendMode="0" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferDraw="0" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
            <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8;"/>
            <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
              <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="141,90,153,255,rgb:0.5529412,0.3529412,0.6,1"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar=""/>
          <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.59999999999999998" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="LineGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="3" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="4" repeatDistance="200" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0" yOffset="0"/>
          <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="1" minFeatureSize="0" obstacle="0" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{812d8c6c-c12e-4ace-9547-28f5a3a498b5}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <layerGeometryType>1</layerGeometryType>
</qgis>
