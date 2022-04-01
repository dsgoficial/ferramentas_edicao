<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.4-Białowieża" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 type="mergedFeatureRenderer" symbollevels="0" referencescale="-1" enableorderby="0" forceraster="0">
    <renderer-v2 type="RuleRenderer" symbollevels="0" referencescale="-1" enableorderby="0" forceraster="0">
      <rules key="{0b5260cb-68fa-44a7-9937-3b05983fbf19}">
        <rule key="{17464ca4-4fc1-4fb8-a046-8ab1bf1be117}" filter=" &quot;indice&quot; = 1 and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" symbol="0" label="Curva de nível mestra"/>
        <rule key="{d41ad47a-a033-4a0d-a10b-3d58f7524766}" filter=" &quot;indice&quot; = 2  and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" symbol="1" label="Curva de nível normal"/>
        <rule key="{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e}" filter=" &quot;indice&quot; = 3  and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" symbol="2" label="Curva de nível auxiliar"/>
        <rule key="{09a89a5b-750d-466c-9afa-3d25e0e04939}" filter=" &quot;indice&quot; = 2 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" symbol="3" label="Curva de nível em depressão (normal)"/>
        <rule key="{9379a06a-1941-48d0-9f50-c56915435c2e}" filter=" &quot;indice&quot; = 1 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" symbol="4" label="Curva de nível em depressão (mestra)"/>
      </rules>
      <symbols>
        <symbol type="line" clip_to_extent="1" name="0" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="0,0,0,179"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.6"/>
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
            <prop v="0,0,0,179" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.6" k="line_width"/>
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
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="250,204,142,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.4"/>
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
            <prop v="250,204,142,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.4" k="line_width"/>
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
        <symbol type="line" clip_to_extent="1" name="1" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="0,0,0,204"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.45"/>
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
            <prop v="0,0,0,204" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.45" k="line_width"/>
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
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="250,204,142,255"/>
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
            <prop v="250,204,142,255" k="line_color"/>
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
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol type="line" clip_to_extent="1" name="2" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="3;0.5"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="0,0,0,204"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.4"/>
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
            <prop v="3;0.5" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="0,0,0,204" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.4" k="line_width"/>
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
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="flat"/>
              <Option type="QString" name="customdash" value="3;0.5"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="250,204,142,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.2"/>
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
            <prop v="flat" k="capstyle"/>
            <prop v="3;0.5" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="250,204,142,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.2" k="line_width"/>
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
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol type="line" clip_to_extent="1" name="3" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" class="HashLine" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="hash_angle" value="0"/>
              <Option type="QString" name="hash_length" value="0.5"/>
              <Option type="QString" name="hash_length_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="hash_length_unit" value="MM"/>
              <Option type="QString" name="interval" value="1.5"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0.5"/>
              <Option type="QString" name="offset_along_line" value="0"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="QString" name="placement" value="interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="0" k="hash_angle"/>
            <prop v="0.5" k="hash_length"/>
            <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
            <prop v="MM" k="hash_length_unit"/>
            <prop v="1.5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0.5" k="offset"/>
            <prop v="0" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="interval" k="placement"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol type="line" clip_to_extent="1" name="@3@0" force_rhr="0" alpha="1">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
                  <Option type="QString" name="line_color" value="0,0,0,204"/>
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
                <prop v="0,0,0,204" k="line_color"/>
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
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
              <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
                  <Option type="QString" name="line_color" value="250,204,142,255"/>
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
                <prop v="250,204,142,255" k="line_color"/>
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
          </layer>
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="0,0,0,204"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.4"/>
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
            <prop v="0,0,0,204" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.4" k="line_width"/>
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
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="250,204,142,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.2"/>
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
            <prop v="250,204,142,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.2" k="line_width"/>
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
        <symbol type="line" clip_to_extent="1" name="4" force_rhr="0" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" class="HashLine" pass="0" locked="0">
            <Option type="Map">
              <Option type="QString" name="average_angle_length" value="4"/>
              <Option type="QString" name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="average_angle_unit" value="MM"/>
              <Option type="QString" name="hash_angle" value="0"/>
              <Option type="QString" name="hash_length" value="0.5"/>
              <Option type="QString" name="hash_length_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="hash_length_unit" value="MM"/>
              <Option type="QString" name="interval" value="1.5"/>
              <Option type="QString" name="interval_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="interval_unit" value="MM"/>
              <Option type="QString" name="offset" value="0.5"/>
              <Option type="QString" name="offset_along_line" value="0"/>
              <Option type="QString" name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_along_line_unit" value="MM"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="QString" name="placement" value="interval"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="rotate" value="1"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="0" k="hash_angle"/>
            <prop v="0.5" k="hash_length"/>
            <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
            <prop v="MM" k="hash_length_unit"/>
            <prop v="1.5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0.5" k="offset"/>
            <prop v="0" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="interval" k="placement"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol type="line" clip_to_extent="1" name="@4@0" force_rhr="0" alpha="1">
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer enabled="1" class="SimpleLine" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="align_dash_pattern" value="0"/>
                  <Option type="QString" name="capstyle" value="flat"/>
                  <Option type="QString" name="customdash" value="5;2"/>
                  <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="customdash_unit" value="MM"/>
                  <Option type="QString" name="dash_pattern_offset" value="0"/>
                  <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
                  <Option type="QString" name="draw_inside_polygon" value="0"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="line_color" value="35,35,35,179"/>
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
                <prop v="flat" k="capstyle"/>
                <prop v="5;2" k="customdash"/>
                <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
                <prop v="MM" k="customdash_unit"/>
                <prop v="0" k="dash_pattern_offset"/>
                <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
                <prop v="MM" k="dash_pattern_offset_unit"/>
                <prop v="0" k="draw_inside_polygon"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="35,35,35,179" k="line_color"/>
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
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
              <layer enabled="1" class="SimpleLine" pass="0" locked="0">
                <Option type="Map">
                  <Option type="QString" name="align_dash_pattern" value="0"/>
                  <Option type="QString" name="capstyle" value="flat"/>
                  <Option type="QString" name="customdash" value="5;2"/>
                  <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="customdash_unit" value="MM"/>
                  <Option type="QString" name="dash_pattern_offset" value="0"/>
                  <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                  <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
                  <Option type="QString" name="draw_inside_polygon" value="0"/>
                  <Option type="QString" name="joinstyle" value="bevel"/>
                  <Option type="QString" name="line_color" value="250,204,142,255"/>
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
                  <Option type="QString" name="use_custom_dash" value="0"/>
                  <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                </Option>
                <prop v="0" k="align_dash_pattern"/>
                <prop v="flat" k="capstyle"/>
                <prop v="5;2" k="customdash"/>
                <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
                <prop v="MM" k="customdash_unit"/>
                <prop v="0" k="dash_pattern_offset"/>
                <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
                <prop v="MM" k="dash_pattern_offset_unit"/>
                <prop v="0" k="draw_inside_polygon"/>
                <prop v="bevel" k="joinstyle"/>
                <prop v="250,204,142,255" k="line_color"/>
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
          </layer>
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="0,0,0,179"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.6"/>
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
            <prop v="0,0,0,179" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.6" k="line_width"/>
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
          <layer enabled="1" class="SimpleLine" pass="0" locked="0">
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
              <Option type="QString" name="line_color" value="250,204,142,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.4"/>
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
            <prop v="250,204,142,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.4" k="line_width"/>
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
    <rules key="{ebcd2ff7-053c-4fe3-b480-ba86f516c6c6}">
      <rule key="{08de14b5-6d3c-47a8-b627-7e19d6666117}" filter="&quot;indice&quot; = 1" description="Cota texto de edição">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" blendMode="0" fontStrikeout="0" fontFamily="Noto Sans" capitalization="1" fieldName="texto_edicao" multilineHeight="1" allowHtml="0" textColor="250,204,142,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontKerning="1" legendString="Aa" fontSize="6" fontWeight="50" fontSizeUnit="Point" isExpression="0" textOpacity="1" textOrientation="horizontal" namedStyle="Condensed Italic" fontUnderline="0" fontItalic="1" fontWordSpacing="0" fontLetterSpacing="0" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferColor="0,0,0,255" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="Point" bufferJoinStyle="128" bufferOpacity="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSize="1">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
                  </Option>
                  <prop v="13" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,0,255" k="color"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="135" k="offset_angle"/>
                  <prop v="2" k="offset_distance"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                  <prop v="1" k="opacity"/>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop v="0" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,255,255" k="color1"/>
                  <prop v="0,255,0,255" k="color2"/>
                  <prop v="0" k="color_type"/>
                  <prop v="0" k="discrete"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="0.5" k="opacity"/>
                  <prop v="gradient" k="rampType"/>
                  <prop v="255,255,255,255" k="single_color"/>
                  <prop v="2" k="spread"/>
                  <prop v="MM" k="spread_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                </effect>
                <effect type="blur">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="5"/>
                    <Option type="QString" name="blur_method" value="1"/>
                    <Option type="QString" name="blur_unit" value="Pixel"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="1"/>
                    <Option type="QString" name="opacity" value="1"/>
                  </Option>
                  <prop v="0" k="blend_mode"/>
                  <prop v="5" k="blur_level"/>
                  <prop v="1" k="blur_method"/>
                  <prop v="Pixel" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="1" k="enabled"/>
                  <prop v="1" k="opacity"/>
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
                  </Option>
                  <prop v="13" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,0,255" k="color"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="135" k="offset_angle"/>
                  <prop v="2" k="offset_distance"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                  <prop v="1" k="opacity"/>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop v="0" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,255,255" k="color1"/>
                  <prop v="0,255,0,255" k="color2"/>
                  <prop v="0" k="color_type"/>
                  <prop v="0" k="discrete"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="0.5" k="opacity"/>
                  <prop v="gradient" k="rampType"/>
                  <prop v="255,255,255,255" k="single_color"/>
                  <prop v="2" k="spread"/>
                  <prop v="MM" k="spread_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskJoinStyle="64" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskType="0" maskedSymbolLayers="elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskEnabled="1" maskSizeUnits="MM" maskSize="0.80000000000000004"/>
            <background shapeSizeUnit="MM" shapeBorderWidthUnit="MM" shapeOffsetUnit="MM" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRotation="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeRadiiX="0" shapeBorderWidth="0" shapeSizeY="0" shapeRadiiUnit="MM" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeDraw="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeSVGFile="" shapeRotationType="0" shapeRadiiY="0" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol type="marker" clip_to_extent="1" name="markerSymbol" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="190,178,151,255"/>
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
                  <prop v="190,178,151,255" k="color"/>
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
              <symbol type="fill" clip_to_extent="1" name="fillSymbol" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleFill" pass="0" locked="0">
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
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadius="1.5" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetDist="1" shadowScale="100" shadowColor="0,0,0,255" shadowUnder="0" shadowRadiusUnit="MM" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" plussign="0" leftDirectionSymbol="&lt;" decimals="3" useMaxLineLengthForAutoWrap="1" wrapChar="" placeDirectionSymbol="0" addDirectionSymbol="0" formatNumbers="0" multilineAlign="0"/>
          <placement preserveRotation="1" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" overrunDistanceUnit="MM" offsetType="0" centroidInside="0" dist="0" layerType="LineGeometry" geometryGeneratorType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" maxCurvedCharAngleOut="-25" polygonPlacementFlags="2" distUnits="MM" quadOffset="4" repeatDistance="150" xOffset="0" rotationAngle="0" geometryGeneratorEnabled="1" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" rotationUnit="AngleDegrees" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" placement="3" overrunDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" lineAnchorType="0" placementFlags="9" yOffset="0" offsetUnits="MM" centroidWhole="0" fitInPolygonOnly="0"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" minFeatureSize="15" scaleVisibility="0" mergeLines="1" obstacleType="0" unplacedVisibility="0" scaleMin="0" scaleMax="0" upsidedownLabels="0" displayAll="0" obstacle="0" drawLabels="1" fontMinPixelSize="3" fontMaxPixelSize="10000" zIndex="0" limitNumLabels="0" obstacleFactor="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Show">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
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
              <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{d2075204-1be4-47f6-888b-5505e4ea09ab}" filter="&quot;indice&quot; = 1 AND &quot;texto_edicao&quot; IS NULL AND array_contains(array_foreach(@map_layers,   layer_property( @element , 'name'))  , 'edicao_simb_cota_mestra_l')" description="Simb cota mestra">
        <settings calloutType="simple">
          <text-style useSubstitutions="1" blendMode="0" fontStrikeout="0" fontFamily="Noto Sans" capitalization="1" fieldName="cota" multilineHeight="1" allowHtml="0" textColor="250,204,142,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontKerning="1" legendString="Aa" fontSize="6" fontWeight="50" fontSizeUnit="Point" isExpression="0" textOpacity="1" textOrientation="horizontal" namedStyle="Condensed Italic" fontUnderline="0" fontItalic="1" fontWordSpacing="0" fontLetterSpacing="0" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferColor="0,0,0,255" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="Point" bufferJoinStyle="128" bufferOpacity="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSize="1">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
                  </Option>
                  <prop v="13" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,0,255" k="color"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="135" k="offset_angle"/>
                  <prop v="2" k="offset_distance"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                  <prop v="1" k="opacity"/>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop v="0" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,255,255" k="color1"/>
                  <prop v="0,255,0,255" k="color2"/>
                  <prop v="0" k="color_type"/>
                  <prop v="0" k="discrete"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="0.5" k="opacity"/>
                  <prop v="gradient" k="rampType"/>
                  <prop v="255,255,255,255" k="single_color"/>
                  <prop v="2" k="spread"/>
                  <prop v="MM" k="spread_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                </effect>
                <effect type="blur">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="5"/>
                    <Option type="QString" name="blur_method" value="1"/>
                    <Option type="QString" name="blur_unit" value="Pixel"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="1"/>
                    <Option type="QString" name="opacity" value="1"/>
                  </Option>
                  <prop v="0" k="blend_mode"/>
                  <prop v="5" k="blur_level"/>
                  <prop v="1" k="blur_method"/>
                  <prop v="Pixel" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="1" k="enabled"/>
                  <prop v="1" k="opacity"/>
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="13"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="0,0,0,255"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="offset_angle" value="135"/>
                    <Option type="QString" name="offset_distance" value="2"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="offset_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="opacity" value="1"/>
                  </Option>
                  <prop v="13" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,0,255" k="color"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="135" k="offset_angle"/>
                  <prop v="2" k="offset_distance"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
                  <prop v="1" k="opacity"/>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option type="QString" name="blend_mode" value="0"/>
                    <Option type="QString" name="blur_level" value="2.645"/>
                    <Option type="QString" name="blur_unit" value="MM"/>
                    <Option type="QString" name="blur_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color1" value="0,0,255,255"/>
                    <Option type="QString" name="color2" value="0,255,0,255"/>
                    <Option type="QString" name="color_type" value="0"/>
                    <Option type="QString" name="discrete" value="0"/>
                    <Option type="QString" name="draw_mode" value="2"/>
                    <Option type="QString" name="enabled" value="0"/>
                    <Option type="QString" name="opacity" value="0.5"/>
                    <Option type="QString" name="rampType" value="gradient"/>
                    <Option type="QString" name="single_color" value="255,255,255,255"/>
                    <Option type="QString" name="spread" value="2"/>
                    <Option type="QString" name="spread_unit" value="MM"/>
                    <Option type="QString" name="spread_unit_scale" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop v="0" k="blend_mode"/>
                  <prop v="2.645" k="blur_level"/>
                  <prop v="MM" k="blur_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
                  <prop v="0,0,255,255" k="color1"/>
                  <prop v="0,255,0,255" k="color2"/>
                  <prop v="0" k="color_type"/>
                  <prop v="0" k="discrete"/>
                  <prop v="2" k="draw_mode"/>
                  <prop v="0" k="enabled"/>
                  <prop v="0.5" k="opacity"/>
                  <prop v="gradient" k="rampType"/>
                  <prop v="255,255,255,255" k="single_color"/>
                  <prop v="2" k="spread"/>
                  <prop v="MM" k="spread_unit"/>
                  <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskJoinStyle="64" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskType="0" maskedSymbolLayers="elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskEnabled="1" maskSizeUnits="MM" maskSize="0.80000000000000004"/>
            <background shapeSizeUnit="MM" shapeBorderWidthUnit="MM" shapeOffsetUnit="MM" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRotation="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeRadiiX="0" shapeBorderWidth="0" shapeSizeY="0" shapeRadiiUnit="MM" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeDraw="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeSVGFile="" shapeRotationType="0" shapeRadiiY="0" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol type="marker" clip_to_extent="1" name="markerSymbol" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="190,178,151,255"/>
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
                  <prop v="190,178,151,255" k="color"/>
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
              <symbol type="fill" clip_to_extent="1" name="fillSymbol" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleFill" pass="0" locked="0">
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
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadius="1.5" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetDist="1" shadowScale="100" shadowColor="0,0,0,255" shadowUnder="0" shadowRadiusUnit="MM" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions>
              <replacement wholeWord="1" caseSensitive="0" match="0" replace="ZERO"/>
            </substitutions>
          </text-style>
          <text-format reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" plussign="0" leftDirectionSymbol="&lt;" decimals="3" useMaxLineLengthForAutoWrap="1" wrapChar="" placeDirectionSymbol="0" addDirectionSymbol="0" formatNumbers="0" multilineAlign="0"/>
          <placement preserveRotation="1" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" overrunDistanceUnit="MM" offsetType="0" centroidInside="0" dist="0" layerType="LineGeometry" geometryGeneratorType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" maxCurvedCharAngleOut="-25" polygonPlacementFlags="2" distUnits="MM" quadOffset="4" repeatDistance="0" xOffset="0" rotationAngle="0" geometryGeneratorEnabled="1" geometryGenerator="with_variable('distancia',&#xd;&#xa;if( @project_units in ('degrees', 'graus'), 0.0005, 50)&#xd;&#xa;,&#xd;&#xa;collect_geometries( aggregate(&#xd;&#xa;  'edicao_simb_cota_mestra_l', &#xd;&#xa;  'array_agg',&#xd;&#xa;  intersection(buffer($geometry, @distancia),geometry(@parent)),&#xd;&#xa;  intersects(&#xd;&#xa;    $geometry,&#xd;&#xa;    geometry(@parent))&#xd;&#xa;))&#xd;&#xa;)" rotationUnit="AngleDegrees" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" placement="3" overrunDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" lineAnchorType="0" placementFlags="9" yOffset="0" offsetUnits="MM" centroidWhole="0" fitInPolygonOnly="0"/>
          <rendering fontLimitPixelSize="0" labelPerPart="1" minFeatureSize="0" scaleVisibility="0" mergeLines="0" obstacleType="0" unplacedVisibility="0" scaleMin="0" scaleMax="0" upsidedownLabels="0" displayAll="1" obstacle="0" drawLabels="1" fontMinPixelSize="3" fontMaxPixelSize="10000" zIndex="0" limitNumLabels="0" obstacleFactor="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Show">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
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
              <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
