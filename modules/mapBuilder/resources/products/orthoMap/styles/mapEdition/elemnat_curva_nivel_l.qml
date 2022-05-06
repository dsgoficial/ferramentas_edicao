<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.22.5-Białowieża" styleCategories="Symbology|Labeling">
  <renderer-v2 referencescale="-1" enableorderby="0" symbollevels="0" forceraster="0" type="mergedFeatureRenderer">
    <renderer-v2 referencescale="-1" enableorderby="0" symbollevels="0" forceraster="0" type="RuleRenderer">
      <rules key="{0b5260cb-68fa-44a7-9937-3b05983fbf19}">
        <rule label="Curva de nível mestra" symbol="0" filter=" &quot;indice&quot; = 1 and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" key="{17464ca4-4fc1-4fb8-a046-8ab1bf1be117}"/>
        <rule label="Curva de nível normal" symbol="1" filter=" &quot;indice&quot; = 2  and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" key="{d41ad47a-a033-4a0d-a10b-3d58f7524766}"/>
        <rule label="Curva de nível auxiliar" symbol="2" filter=" &quot;indice&quot; = 3  and &quot;depressao&quot;=2 and &quot;visivel&quot;  = 1" key="{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e}"/>
        <rule label="Curva de nível em depressão (mestra)" symbol="3" filter=" &quot;indice&quot; = 1 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" key="{9379a06a-1941-48d0-9f50-c56915435c2e}"/>
        <rule label="Curva de nível em depressão (normal)" symbol="4" filter=" &quot;indice&quot; = 2 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" key="{0c03cb32-4bd6-4271-b98c-33ebbdc2aec8}"/>
        <rule label="Curva de nível em depressão (auxiliar)" symbol="5" filter=" &quot;indice&quot; = 3 and &quot;depressao&quot; = 1 and &quot;visivel&quot;  = 1" key="{ea87fe08-2d1a-4b30-8ecc-81c4ce7fc911}"/>
      </rules>
      <symbols>
        <symbol name="0" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
              <Option name="line_color" value="255,255,255,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.25" type="QString"/>
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
            <prop v="255,255,255,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.25" k="line_width"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol name="1" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
              <Option name="line_color" value="255,255,255,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.15" type="QString"/>
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
            <prop v="255,255,255,255" k="line_color"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol name="2" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
            <Option type="Map">
              <Option name="align_dash_pattern" value="0" type="QString"/>
              <Option name="capstyle" value="square" type="QString"/>
              <Option name="customdash" value="3;0.85" type="QString"/>
              <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="customdash_unit" value="MM" type="QString"/>
              <Option name="dash_pattern_offset" value="0" type="QString"/>
              <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
              <Option name="draw_inside_polygon" value="0" type="QString"/>
              <Option name="joinstyle" value="bevel" type="QString"/>
              <Option name="line_color" value="255,255,255,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.15" type="QString"/>
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
              <Option name="use_custom_dash" value="1" type="QString"/>
              <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;0.85" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="255,255,255,255" k="line_color"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol name="3" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="HashLine" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="hash_angle" value="0" type="QString"/>
              <Option name="hash_length" value="0.7" type="QString"/>
              <Option name="hash_length_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="hash_length_unit" value="MM" type="QString"/>
              <Option name="interval" value="1.5" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0.3" type="QString"/>
              <Option name="offset_along_line" value="0" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="placement" value="interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="0" k="hash_angle"/>
            <prop v="0.7" k="hash_length"/>
            <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
            <prop v="MM" k="hash_length_unit"/>
            <prop v="1.5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0.3" k="offset"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@3@0" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
                  <Option name="line_color" value="255,255,255,255" type="QString"/>
                  <Option name="line_style" value="solid" type="QString"/>
                  <Option name="line_width" value="0.15" type="QString"/>
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
                <prop v="255,255,255,255" k="line_color"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
              <Option name="line_color" value="255,255,255,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.25" type="QString"/>
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
            <prop v="255,255,255,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.25" k="line_width"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol name="4" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="HashLine" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="hash_angle" value="0" type="QString"/>
              <Option name="hash_length" value="0.7" type="QString"/>
              <Option name="hash_length_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="hash_length_unit" value="MM" type="QString"/>
              <Option name="interval" value="1.5" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0.3" type="QString"/>
              <Option name="offset_along_line" value="0" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="placement" value="interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="0" k="hash_angle"/>
            <prop v="0.7" k="hash_length"/>
            <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
            <prop v="MM" k="hash_length_unit"/>
            <prop v="1.5" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0.3" k="offset"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@4@0" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
                  <Option name="line_color" value="255,255,255,255" type="QString"/>
                  <Option name="line_style" value="solid" type="QString"/>
                  <Option name="line_width" value="0.15" type="QString"/>
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
                <prop v="255,255,255,255" k="line_color"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
              <Option name="line_color" value="255,255,255,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.15" type="QString"/>
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
            <prop v="255,255,255,255" k="line_color"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol name="5" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="HashLine" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" value="0" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="hash_angle" value="0" type="QString"/>
              <Option name="hash_length" value="0.7" type="QString"/>
              <Option name="hash_length_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="hash_length_unit" value="MM" type="QString"/>
              <Option name="interval" value="3.85" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0.3" type="QString"/>
              <Option name="offset_along_line" value="2" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="placement" value="interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
            </Option>
            <prop v="0" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="0" k="hash_angle"/>
            <prop v="0.7" k="hash_length"/>
            <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
            <prop v="MM" k="hash_length_unit"/>
            <prop v="3.85" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0.3" k="offset"/>
            <prop v="2" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="interval" k="placement"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@5@0" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
                  <Option name="line_color" value="255,255,255,255" type="QString"/>
                  <Option name="line_style" value="solid" type="QString"/>
                  <Option name="line_width" value="0.15" type="QString"/>
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
                <prop v="255,255,255,255" k="line_color"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" pass="0" class="HashLine" enabled="1">
            <Option type="Map">
              <Option name="average_angle_length" value="4" type="QString"/>
              <Option name="average_angle_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="average_angle_unit" value="MM" type="QString"/>
              <Option name="hash_angle" value="0" type="QString"/>
              <Option name="hash_length" value="0.7" type="QString"/>
              <Option name="hash_length_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="hash_length_unit" value="MM" type="QString"/>
              <Option name="interval" value="3.85" type="QString"/>
              <Option name="interval_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="interval_unit" value="MM" type="QString"/>
              <Option name="offset" value="0.3" type="QString"/>
              <Option name="offset_along_line" value="1" type="QString"/>
              <Option name="offset_along_line_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_along_line_unit" value="MM" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="placement" value="interval" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="rotate" value="1" type="QString"/>
            </Option>
            <prop v="4" k="average_angle_length"/>
            <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
            <prop v="MM" k="average_angle_unit"/>
            <prop v="0" k="hash_angle"/>
            <prop v="0.7" k="hash_length"/>
            <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
            <prop v="MM" k="hash_length_unit"/>
            <prop v="3.85" k="interval"/>
            <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
            <prop v="MM" k="interval_unit"/>
            <prop v="0.3" k="offset"/>
            <prop v="1" k="offset_along_line"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
            <prop v="MM" k="offset_along_line_unit"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="interval" k="placement"/>
            <prop v="0" k="ring_filter"/>
            <prop v="1" k="rotate"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <symbol name="@5@1" alpha="1" force_rhr="0" clip_to_extent="1" type="line">
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
              <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
                  <Option name="line_color" value="255,255,255,255" type="QString"/>
                  <Option name="line_style" value="solid" type="QString"/>
                  <Option name="line_width" value="0.15" type="QString"/>
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
                <prop v="255,255,255,255" k="line_color"/>
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
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
              </layer>
            </symbol>
          </layer>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
            <Option type="Map">
              <Option name="align_dash_pattern" value="0" type="QString"/>
              <Option name="capstyle" value="square" type="QString"/>
              <Option name="customdash" value="3;0.85" type="QString"/>
              <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="customdash_unit" value="MM" type="QString"/>
              <Option name="dash_pattern_offset" value="0" type="QString"/>
              <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
              <Option name="draw_inside_polygon" value="0" type="QString"/>
              <Option name="joinstyle" value="bevel" type="QString"/>
              <Option name="line_color" value="255,255,255,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.15" type="QString"/>
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
              <Option name="use_custom_dash" value="1" type="QString"/>
              <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="3;0.85" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="255,255,255,255" k="line_color"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{b781b2f2-bb23-4f7c-9d2d-74f7b9c803a9}">
      <rule filter="&quot;indice&quot; = 1" key="{9eba929d-aee2-4359-8e1e-2bbae71eb739}" description="Cota texto de edição">
        <settings calloutType="simple">
          <text-style fontWordSpacing="0" isExpression="0" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="50" legendString="Aa" blendMode="0" textColor="255,255,255,255" fontSize="6" fontFamily="Noto Sans" useSubstitutions="0" capitalization="1" fontSizeUnit="Point" textOpacity="1" fieldName="texto_edicao" namedStyle="Condensed Italic" allowHtml="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontKerning="1" fontItalic="1" fontUnderline="0" multilineHeight="1" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferDraw="1" bufferNoFill="1" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,0,0,255" bufferOpacity="1" bufferSize="0.5" bufferSizeUnits="Point" bufferJoinStyle="128">
              <effect enabled="0" type="effectStack">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option name="blend_mode" value="13" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="0,0,0,255" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="offset_angle" value="135" type="QString"/>
                    <Option name="offset_distance" value="2" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="opacity" value="1" type="QString"/>
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
                    <Option name="blend_mode" value="0" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color1" value="0,0,255,255" type="QString"/>
                    <Option name="color2" value="0,255,0,255" type="QString"/>
                    <Option name="color_type" value="0" type="QString"/>
                    <Option name="discrete" value="0" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="opacity" value="0.5" type="QString"/>
                    <Option name="rampType" value="gradient" type="QString"/>
                    <Option name="single_color" value="255,255,255,255" type="QString"/>
                    <Option name="spread" value="2" type="QString"/>
                    <Option name="spread_unit" value="MM" type="QString"/>
                    <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
                    <Option name="blend_mode" value="0" type="QString"/>
                    <Option name="blur_level" value="5" type="QString"/>
                    <Option name="blur_method" value="1" type="QString"/>
                    <Option name="blur_unit" value="Pixel" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="1" type="QString"/>
                    <Option name="opacity" value="1" type="QString"/>
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
                    <Option name="blend_mode" value="13" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="0,0,0,255" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="offset_angle" value="135" type="QString"/>
                    <Option name="offset_distance" value="2" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="opacity" value="1" type="QString"/>
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
                    <Option name="blend_mode" value="0" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color1" value="0,0,255,255" type="QString"/>
                    <Option name="color2" value="0,255,0,255" type="QString"/>
                    <Option name="color_type" value="0" type="QString"/>
                    <Option name="discrete" value="0" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="opacity" value="0.5" type="QString"/>
                    <Option name="rampType" value="gradient" type="QString"/>
                    <Option name="single_color" value="255,255,255,255" type="QString"/>
                    <Option name="spread" value="2" type="QString"/>
                    <Option name="spread_unit" value="MM" type="QString"/>
                    <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
            <text-mask maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskSizeUnits="MM" maskJoinStyle="64" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0.80000000000000004" maskOpacity="1"/>
            <background shapeBlendMode="0" shapeSizeUnit="MM" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeBorderWidth="0" shapeOpacity="1" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeRotationType="0" shapeOffsetY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRotation="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0">
              <symbol name="markerSymbol" alpha="1" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="190,178,151,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="0,0,0,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" alpha="1" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetGlobal="1" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetAngle="135" shadowColor="0,0,0,255" shadowDraw="0" shadowScale="100" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar="" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" addDirectionSymbol="0" rightDirectionSymbol=">" placeDirectionSymbol="0" formatNumbers="0" decimals="3"/>
          <placement polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" priority="5" repeatDistanceUnits="MM" offsetUnits="MM" quadOffset="4" preserveRotation="1" overrunDistanceUnit="MM" centroidWhole="0" rotationAngle="0" placement="3" lineAnchorClipping="0" overrunDistance="0" lineAnchorType="0" dist="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" maxCurvedCharAngleIn="25" centroidInside="0" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distUnits="MM" geometryGeneratorType="LineGeometry" lineAnchorPercent="0.5" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" distMapUnitScale="3x:0,0,0,0,0,0" placementFlags="9" offsetType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="150" yOffset="0" layerType="LineGeometry"/>
          <rendering fontLimitPixelSize="0" minFeatureSize="15" drawLabels="1" obstacle="0" unplacedVisibility="0" obstacleFactor="1" labelPerPart="0" fontMinPixelSize="3" obstacleType="0" scaleMin="0" scaleMax="0" zIndex="0" maxNumLabels="2000" displayAll="0" limitNumLabels="0" upsidedownLabels="0" scaleVisibility="0" mergeLines="1" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;indice&quot; = 1 AND &quot;texto_edicao&quot; IS NULL AND array_contains(array_foreach(@map_layers,   layer_property( @element , 'name'))  , 'edicao_simb_cota_mestra_l')" key="{c538aae9-531e-4bbd-8cf0-dbc5b3ffb4f8}" description="Simb cota mestra">
        <settings calloutType="simple">
          <text-style fontWordSpacing="0" isExpression="0" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="50" legendString="Aa" blendMode="0" textColor="255,255,255,255" fontSize="6" fontFamily="Noto Sans" useSubstitutions="1" capitalization="1" fontSizeUnit="Point" textOpacity="1" fieldName="cota" namedStyle="Condensed Italic" allowHtml="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontKerning="1" fontItalic="1" fontUnderline="0" multilineHeight="1" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferDraw="1" bufferNoFill="1" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,0,0,255" bufferOpacity="1" bufferSize="0.5" bufferSizeUnits="Point" bufferJoinStyle="128">
              <effect enabled="0" type="effectStack">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option name="blend_mode" value="13" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="0,0,0,255" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="offset_angle" value="135" type="QString"/>
                    <Option name="offset_distance" value="2" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="opacity" value="1" type="QString"/>
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
                    <Option name="blend_mode" value="0" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color1" value="0,0,255,255" type="QString"/>
                    <Option name="color2" value="0,255,0,255" type="QString"/>
                    <Option name="color_type" value="0" type="QString"/>
                    <Option name="discrete" value="0" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="opacity" value="0.5" type="QString"/>
                    <Option name="rampType" value="gradient" type="QString"/>
                    <Option name="single_color" value="255,255,255,255" type="QString"/>
                    <Option name="spread" value="2" type="QString"/>
                    <Option name="spread_unit" value="MM" type="QString"/>
                    <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
                    <Option name="blend_mode" value="0" type="QString"/>
                    <Option name="blur_level" value="5" type="QString"/>
                    <Option name="blur_method" value="1" type="QString"/>
                    <Option name="blur_unit" value="Pixel" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="1" type="QString"/>
                    <Option name="opacity" value="1" type="QString"/>
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
                    <Option name="blend_mode" value="13" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="0,0,0,255" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="offset_angle" value="135" type="QString"/>
                    <Option name="offset_distance" value="2" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="opacity" value="1" type="QString"/>
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
                    <Option name="blend_mode" value="0" type="QString"/>
                    <Option name="blur_level" value="2.645" type="QString"/>
                    <Option name="blur_unit" value="MM" type="QString"/>
                    <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color1" value="0,0,255,255" type="QString"/>
                    <Option name="color2" value="0,255,0,255" type="QString"/>
                    <Option name="color_type" value="0" type="QString"/>
                    <Option name="discrete" value="0" type="QString"/>
                    <Option name="draw_mode" value="2" type="QString"/>
                    <Option name="enabled" value="0" type="QString"/>
                    <Option name="opacity" value="0.5" type="QString"/>
                    <Option name="rampType" value="gradient" type="QString"/>
                    <Option name="single_color" value="255,255,255,255" type="QString"/>
                    <Option name="spread" value="2" type="QString"/>
                    <Option name="spread_unit" value="MM" type="QString"/>
                    <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
            <text-mask maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_3d09e60c_a9ad_40ba_9959_af74439ff280,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskSizeUnits="MM" maskJoinStyle="64" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0.80000000000000004" maskOpacity="1"/>
            <background shapeBlendMode="0" shapeSizeUnit="MM" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeBorderWidth="0" shapeOpacity="1" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeRotationType="0" shapeOffsetY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRotation="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0">
              <symbol name="markerSymbol" alpha="1" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="190,178,151,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="0,0,0,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" alpha="1" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetGlobal="1" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetAngle="135" shadowColor="0,0,0,255" shadowDraw="0" shadowScale="100" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions>
              <replacement caseSensitive="0" replace="ZERO" wholeWord="1" match="0"/>
            </substitutions>
          </text-style>
          <text-format plussign="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" wrapChar="" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" addDirectionSymbol="0" rightDirectionSymbol=">" placeDirectionSymbol="0" formatNumbers="0" decimals="3"/>
          <placement polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" priority="5" repeatDistanceUnits="MM" offsetUnits="MM" quadOffset="4" preserveRotation="1" overrunDistanceUnit="MM" centroidWhole="0" rotationAngle="0" placement="3" lineAnchorClipping="0" overrunDistance="0" lineAnchorType="0" dist="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" maxCurvedCharAngleIn="25" centroidInside="0" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distUnits="MM" geometryGeneratorType="LineGeometry" lineAnchorPercent="0.5" fitInPolygonOnly="0" geometryGenerator="with_variable('distancia',&#xd;&#xa;if( @project_units in ('degrees', 'graus'), 0.0005, 50)&#xd;&#xa;,&#xd;&#xa;collect_geometries( aggregate(&#xd;&#xa;  'edicao_simb_cota_mestra_l', &#xd;&#xa;  'array_agg',&#xd;&#xa;  intersection(buffer($geometry, @distancia),geometry(@parent)),&#xd;&#xa;  intersects(&#xd;&#xa;    $geometry,&#xd;&#xa;    geometry(@parent))&#xd;&#xa;))&#xd;&#xa;)" distMapUnitScale="3x:0,0,0,0,0,0" placementFlags="9" offsetType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" yOffset="0" layerType="LineGeometry"/>
          <rendering fontLimitPixelSize="0" minFeatureSize="0" drawLabels="1" obstacle="0" unplacedVisibility="0" obstacleFactor="1" labelPerPart="1" fontMinPixelSize="3" obstacleType="0" scaleMin="0" scaleMax="0" zIndex="0" maxNumLabels="2000" displayAll="1" limitNumLabels="0" upsidedownLabels="0" scaleVisibility="0" mergeLines="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
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
