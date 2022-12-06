<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.24.3-Tisler">
  <renderer-v2 referencescale="-1" type="mergedFeatureRenderer" forceraster="0" symbollevels="0" enableorderby="0">
    <renderer-v2 referencescale="-1" type="RuleRenderer" forceraster="0" symbollevels="0" enableorderby="0">
      <rules key="{3d3f8704-48a8-47c0-9af0-d9ff5f0488b4}">
        <rule symbol="0" description="País" filter=" &quot;tipo&quot; = 1 and &quot;sobreposto&quot; = 2" label="A10416A" key="{b515951c-f298-4043-9856-63b197a6223e}"/>
        <rule symbol="1" description="País" filter=" &quot;tipo&quot; = 1 and &quot;sobreposto&quot; = 1" label="A10416A sobreposto" key="{0cb6e486-7569-489e-becf-634c9180e792}"/>
        <rule symbol="2" description="Unidade Federação" filter=" &quot;tipo&quot; = 2 and &quot;sobreposto&quot; = 2" label="A10421A" key="{9f3d9e3d-4ec4-4042-b2d4-48a9b1d7c820}"/>
        <rule symbol="3" description="Unidade Federação" filter=" &quot;tipo&quot; = 2 and &quot;sobreposto&quot; = 1" label="A10421A sobreposto" key="{f9fb817d-9da6-4715-89ef-1632dd69f38d}"/>
        <rule symbol="4" description="Município" filter=" &quot;tipo&quot; = 3" label="A10414A" key="{f3d331e0-e69e-4f39-88ce-22ad4f0019cf}"/>
        <rule symbol="5" filter="ELSE" key="{33ae1b89-07f8-41c9-9eb2-52c9a26303c0}"/>
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
              <Option value="199,91,91,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="2" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="1" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="7;1;2;1;2;1" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="miter" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.5" type="QString" name="line_width"/>
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
              <Option value="1" type="QString" name="tweak_dash_pattern_on_corners"/>
              <Option value="1" type="QString" name="use_custom_dash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
              <Option value="14;28" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="199,91,91,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="2" type="QString" name="line_width"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')" type="QString" name="expression"/>
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
              <Option value="7;1;2;1;2;29" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="miter" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.5" type="QString" name="line_width"/>
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
              <Option value="199,91,91,255" type="QString" name="line_color"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('marrom-escuro202-42_194-151-165_#C297A5')" type="QString" name="expression"/>
                    <Option value="3" type="int" name="type"/>
                  </Option>
                </Option>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="1" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="7;3.4" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="miter" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.3" type="QString" name="line_width"/>
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
              <Option value="1" type="QString" name="tweak_dash_pattern_on_corners"/>
              <Option value="1" type="QString" name="use_custom_dash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
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
              <Option value="10.4" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="8.7" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="0" type="QString" name="rotate"/>
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
                  <Option value="0,0,0,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.4" type="QString" name="size"/>
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
              <Option value="10.4;20.8" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="199,91,91,255" type="QString" name="line_color"/>
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
                <Option value="" type="QString" name="name"/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="outlineColor">
                    <Option value="true" type="bool" name="active"/>
                    <Option value="project_color('marrom-escuro202-42_194-151-165_#C297A5')" type="QString" name="expression"/>
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
              <Option value="7;31.8" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="miter" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.3" type="QString" name="line_width"/>
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
              <Option value="31.2" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="8.7" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="0" type="QString" name="rotate"/>
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
                  <Option value="0,0,0,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.4" type="QString" name="size"/>
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
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="12.3" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="8.7" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="0" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@4@0" clip_to_extent="1">
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
                  <Option value="255,255,255,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.4" type="QString" name="size"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
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
          <layer enabled="1" locked="0" pass="0" class="MarkerLine">
            <Option type="Map">
              <Option value="4" type="QString" name="average_angle_length"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="average_angle_map_unit_scale"/>
              <Option value="MM" type="QString" name="average_angle_unit"/>
              <Option value="12.3" type="QString" name="interval"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="interval_map_unit_scale"/>
              <Option value="MM" type="QString" name="interval_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="10.2" type="QString" name="offset_along_line"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_along_line_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_along_line_unit"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="true" type="bool" name="place_on_every_part"/>
              <Option value="Interval" type="QString" name="placements"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="0" type="QString" name="rotate"/>
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <symbol alpha="1" type="marker" force_rhr="0" name="@4@1" clip_to_extent="1">
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
                  <Option value="255,255,255,255" type="QString" name="outline_color"/>
                  <Option value="no" type="QString" name="outline_style"/>
                  <Option value="0" type="QString" name="outline_width"/>
                  <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                  <Option value="MM" type="QString" name="outline_width_unit"/>
                  <Option value="diameter" type="QString" name="scale_method"/>
                  <Option value="0.4" type="QString" name="size"/>
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
                    <Option value="" type="QString" name="name"/>
                    <Option type="Map" name="properties">
                      <Option type="Map" name="fillColor">
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
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="7;5.3" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="0,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.3" type="QString" name="line_width"/>
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
              <Option value="5;2" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="255,0,0,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.4" type="QString" name="line_width"/>
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
    <rules key="{c4bfce98-4c7f-4621-8b76-9b2975fd0efe}">
      <rule description="Texto aproximado" filter="&quot;geometria_aproximada&quot; = 1 and  &quot;exibir_rotulo_aproximado&quot; = 1" key="{b2947aaf-779a-436e-a7af-324575473cd4}">
        <settings calloutType="simple">
          <text-style multilineHeight="1" namedStyle="Condensed" fontSizeUnit="Point" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="75,75,75,255" blendMode="0" capitalization="1" textOpacity="1" fontSize="6" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fieldName="'APROXIMADO'" isExpression="1" fontKerning="1" allowHtml="0" fontItalic="0" fontLetterSpacing="0" fontStrikeout="0" legendString="Aa" textOrientation="horizontal" fontUnderline="0" fontWordSpacing="0">
            <families/>
            <text-buffer bufferSizeUnits="MM" bufferNoFill="1" bufferOpacity="1" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferSize="1" bufferJoinStyle="128"/>
            <text-mask maskSizeUnits="MM" maskOpacity="1" maskType="0" maskedSymbolLayers="auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},1,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},2,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},3,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},4,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},5,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},6,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},7,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},8,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},9,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},10,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},11,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},12,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},13,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},14,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},15,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},16,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},17,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},18,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},19,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},20,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},21,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},22,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},23,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},24,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},25,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},26,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},27,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},28,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},29,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},30,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},31,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},32,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},33,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},34,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},35,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},36,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},37,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},38,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},39,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},40,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},41,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},42,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},43,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},44,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},45,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},46,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},47,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},48,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},49,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},50,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},51,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},52,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},53,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},54,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},55,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},56,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},57,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},58,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},59,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},60,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},61,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},62,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},63,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},64,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},65,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},66,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},67,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},68,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},69,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},70,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},71,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},72,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},73,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},74,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},75,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},76,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},77,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},78,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},79,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},80,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},81,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},82,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},83,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},84,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},85,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},86,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},87,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},88,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},89,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},90,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},91,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},92,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},93,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},94,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},95,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},96,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},97,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},98,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},99,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},100,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},101,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},102,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},103,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},104,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},105,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},106,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},107,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},108,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},109,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},110,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},111,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},112,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},113,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},114,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},115,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},116,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},117,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},118,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},119,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},120,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},121,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},122,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},123,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},124,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},125,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},126,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},127,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},128,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},129,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},130,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},131,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},132,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},133,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},134,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},135,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},136,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},137,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},138,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},139,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},140,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},141,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},142,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},143,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},144,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},145,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},146,0;auxiliar_moldura_baa33b0f_85ee_4ac4_91a5_7f338bddf1c3,{cf72ccbc-6b0b-4d13-83a9-e296487371e5},147,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},1,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},2,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},3,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},4,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},5,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},6,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},7,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},8,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},9,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},10,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},11,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},12,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},13,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},14,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},15,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},16,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},17,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},18,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},19,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},20,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},21,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},22,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},23,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},24,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},25,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},26,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},27,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},28,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},29,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},30,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},31,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},32,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},33,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},34,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},35,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},36,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},37,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},38,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},39,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},40,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},41,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},42,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},43,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},44,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},45,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},46,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},47,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},48,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},49,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},50,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},51,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},52,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},53,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},54,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},55,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},56,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},57,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},58,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},59,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},60,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},61,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},62,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},63,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},64,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},65,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},66,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},67,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},68,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},69,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},70,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},71,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},72,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},73,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},74,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},75,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},76,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},77,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},78,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},79,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},80,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},81,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},82,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},83,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},84,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},85,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},86,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},87,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},88,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},89,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},90,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},91,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},92,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},93,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},94,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},95,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},96,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},97,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},98,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},99,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},100,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},101,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},102,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},103,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},104,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},105,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},106,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},107,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},108,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},109,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},110,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},111,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},112,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},113,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},114,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},115,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},116,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},117,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},118,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},119,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},120,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},121,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},122,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},123,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},124,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},125,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},126,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},127,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},128,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},129,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},130,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},131,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},132,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},133,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},134,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},135,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},136,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},137,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},138,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},139,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},140,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},141,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},142,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},143,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},144,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},145,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},146,0;auxiliar_moldura_ba41b9bb_fcf6_4bc4_be5d_a28d0dd1cbf8,{18922620-b19a-41f4-a023-67c9b169acaa},147,0" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSize="0.20000000000000001"/>
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
          <placement offsetUnits="MM" geometryGeneratorEnabled="1" dist="0.59999999999999998" geometryGeneratorType="LineGeometry" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" lineAnchorType="0" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" fitInPolygonOnly="0" repeatDistance="200" repeatDistanceUnits="MM" placement="3" centroidInside="0" overrunDistanceUnit="MM" offsetType="0" rotationAngle="0" preserveRotation="1" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" yOffset="0" layerType="LineGeometry" maxCurvedCharAngleIn="25" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" distMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" placementFlags="10" xOffset="0" maxCurvedCharAngleOut="-25" distUnits="MM"/>
          <rendering obstacleType="1" limitNumLabels="0" minFeatureSize="0" displayAll="0" scaleMin="0" scaleVisibility="0" obstacle="0" scaleMax="0" fontMinPixelSize="3" zIndex="0" drawLabels="1" labelPerPart="0" fontMaxPixelSize="10000" fontLimitPixelSize="0" upsidedownLabels="0" mergeLines="1" maxNumLabels="2000" obstacleFactor="1" unplacedVisibility="0"/>
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
