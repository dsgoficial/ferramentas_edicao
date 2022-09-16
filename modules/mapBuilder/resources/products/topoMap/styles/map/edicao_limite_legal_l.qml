<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 symbollevels="0" referencescale="-1" enableorderby="0" forceraster="0" type="mergedFeatureRenderer">
    <renderer-v2 symbollevels="0" referencescale="-1" enableorderby="0" forceraster="0" type="RuleRenderer">
      <rules key="{3d3f8704-48a8-47c0-9af0-d9ff5f0488b4}">
        <rule key="{b515951c-f298-4043-9856-63b197a6223e}" symbol="0" filter=" &quot;tipo&quot; = 1 and &quot;sobreposto&quot; = 2" description="País" label="A10416A"/>
        <rule key="{0cb6e486-7569-489e-becf-634c9180e792}" symbol="1" filter=" &quot;tipo&quot; = 1 and &quot;sobreposto&quot; = 1" description="País" label="A10416A sobreposto"/>
        <rule key="{9f3d9e3d-4ec4-4042-b2d4-48a9b1d7c820}" symbol="2" filter=" &quot;tipo&quot; = 2 and &quot;sobreposto&quot; = 2" description="Unidade Federação" label="A10421A"/>
        <rule key="{f9fb817d-9da6-4715-89ef-1632dd69f38d}" symbol="3" filter=" &quot;tipo&quot; = 2 and &quot;sobreposto&quot; = 1" description="Unidade Federação" label="A10421A sobreposto"/>
        <rule key="{f3d331e0-e69e-4f39-88ce-22ad4f0019cf}" symbol="4" filter=" &quot;tipo&quot; = 3" description="Município" label="A10414A"/>
        <rule key="{33ae1b89-07f8-41c9-9eb2-52c9a26303c0}" symbol="5" filter="ELSE"/>
      </rules>
      <symbols>
        <symbol alpha="1" clip_to_extent="1" name="0" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="199,91,91,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="2"/>
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
            <prop k="line_color" v="199,91,91,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="2"/>
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
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="1"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="7;1;2;1;2;1"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="miter"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
              <Option name="tweak_dash_pattern_on_corners" type="QString" value="1"/>
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="1"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="7;1;2;1;2;1"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="miter"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
            <prop k="tweak_dash_pattern_on_corners" v="1"/>
            <prop k="use_custom_dash" v="1"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
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
        </symbol>
        <symbol alpha="1" clip_to_extent="1" name="1" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="14;28"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="199,91,91,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="2"/>
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
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="14;28"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="199,91,91,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="2"/>
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
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="7;1;2;1;2;29"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="miter"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="7;1;2;1;2;29"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="miter"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol alpha="1" clip_to_extent="1" name="2" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="199,91,91,255"/>
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
            <prop k="line_color" v="199,91,91,255"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-42_194-151-165_#C297A5')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="1"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="7;3.4"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="miter"/>
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
              <Option name="tweak_dash_pattern_on_corners" type="QString" value="1"/>
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="1"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="7;3.4"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="miter"/>
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
            <prop k="tweak_dash_pattern_on_corners" v="1"/>
            <prop k="use_custom_dash" v="1"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
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
          <layer class="MarkerLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="10.4"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="8.7"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="0"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="10.4"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="8.7"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" name="@2@2" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.4"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.4"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
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
        <symbol alpha="1" clip_to_extent="1" name="3" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="10.4;20.8"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="199,91,91,255"/>
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
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="10.4;20.8"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="199,91,91,255"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-42_194-151-165_#C297A5')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="7;31.8"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="miter"/>
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
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="7;31.8"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="miter"/>
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
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer class="MarkerLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="31.2"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="8.7"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="0"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="31.2"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="8.7"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" name="@3@2" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="0,0,0,255"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.4"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                <prop k="outline_color" v="0,0,0,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.4"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
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
        <symbol alpha="1" clip_to_extent="1" name="4" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="MarkerLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.3"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="8.7"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="0"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.3"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="8.7"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" name="@4@0" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="255,255,255,255"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.4"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                <prop k="outline_color" v="255,255,255,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.4"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer class="MarkerLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="12.3"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_along_line" type="QString" value="10.2"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="place_on_every_part" type="bool" value="true"/>
              <Option name="placements" type="QString" value="Interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="0"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="interval" v="12.3"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_along_line" v="10.2"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="place_on_every_part" v="true"/>
            <prop k="placements" v="Interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" clip_to_extent="1" name="@4@1" type="marker" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                <Option type="Map">
                  <Option name="angle" type="QString" value="0"/>
                  <Option name="cap_style" type="QString" value="square"/>
                  <Option name="color" type="QString" value="0,0,0,255"/>
                  <Option name="horizontal_anchor_point" type="QString" value="1"/>
                  <Option name="joinstyle" type="QString" value="bevel"/>
                  <Option name="name" type="QString" value="circle"/>
                  <Option name="offset" type="QString" value="0,0"/>
                  <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="offset_unit" type="QString" value="MM"/>
                  <Option name="outline_color" type="QString" value="255,255,255,255"/>
                  <Option name="outline_style" type="QString" value="no"/>
                  <Option name="outline_width" type="QString" value="0"/>
                  <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="outline_width_unit" type="QString" value="MM"/>
                  <Option name="scale_method" type="QString" value="diameter"/>
                  <Option name="size" type="QString" value="0.4"/>
                  <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  <Option name="size_unit" type="QString" value="MM"/>
                  <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                <prop k="outline_color" v="255,255,255,255"/>
                <prop k="outline_style" v="no"/>
                <prop k="outline_width" v="0"/>
                <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="outline_width_unit" v="MM"/>
                <prop k="scale_method" v="diameter"/>
                <prop k="size" v="0.4"/>
                <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                <prop k="size_unit" v="MM"/>
                <prop k="vertical_anchor_point" v="1"/>
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="7;5.3"/>
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
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="7;5.3"/>
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
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol alpha="1" clip_to_extent="1" name="5" type="line" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
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
              <Option name="line_color" type="QString" value="255,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.4"/>
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
            <prop k="line_color" v="255,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.4"/>
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
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{4d82a451-c107-48c2-aa7c-048f6ad80dd6}">
      <rule key="{0a8cb042-d61c-4641-acc8-cc5421dfe1ce}" filter=" &quot;geometria_aproximada&quot; = 1 and  &quot;exibir_rotulo_aproximado&quot; = 1 " description="Texto aproximado">
        <settings calloutType="simple">
          <text-style fontItalic="0" textColor="0,0,0,255" textOpacity="1" fontWeight="50" blendMode="0" multilineHeight="1" legendString="Aa" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontStrikeout="0" isExpression="1" fontLetterSpacing="0" fontFamily="Noto Sans" fieldName="'APROXIMADO'" textOrientation="horizontal" namedStyle="Condensed" capitalization="1" useSubstitutions="0" fontWordSpacing="0" allowHtml="0" fontUnderline="0" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="6">
            <families/>
            <text-buffer bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128" bufferColor="255,255,255,255" bufferNoFill="1" bufferOpacity="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <text-mask maskEnabled="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskSize="0.20000000000000001" maskSizeUnits="MM" maskedSymbolLayers="auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},1,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},2,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},3,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},4,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},5,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},6,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},7,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},8,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},9,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},10,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},11,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},12,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},13,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},14,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},15,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},16,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},17,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},18,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},19,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},20,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},21,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},22,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},23,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},24,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},25,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},26,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},27,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},28,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},29,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},30,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},31,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},32,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},33,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},34,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},35,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},36,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},37,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},38,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},39,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},40,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},41,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},42,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},43,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},44,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},45,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},46,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},47,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},48,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},49,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},50,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},51,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},52,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},53,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},54,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},55,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},56,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},57,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},58,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},59,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},60,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},61,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},62,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},63,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},64,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},65,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},66,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},67,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},68,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},69,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},70,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},71,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},72,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},73,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},74,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},75,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},76,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},77,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},78,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},79,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},80,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},81,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},82,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},83,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},84,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},85,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},86,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},87,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},88,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},89,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},90,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},91,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},92,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},93,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},94,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},95,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},96,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},97,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},98,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},99,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},100,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},101,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},102,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},103,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},104,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},105,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},106,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},107,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},108,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},109,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},110,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},111,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},112,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},113,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},114,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},115,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},116,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},117,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},118,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},119,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},120,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},121,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},122,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},123,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},124,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},125,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},126,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},127,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},128,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},129,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},130,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},131,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},132,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},133,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},134,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},135,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},136,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},137,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},138,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},139,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},140,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},141,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},142,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},143,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},144,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},145,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},146,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},147,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},1,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},2,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},3,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},4,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},5,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},6,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},7,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},8,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},9,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},10,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},11,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},12,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},13,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},14,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},15,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},16,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},17,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},18,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},19,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},20,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},21,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},22,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},23,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},24,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},25,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},26,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},27,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},28,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},29,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},30,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},31,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},32,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},33,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},34,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},35,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},36,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},37,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},38,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},39,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},40,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},41,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},42,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},43,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},44,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},45,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},46,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},47,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},48,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},49,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},50,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},51,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},52,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},53,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},54,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},55,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},56,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},57,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},58,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},59,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},60,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},61,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},62,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},63,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},64,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},65,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},66,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},67,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},68,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},69,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},70,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},71,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},72,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},73,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},74,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},75,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},76,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},77,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},78,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},79,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},80,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},81,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},82,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},83,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},84,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},85,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},86,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},87,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},88,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},89,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},90,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},91,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},92,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},93,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},94,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},95,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},96,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},97,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},98,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},99,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},100,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},101,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},102,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},103,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},104,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},105,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},106,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},107,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},108,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},109,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},110,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},111,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},112,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},113,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},114,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},115,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},116,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},117,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},118,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},119,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},120,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},121,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},122,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},123,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},124,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},125,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},126,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},127,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},128,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},129,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},130,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},131,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},132,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},133,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},134,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},135,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},136,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},137,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},138,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},139,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},140,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},141,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},142,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},143,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},144,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},145,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},146,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},147,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRotationType="0" shapeSizeY="0" shapeOffsetX="0" shapeSizeUnit="MM" shapeOffsetY="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeRadiiY="0" shapeType="0" shapeJoinStyle="64" shapeDraw="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeSizeType="0" shapeRotation="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="">
              <symbol alpha="1" clip_to_extent="1" name="markerSymbol" type="marker" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="141,90,153,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="0,0,0,255"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" clip_to_extent="1" name="fillSymbol" type="fill" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleFill" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowDraw="0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" formatNumbers="0" addDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" decimals="3" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" plussign="0" wrapChar="" reverseDirectionSymbol="0" placeDirectionSymbol="0"/>
          <placement offsetType="0" dist="0.59999999999999998" priority="5" repeatDistanceUnits="MM" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" distUnits="MM" yOffset="0" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" preserveRotation="1" centroidInside="0" lineAnchorPercent="0.5" geometryGeneratorEnabled="1" offsetUnits="MM" repeatDistance="200" lineAnchorType="0" centroidWhole="0" xOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="LineGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" polygonPlacementFlags="2" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" overrunDistance="0" rotationUnit="AngleDegrees" placement="3" maxCurvedCharAngleIn="25" layerType="LineGeometry"/>
          <rendering labelPerPart="0" drawLabels="1" scaleMin="0" maxNumLabels="2000" fontMinPixelSize="3" limitNumLabels="0" zIndex="0" obstacleFactor="1" fontMaxPixelSize="10000" obstacle="1" obstacleType="1" fontLimitPixelSize="0" scaleMax="0" minFeatureSize="0" scaleVisibility="0" unplacedVisibility="0" displayAll="0" upsidedownLabels="0" mergeLines="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{a2f635f3-c10a-495d-a427-27ef76ae95f5}" filter="&quot;geometria_aproximada&quot; = 1 and  &quot;exibir_rotulo_aproximado&quot; = 1" description="Names">
        <settings calloutType="simple">
          <text-style fontItalic="0" textColor="0,0,0,255" textOpacity="1" fontWeight="50" blendMode="0" multilineHeight="2" legendString="Aa" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontStrikeout="0" isExpression="0" fontLetterSpacing="0" fontFamily="Noto Sans" fieldName="nome" textOrientation="horizontal" namedStyle="Condensed" capitalization="1" useSubstitutions="0" fontWordSpacing="0" allowHtml="0" fontUnderline="0" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="6">
            <families/>
            <text-buffer bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128" bufferColor="255,255,255,255" bufferNoFill="1" bufferOpacity="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <text-mask maskEnabled="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskSize="0.20000000000000001" maskSizeUnits="MM" maskedSymbolLayers="auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},1,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},2,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},3,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},4,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},5,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},6,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},7,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},8,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},9,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},10,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},11,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},12,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},13,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},14,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},15,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},16,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},17,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},18,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},19,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},20,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},21,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},22,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},23,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},24,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},25,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},26,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},27,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},28,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},29,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},30,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},31,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},32,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},33,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},34,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},35,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},36,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},37,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},38,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},39,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},40,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},41,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},42,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},43,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},44,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},45,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},46,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},47,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},48,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},49,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},50,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},51,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},52,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},53,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},54,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},55,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},56,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},57,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},58,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},59,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},60,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},61,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},62,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},63,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},64,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},65,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},66,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},67,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},68,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},69,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},70,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},71,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},72,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},73,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},74,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},75,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},76,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},77,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},78,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},79,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},80,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},81,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},82,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},83,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},84,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},85,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},86,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},87,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},88,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},89,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},90,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},91,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},92,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},93,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},94,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},95,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},96,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},97,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},98,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},99,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},100,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},101,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},102,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},103,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},104,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},105,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},106,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},107,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},108,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},109,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},110,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},111,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},112,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},113,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},114,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},115,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},116,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},117,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},118,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},119,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},120,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},121,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},122,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},123,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},124,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},125,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},126,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},127,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},128,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},129,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},130,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},131,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},132,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},133,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},134,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},135,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},136,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},137,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},138,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},139,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},140,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},141,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},142,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},143,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},144,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},145,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},146,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},147,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRotationType="0" shapeSizeY="0" shapeOffsetX="0" shapeSizeUnit="MM" shapeOffsetY="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeRadiiY="0" shapeType="0" shapeJoinStyle="64" shapeDraw="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeSizeType="0" shapeRotation="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="">
              <symbol alpha="1" clip_to_extent="1" name="markerSymbol" type="marker" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="141,90,153,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="0,0,0,255"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" clip_to_extent="1" name="fillSymbol" type="fill" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleFill" enabled="1" locked="0" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowDraw="0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" formatNumbers="0" addDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" decimals="3" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" plussign="0" wrapChar="|" reverseDirectionSymbol="0" placeDirectionSymbol="0"/>
          <placement offsetType="0" dist="0" priority="5" repeatDistanceUnits="MM" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" distUnits="MM" yOffset="0" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" preserveRotation="1" centroidInside="0" lineAnchorPercent="0.5" geometryGeneratorEnabled="1" offsetUnits="MM" repeatDistance="200" lineAnchorType="0" centroidWhole="0" xOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="LineGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distMapUnitScale="3x:0,0,0,0,0,0" placementFlags="9" polygonPlacementFlags="2" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" overrunDistance="0" rotationUnit="AngleDegrees" placement="2" maxCurvedCharAngleIn="25" layerType="LineGeometry"/>
          <rendering labelPerPart="0" drawLabels="1" scaleMin="0" maxNumLabels="2000" fontMinPixelSize="3" limitNumLabels="0" zIndex="0" obstacleFactor="1" fontMaxPixelSize="10000" obstacle="1" obstacleType="1" fontLimitPixelSize="0" scaleMax="0" minFeatureSize="0" scaleVisibility="0" unplacedVisibility="0" displayAll="0" upsidedownLabels="0" mergeLines="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
  <layerGeometryType>1</layerGeometryType>
</qgis>
