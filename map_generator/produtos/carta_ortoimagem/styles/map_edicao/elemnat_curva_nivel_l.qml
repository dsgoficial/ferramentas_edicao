<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.1-Białowieża" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 referencescale="-1" forceraster="0" type="mergedFeatureRenderer" symbollevels="0" enableorderby="0">
    <renderer-v2 referencescale="-1" forceraster="0" type="RuleRenderer" symbollevels="0" enableorderby="0">
      <rules key="{0b5260cb-68fa-44a7-9937-3b05983fbf19}">
        <rule filter=" &quot;indice&quot; = 1 and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" label="Curva de nível mestra" key="{17464ca4-4fc1-4fb8-a046-8ab1bf1be117}" symbol="0"/>
        <rule filter=" &quot;indice&quot; = 2  and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" label="Curva de nível normal" key="{d41ad47a-a033-4a0d-a10b-3d58f7524766}" symbol="1"/>
        <rule filter=" &quot;indice&quot; = 3  and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" label="Curva de nível auxiliar" key="{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e}" symbol="2"/>
        <rule filter=" &quot;indice&quot; = 2 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" label="Curva de nível em depressão (normal)" key="{09a89a5b-750d-466c-9afa-3d25e0e04939}" symbol="3"/>
        <rule filter=" &quot;indice&quot; = 1 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" label="Curva de nível em depressão (mestra)" key="{9379a06a-1941-48d0-9f50-c56915435c2e}" symbol="4"/>
      </rules>
      <symbols>
        <symbol name="0" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="0,0,0,179"/>
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
            <prop k="line_color" v="0,0,0,179"/>
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
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="250,204,142,255"/>
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
            <prop k="line_color" v="250,204,142,255"/>
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
        <symbol name="1" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="0,0,0,204"/>
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
            <prop k="line_color" v="0,0,0,204"/>
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
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="250,204,142,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.2"/>
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
            <prop k="line_color" v="250,204,142,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.2"/>
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
        <symbol name="2" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="3;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,204"/>
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
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="3;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,204"/>
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
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="250,204,142,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.2"/>
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
            <prop k="customdash" v="3;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="250,204,142,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.2"/>
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
        <symbol name="3" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" enabled="1" class="HashLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="hash_angle" type="QString" value="0"/>
              <Option name="hash_length" type="QString" value="0.5"/>
              <Option name="hash_length_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="hash_length_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="1.5"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.5"/>
              <Option name="offset_along_line" type="QString" value="0"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="placement" type="QString" value="interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="hash_angle" v="0"/>
            <prop k="hash_length" v="0.5"/>
            <prop k="hash_length_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="hash_length_unit" v="MM"/>
            <prop k="interval" v="1.5"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0.5"/>
            <prop k="offset_along_line" v="0"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="placement" v="interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@3@0" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
                  <Option name="line_color" type="QString" value="0,0,0,204"/>
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
                <prop k="line_color" v="0,0,0,204"/>
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
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
              <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
                  <Option name="line_color" type="QString" value="250,204,142,255"/>
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
                <prop k="line_color" v="250,204,142,255"/>
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
          </layer>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="0,0,0,204"/>
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
            <prop k="line_color" v="0,0,0,204"/>
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
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="250,204,142,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.2"/>
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
            <prop k="line_color" v="250,204,142,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.2"/>
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
        <symbol name="4" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" enabled="1" class="HashLine" pass="0">
            <Option type="Map">
              <Option name="average_angle_length" type="QString" value="4"/>
              <Option name="average_angle_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="average_angle_unit" type="QString" value="MM"/>
              <Option name="hash_angle" type="QString" value="0"/>
              <Option name="hash_length" type="QString" value="0.5"/>
              <Option name="hash_length_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="hash_length_unit" type="QString" value="MM"/>
              <Option name="interval" type="QString" value="1.5"/>
              <Option name="interval_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="interval_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.5"/>
              <Option name="offset_along_line" type="QString" value="0"/>
              <Option name="offset_along_line_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_along_line_unit" type="QString" value="MM"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="placement" type="QString" value="interval"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="rotate" type="QString" value="1"/>
            </Option>
            <prop k="average_angle_length" v="4"/>
            <prop k="average_angle_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="average_angle_unit" v="MM"/>
            <prop k="hash_angle" v="0"/>
            <prop k="hash_length" v="0.5"/>
            <prop k="hash_length_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="hash_length_unit" v="MM"/>
            <prop k="interval" v="1.5"/>
            <prop k="interval_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="interval_unit" v="MM"/>
            <prop k="offset" v="0.5"/>
            <prop k="offset_along_line" v="0"/>
            <prop k="offset_along_line_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_along_line_unit" v="MM"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="placement" v="interval"/>
            <prop k="ring_filter" v="0"/>
            <prop k="rotate" v="1"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <symbol name="@4@0" clip_to_extent="1" type="line" alpha="1" force_rhr="0">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
                  <Option name="line_color" type="QString" value="35,35,35,179"/>
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
                <prop k="line_color" v="35,35,35,179"/>
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
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
              </layer>
              <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
                  <Option name="line_color" type="QString" value="250,204,142,255"/>
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
                <prop k="line_color" v="250,204,142,255"/>
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
          </layer>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="0,0,0,179"/>
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
            <prop k="line_color" v="0,0,0,179"/>
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
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
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
              <Option name="line_color" type="QString" value="250,204,142,255"/>
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
            <prop k="line_color" v="250,204,142,255"/>
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
    <rules key="{415687d9-c0d9-418f-8057-e613d2518d56}">
      <rule filter="&quot;indice&quot; = 1" key="{184324c1-8b6f-4857-8372-2ba739374f84}" description="Cota texto de edição">
        <settings calloutType="simple">
          <text-style fontItalic="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" legendString="Aa" blendMode="0" fontFamily="Noto Sans" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" textOrientation="horizontal" fontWeight="50" textOpacity="1" isExpression="0" fieldName="texto_edicao" multilineHeight="1" fontKerning="1" capitalization="1" fontSize="6" allowHtml="0" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" namedStyle="Condensed Italic" useSubstitutions="0" textColor="250,204,142,255">
            <families/>
            <text-buffer bufferSize="1" bufferBlendMode="0" bufferOpacity="0.69999999999999996" bufferJoinStyle="128" bufferSizeUnits="Point" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="1" bufferNoFill="1" bufferColor="0,0,0,255">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="13"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="0,0,0,255"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="offset_angle" type="QString" value="135"/>
                    <Option name="offset_distance" type="QString" value="2"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="opacity" type="QString" value="1"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="0"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color1" type="QString" value="0,0,255,255"/>
                    <Option name="color2" type="QString" value="0,255,0,255"/>
                    <Option name="color_type" type="QString" value="0"/>
                    <Option name="discrete" type="QString" value="0"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="opacity" type="QString" value="0.5"/>
                    <Option name="rampType" type="QString" value="gradient"/>
                    <Option name="single_color" type="QString" value="255,255,255,255"/>
                    <Option name="spread" type="QString" value="2"/>
                    <Option name="spread_unit" type="QString" value="MM"/>
                    <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
                <effect type="blur">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="0"/>
                    <Option name="blur_level" type="QString" value="5"/>
                    <Option name="blur_method" type="QString" value="1"/>
                    <Option name="blur_unit" type="QString" value="Pixel"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="1"/>
                    <Option name="opacity" type="QString" value="1"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="5"/>
                  <prop k="blur_method" v="1"/>
                  <prop k="blur_unit" v="Pixel"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="1"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="13"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="0,0,0,255"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="offset_angle" type="QString" value="135"/>
                    <Option name="offset_distance" type="QString" value="2"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="opacity" type="QString" value="1"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="0"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color1" type="QString" value="0,0,255,255"/>
                    <Option name="color2" type="QString" value="0,255,0,255"/>
                    <Option name="color_type" type="QString" value="0"/>
                    <Option name="discrete" type="QString" value="0"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="opacity" type="QString" value="0.5"/>
                    <Option name="rampType" type="QString" value="gradient"/>
                    <Option name="single_color" type="QString" value="255,255,255,255"/>
                    <Option name="spread" type="QString" value="2"/>
                    <Option name="spread_unit" type="QString" value="MM"/>
                    <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskedSymbolLayers="elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskEnabled="1" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0.80000000000000004" maskOpacity="1" maskJoinStyle="64"/>
            <background shapeJoinStyle="64" shapeOpacity="1" shapeFillColor="255,255,255,255" shapeOffsetY="0" shapeRotation="0" shapeSizeX="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeSizeUnit="MM" shapeType="0" shapeRadiiX="0" shapeSizeType="0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidthUnit="MM">
              <symbol name="markerSymbol" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" class="SimpleMarker" pass="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="190,178,151,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" clip_to_extent="1" type="fill" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" class="SimpleFill" pass="0">
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
            <shadow shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowDraw="0" shadowRadius="1.5"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" placeDirectionSymbol="0"/>
          <placement geometryGeneratorEnabled="1" geometryGeneratorType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" repeatDistanceUnits="MM" lineAnchorPercent="0.5" lineAnchorClipping="0" maxCurvedCharAngleOut="-25" priority="5" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" xOffset="0" repeatDistance="150" rotationAngle="0" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placementFlags="9" maxCurvedCharAngleIn="25" lineAnchorType="0" preserveRotation="1" centroidWhole="0" offsetUnits="MM" rotationUnit="AngleDegrees" layerType="LineGeometry" dist="0" distUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" overrunDistance="0" centroidInside="0" placement="3" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0"/>
          <rendering obstacleType="0" displayAll="0" unplacedVisibility="0" fontMinPixelSize="3" minFeatureSize="15" upsidedownLabels="2" scaleMin="0" fontMaxPixelSize="10000" mergeLines="1" labelPerPart="0" scaleMax="0" maxNumLabels="2000" obstacleFactor="1" fontLimitPixelSize="0" drawLabels="1" limitNumLabels="0" zIndex="0" scaleVisibility="0" obstacle="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule filter="&quot;indice&quot; = 1 AND &quot;texto_edicao&quot; IS NULL AND array_contains(array_foreach(@map_layers,   layer_property( @element , 'name'))  , 'edicao_simb_cota_mestra_l')" key="{30b85419-069f-4b6c-b1d8-20442dbdc8e0}" description="Simb cota mestra">
        <settings calloutType="simple">
          <text-style fontItalic="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" legendString="Aa" blendMode="0" fontFamily="Noto Sans" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" textOrientation="horizontal" fontWeight="50" textOpacity="1" isExpression="0" fieldName="cota" multilineHeight="1" fontKerning="1" capitalization="1" fontSize="6" allowHtml="0" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" namedStyle="Condensed Italic" useSubstitutions="1" textColor="250,204,142,255">
            <families/>
            <text-buffer bufferSize="1" bufferBlendMode="0" bufferOpacity="0.69999999999999996" bufferJoinStyle="128" bufferSizeUnits="Point" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="1" bufferNoFill="1" bufferColor="0,0,0,255">
              <effect type="effectStack" enabled="0">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="13"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="0,0,0,255"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="offset_angle" type="QString" value="135"/>
                    <Option name="offset_distance" type="QString" value="2"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="opacity" type="QString" value="1"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="0"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color1" type="QString" value="0,0,255,255"/>
                    <Option name="color2" type="QString" value="0,255,0,255"/>
                    <Option name="color_type" type="QString" value="0"/>
                    <Option name="discrete" type="QString" value="0"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="opacity" type="QString" value="0.5"/>
                    <Option name="rampType" type="QString" value="gradient"/>
                    <Option name="single_color" type="QString" value="255,255,255,255"/>
                    <Option name="spread" type="QString" value="2"/>
                    <Option name="spread_unit" type="QString" value="MM"/>
                    <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
                <effect type="blur">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="0"/>
                    <Option name="blur_level" type="QString" value="5"/>
                    <Option name="blur_method" type="QString" value="1"/>
                    <Option name="blur_unit" type="QString" value="Pixel"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="1"/>
                    <Option name="opacity" type="QString" value="1"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="5"/>
                  <prop k="blur_method" v="1"/>
                  <prop k="blur_unit" v="Pixel"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="1"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="13"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="0,0,0,255"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="offset_angle" type="QString" value="135"/>
                    <Option name="offset_distance" type="QString" value="2"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="opacity" type="QString" value="1"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option name="blend_mode" type="QString" value="0"/>
                    <Option name="blur_level" type="QString" value="2.645"/>
                    <Option name="blur_unit" type="QString" value="MM"/>
                    <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color1" type="QString" value="0,0,255,255"/>
                    <Option name="color2" type="QString" value="0,255,0,255"/>
                    <Option name="color_type" type="QString" value="0"/>
                    <Option name="discrete" type="QString" value="0"/>
                    <Option name="draw_mode" type="QString" value="2"/>
                    <Option name="enabled" type="QString" value="0"/>
                    <Option name="opacity" type="QString" value="0.5"/>
                    <Option name="rampType" type="QString" value="gradient"/>
                    <Option name="single_color" type="QString" value="255,255,255,255"/>
                    <Option name="spread" type="QString" value="2"/>
                    <Option name="spread_unit" type="QString" value="MM"/>
                    <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskedSymbolLayers="elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskEnabled="1" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0.80000000000000004" maskOpacity="1" maskJoinStyle="64"/>
            <background shapeJoinStyle="64" shapeOpacity="1" shapeFillColor="255,255,255,255" shapeOffsetY="0" shapeRotation="0" shapeSizeX="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeSizeUnit="MM" shapeType="0" shapeRadiiX="0" shapeSizeType="0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidthUnit="MM">
              <symbol name="markerSymbol" clip_to_extent="1" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" class="SimpleMarker" pass="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="190,178,151,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" clip_to_extent="1" type="fill" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" class="SimpleFill" pass="0">
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
            <shadow shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowDraw="0" shadowRadius="1.5"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions>
              <replacement match="0" replace="ZERO" caseSensitive="0" wholeWord="1"/>
            </substitutions>
          </text-style>
          <text-format multilineAlign="0" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" placeDirectionSymbol="0"/>
          <placement geometryGeneratorEnabled="1" geometryGeneratorType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" repeatDistanceUnits="MM" lineAnchorPercent="0.5" lineAnchorClipping="0" maxCurvedCharAngleOut="-25" priority="5" geometryGenerator="with_variable('distancia',&#xd;&#xa;if( @project_units in ('degrees', 'graus'), 0.0005, 50)&#xd;&#xa;,&#xd;&#xa;collect_geometries( aggregate(&#xd;&#xa;  'edicao_simb_cota_mestra_l', &#xd;&#xa;  'array_agg',&#xd;&#xa;  intersection(buffer($geometry, @distancia),geometry(@parent)),&#xd;&#xa;  intersects(&#xd;&#xa;    $geometry,&#xd;&#xa;    geometry(@parent))&#xd;&#xa;))&#xd;&#xa;)" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" xOffset="0" repeatDistance="0" rotationAngle="0" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placementFlags="9" maxCurvedCharAngleIn="25" lineAnchorType="0" preserveRotation="1" centroidWhole="0" offsetUnits="MM" rotationUnit="AngleDegrees" layerType="LineGeometry" dist="0" distUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" overrunDistance="0" centroidInside="0" placement="3" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0"/>
          <rendering obstacleType="0" displayAll="1" unplacedVisibility="0" fontMinPixelSize="3" minFeatureSize="0" upsidedownLabels="2" scaleMin="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="1" scaleMax="0" maxNumLabels="2000" obstacleFactor="1" fontLimitPixelSize="0" drawLabels="1" limitNumLabels="0" zIndex="0" scaleVisibility="0" obstacle="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
