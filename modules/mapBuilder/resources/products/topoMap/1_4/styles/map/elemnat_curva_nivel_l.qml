<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" labelsEnabled="1" version="3.38.2-Grenoble">
  <renderer-v2 type="RuleRenderer" symbollevels="0" enableorderby="0" referencescale="-1" forceraster="0">
    <rules key="{ec7e5b7e-0649-43c5-98ad-c84f432d69cd}">
      <rule label="Visível" filter=" &quot;visivel&quot; = 1 AND &quot;dentro_de_massa_dagua&quot; != 1" key="{770d1408-c0ae-4c0d-8633-a7109c702463}">
        <rule label="Curva de nível mestra" filter="(( @equidistancia IS NOT NULL and  &quot;cota&quot;%(5* to_int(@equidistancia)) = 0 ) &#xd;&#xa;OR &#xd;&#xa;(@equidistancia IS NULL and &quot;indice&quot; = 1))&#xd;&#xa; and &quot;depressao&quot; = 2" key="{9369fc1f-ffe7-4380-aaea-21612f1cf20a}" symbol="0"/>
        <rule label="Curva de nível normal" filter="(( @equidistancia IS NOT NULL and  &quot;cota&quot;%to_int(@equidistancia) = 0  and  &quot;cota&quot;%(5* to_int(@equidistancia)) != 0) &#xd;&#xa;OR &#xd;&#xa;(@equidistancia IS NULL and &quot;indice&quot; = 2))&#xd;&#xa;  and &quot;depressao&quot;=2" key="{a429cfcb-5c0d-40e4-bf7f-faaa5613b935}" symbol="1"/>
        <rule label="Curva de nível auxiliar" filter="((@equidistancia IS NOT NULL and  &quot;cota&quot;%(to_int(@equidistancia)/2) = 0  and  &quot;cota&quot;%(to_int(@equidistancia)) != 0 and  @exibir_auxiliar = 1) &#xd;&#xa;OR &#xd;&#xa;(@equidistancia IS NULL and &quot;indice&quot; = 3))&#xd;&#xa; and &quot;depressao&quot; = 2&#xd;&#xa;" key="{b012def3-64fb-443a-9239-4c61a438c046}" symbol="2"/>
        <rule label="Curva de nível em depressão (mestra)" filter="(( @equidistancia IS NOT NULL and  &quot;cota&quot;%(5* to_int(@equidistancia)) = 0 ) &#xd;&#xa;OR &#xd;&#xa;(@equidistancia IS NULL and &quot;indice&quot; = 1))&#xd;&#xa; and &quot;depressao&quot; = 1" key="{272fd170-db21-4e87-8510-fa3bf9c32a70}" symbol="3"/>
        <rule label="Curva de nível em depressão (normal)" filter="(( @equidistancia IS NOT NULL and  &quot;cota&quot;%to_int(@equidistancia) = 0 and  &quot;cota&quot;%(5*to_int(@equidistancia)) != 0) &#xd;&#xa;OR &#xd;&#xa;(@equidistancia IS NULL and &quot;indice&quot; = 2))&#xd;&#xa;  and &quot;depressao&quot;=1" key="{aa00d086-e453-49b5-8af9-ed31568d12e6}" symbol="4"/>
        <rule label="Curva de nível em depressão (auxiliar)" filter="((@equidistancia IS NOT NULL and  &quot;cota&quot;%(to_int(@equidistancia)/2) = 0 and  &quot;cota&quot;%(to_int(@equidistancia)) != 0  and  @exibir_auxiliar = 1) &#xd;&#xa;OR &#xd;&#xa;(@equidistancia IS NULL and &quot;indice&quot; = 3))&#xd;&#xa; and &quot;depressao&quot; = 1&#xd;&#xa;" key="{8837b77c-b89f-4053-ac86-4a25d9adbd25}" symbol="5"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="0" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{34461efc-a1eb-45e8-bd19-8837ffd15e38}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.2" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="1" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{62beb237-5b55-44c6-a0cd-00704fa92fe3}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.1" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="2" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{3171078e-dd1d-44f1-8fc6-79b79b2664ba}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="3;0.85" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.1" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="1" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="3" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{85cda4c0-ab6f-4156-9709-4128b9e4d132}" class="HashLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="0" name="hash_angle"/>
            <Option type="QString" value="0.5" name="hash_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="hash_length_map_unit_scale"/>
            <Option type="QString" value="MM" name="hash_length_unit"/>
            <Option type="QString" value="1" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0.25" name="offset"/>
            <Option type="QString" value="0" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="1" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="@3@0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{bb3cbc37-1b34-49b6-9906-c6c4f9cac8c3}" class="SimpleLine" pass="0" enabled="1">
              <Option type="Map">
                <Option type="QString" value="0" name="align_dash_pattern"/>
                <Option type="QString" value="square" name="capstyle"/>
                <Option type="QString" value="5;2" name="customdash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
                <Option type="QString" value="MM" name="customdash_unit"/>
                <Option type="QString" value="0" name="dash_pattern_offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
                <Option type="QString" value="0" name="draw_inside_polygon"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
                <Option type="QString" value="solid" name="line_style"/>
                <Option type="QString" value="0.1" name="line_width"/>
                <Option type="QString" value="MM" name="line_width_unit"/>
                <Option type="QString" value="0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0" name="ring_filter"/>
                <Option type="QString" value="0" name="trim_distance_end"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_end_unit"/>
                <Option type="QString" value="0" name="trim_distance_start"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_start_unit"/>
                <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
                <Option type="QString" value="0" name="use_custom_dash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" id="{fa4563aa-7a3d-45bc-929f-aeb599943ce4}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.2" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="4" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{c039228b-0d9a-4636-9201-7c9b8312fef3}" class="HashLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="0" name="hash_angle"/>
            <Option type="QString" value="0.5" name="hash_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="hash_length_map_unit_scale"/>
            <Option type="QString" value="MM" name="hash_length_unit"/>
            <Option type="QString" value="1" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0.25" name="offset"/>
            <Option type="QString" value="0" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="1" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="@4@0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{6063a4bf-b9f3-43c1-867d-a40d477a1d08}" class="SimpleLine" pass="0" enabled="1">
              <Option type="Map">
                <Option type="QString" value="0" name="align_dash_pattern"/>
                <Option type="QString" value="square" name="capstyle"/>
                <Option type="QString" value="5;2" name="customdash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
                <Option type="QString" value="MM" name="customdash_unit"/>
                <Option type="QString" value="0" name="dash_pattern_offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
                <Option type="QString" value="0" name="draw_inside_polygon"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
                <Option type="QString" value="solid" name="line_style"/>
                <Option type="QString" value="0.1" name="line_width"/>
                <Option type="QString" value="MM" name="line_width_unit"/>
                <Option type="QString" value="0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0" name="ring_filter"/>
                <Option type="QString" value="0" name="trim_distance_end"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_end_unit"/>
                <Option type="QString" value="0" name="trim_distance_start"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_start_unit"/>
                <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
                <Option type="QString" value="0" name="use_custom_dash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" id="{346e8a09-badd-4487-a991-3b9302ad56eb}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.1" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="5" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{0e11c129-6669-4ca0-a3bd-0b33423433e5}" class="HashLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="0" name="hash_angle"/>
            <Option type="QString" value="0.5" name="hash_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="hash_length_map_unit_scale"/>
            <Option type="QString" value="MM" name="hash_length_unit"/>
            <Option type="QString" value="3.5" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0.25" name="offset"/>
            <Option type="QString" value="2" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="1" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="@5@0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{67e612fd-b7d6-412c-85f0-397cdb90aa49}" class="SimpleLine" pass="0" enabled="1">
              <Option type="Map">
                <Option type="QString" value="0" name="align_dash_pattern"/>
                <Option type="QString" value="square" name="capstyle"/>
                <Option type="QString" value="5;2" name="customdash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
                <Option type="QString" value="MM" name="customdash_unit"/>
                <Option type="QString" value="0" name="dash_pattern_offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
                <Option type="QString" value="0" name="draw_inside_polygon"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
                <Option type="QString" value="solid" name="line_style"/>
                <Option type="QString" value="0.1" name="line_width"/>
                <Option type="QString" value="MM" name="line_width_unit"/>
                <Option type="QString" value="0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0" name="ring_filter"/>
                <Option type="QString" value="0" name="trim_distance_end"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_end_unit"/>
                <Option type="QString" value="0" name="trim_distance_start"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_start_unit"/>
                <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
                <Option type="QString" value="0" name="use_custom_dash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" id="{de2bdc82-6de1-4193-9a97-cfb587f64a65}" class="HashLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="0" name="hash_angle"/>
            <Option type="QString" value="0.5" name="hash_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="hash_length_map_unit_scale"/>
            <Option type="QString" value="MM" name="hash_length_unit"/>
            <Option type="QString" value="3.5" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0.25" name="offset"/>
            <Option type="QString" value="1" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="1" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="@5@1" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ebf03594-9cfd-4047-b4ce-012a9550fd30}" class="SimpleLine" pass="0" enabled="1">
              <Option type="Map">
                <Option type="QString" value="0" name="align_dash_pattern"/>
                <Option type="QString" value="square" name="capstyle"/>
                <Option type="QString" value="5;2" name="customdash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
                <Option type="QString" value="MM" name="customdash_unit"/>
                <Option type="QString" value="0" name="dash_pattern_offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
                <Option type="QString" value="0" name="draw_inside_polygon"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
                <Option type="QString" value="solid" name="line_style"/>
                <Option type="QString" value="0.1" name="line_width"/>
                <Option type="QString" value="MM" name="line_width_unit"/>
                <Option type="QString" value="0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0" name="ring_filter"/>
                <Option type="QString" value="0" name="trim_distance_end"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_end_unit"/>
                <Option type="QString" value="0" name="trim_distance_start"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_start_unit"/>
                <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
                <Option type="QString" value="0" name="use_custom_dash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" id="{1083eef1-65ba-445e-9b07-bd16e86066c4}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="3;0.85" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.1" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="1" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol alpha="1" is_animated="0" type="line" force_rhr="0" name="" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" id="{194a8e5d-093d-4af4-bb5b-00992482b674}" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.26" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="rule-based">
    <rules key="{f17b21bb-4736-4093-936a-fa8bf765392f}">
      <rule description="Cota mestra" filter="indice = 1 and visivel = 1 AND &quot;dentro_de_massa_dagua&quot; != 1" key="{94c30e33-9e27-4238-b26f-fdccc0129835}">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" forcedBold="0" fontSize="7" fieldName="texto_edicao" isExpression="0" textColor="166,43,51,255,rgb:0.65098039215686276,0.16862745098039217,0.20000000000000001,1" tabStopDistance="80" fontWeight="50" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="1" fontStrikeout="0" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" tabStopDistanceUnit="Point" namedStyle="Condensed Italic" multilineHeightUnit="Percentage" capitalization="1" useSubstitutions="0" fontKerning="1" legendString="Aa" textOrientation="horizontal" blendMode="0" forcedItalic="0" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontUnderline="0" allowHtml="0" fontFamily="Noto Sans">
            <families/>
            <text-buffer bufferSizeUnits="MM" bufferOpacity="1" bufferNoFill="1" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferJoinStyle="128" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferSize="1"/>
            <text-mask maskOpacity="1" maskEnabled="1" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;;auxiliar_moldura_492fed5c_6da6_45a4_9308_ecdfa7bc0e7e;" maskJoinStyle="128" maskType="0" maskSize2="0.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="0.5" maskSizeUnits="MM"/>
            <background shapeSVGFile="" shapeOpacity="1" shapeRadiiX="0" shapeRadiiUnit="MM" shapeType="0" shapeOffsetX="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSizeX="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeOffsetY="0" shapeBlendMode="0" shapeRadiiY="0" shapeRotation="0">
              <symbol alpha="1" is_animated="0" type="marker" force_rhr="0" name="markerSymbol" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="114,155,111,255,rgb:0.44705882352941179,0.60784313725490191,0.43529411764705883,1" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" is_animated="0" type="fill" force_rhr="0" name="fillSymbol" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
                  </Option>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetGlobal="1" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowScale="100" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" formatNumbers="0" multilineAlign="0" wrapChar="" leftDirectionSymbol="&lt;" autoWrapLength="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" placeDirectionSymbol="0" useMaxLineLengthForAutoWrap="1"/>
          <placement maxCurvedCharAngleIn="25" xOffset="0" priority="5" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" maximumDistanceUnit="MM" prioritization="PreferCloser" quadOffset="4" preserveRotation="1" geometryGeneratorType="LineGeometry" layerType="LineGeometry" repeatDistance="120" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" polygonPlacementFlags="2" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" lineAnchorType="0" placement="3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" allowDegraded="0" lineAnchorTextPoint="CenterOfText" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetUnits="MM" centroidInside="0" geometryGeneratorEnabled="1" repeatDistanceUnits="MM" centroidWhole="0" lineAnchorClipping="0" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" lineAnchorPercent="0.5" maximumDistance="0" yOffset="0" overlapHandling="PreventOverlap" offsetType="0" dist="0" placementFlags="9" overrunDistance="0"/>
          <rendering obstacleType="1" zIndex="0" unplacedVisibility="0" fontMaxPixelSize="10000" scaleMin="1000" scaleMax="100000" limitNumLabels="0" labelPerPart="0" scaleVisibility="0" mergeLines="1" upsidedownLabels="0" obstacleFactor="1" fontMinPixelSize="3" obstacle="0" maxNumLabels="2000" minFeatureSize="1" drawLabels="1" fontLimitPixelSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Color">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Show">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="int" value="0" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol alpha=&quot;1&quot; is_animated=&quot;0&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{3db3aef4-aaca-4d95-9799-50560f4757ae}&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
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
