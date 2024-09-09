<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.38.2-Grenoble" labelsEnabled="1">
  <renderer-v2 symbollevels="0" type="RuleRenderer" referencescale="-1" enableorderby="0" forceraster="0">
    <rules key="{8bfbb73f-987d-4802-bb68-f5f682daa1d0}">
      <rule filter="&quot;visivel&quot; = 1" label="Visível" key="{b98ceb86-e44f-49c7-bbc8-3953ebad6af2}">
        <rule filter="&quot;tipo&quot; = 301 and &quot;posicao_relativa&quot; = 2" label="Duto de água (superfície)" key="{fc7f4da7-818d-47dc-9275-8d281462cdc1}" symbol="0"/>
        <rule filter="&quot;tipo&quot; != 301 and &quot;tipo&quot; != 9999 and (&quot;posicao_relativa&quot; = 6 or &quot;posicao_relativa&quot; = 5)" label="Duto não água  (subterrâneo)" key="{2bd690c7-e346-4104-8a6c-0a78f971e204}" symbol="1"/>
        <rule filter="&quot;tipo&quot; = 301 and (&quot;posicao_relativa&quot; = 6 or &quot;posicao_relativa&quot; = 5)" label="Duto de água (subterrâneo)" key="{7545cc1d-9868-4860-b164-84e899752490}" symbol="2"/>
        <rule filter="&quot;tipo&quot; != 301 and &quot;tipo&quot; != 9999 and &quot;posicao_relativa&quot; = 3" label="Duto não água (elevado)" key="{6bd2ffe1-d2c1-45ca-953b-dee8a9a921d4}" symbol="3"/>
        <rule filter="&quot;tipo&quot; != 301 and &quot;tipo&quot; != 9999 and &quot;posicao_relativa&quot; = 2" label="Duto não água (superfície)" key="{1d1c30c5-1fff-4ec2-b3f4-f3dd7ff3c7c1}" symbol="4"/>
        <rule filter="ELSE" key="{02a7be97-48a5-4261-8f74-f10b2507da1c}" symbol="5"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" frame_rate="10" type="line" is_animated="0" clip_to_extent="1" name="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{6c65d72a-6bc4-43f1-83f9-7c89d10c46de}" locked="0" class="SimpleLine">
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
            <Option type="QString" value="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" name="line_color"/>
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
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" enabled="1" id="{1d166ad1-39ad-4ef2-a2fc-674b02697dd3}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="10" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="5" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@0@1" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{9ffab155-c925-4306-9023-b3971895326e}" locked="0" class="SimpleMarker">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="0,160,223,255,rgb:0,0.62745098039215685,0.87450980392156863,1" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.7" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="line" is_animated="0" clip_to_extent="1" name="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{c051f499-a0f8-46f5-98b3-29fa01d77cea}" locked="0" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="4;1" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" name="line_color"/>
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
            <Option type="QString" value="1" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" enabled="1" id="{41327958-0aec-419f-83ed-2a331fdddc3a}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="10" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="2" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@1@1" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{da5f65cd-7aa3-4356-917b-a8f9dbb7c969}" locked="0" class="SimpleMarker">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.7" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="line" is_animated="0" clip_to_extent="1" name="2" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{a339662f-cc4d-4b48-bb58-d1f57002ad65}" locked="0" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="4;1" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" name="line_color"/>
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
            <Option type="QString" value="1" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" enabled="1" id="{5dd683c3-47cc-4bf8-92d3-a0f1a6d88cf4}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="10" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="2" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@2@1" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{76d62a6b-0727-41d7-a186-2aa39199585b}" locked="0" class="SimpleMarker">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.7" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="line" is_animated="0" clip_to_extent="1" name="3" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{0fdee0aa-acab-4f2e-9618-b0f0348a6bc9}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="3" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="0" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="FirstVertex" name="placements"/>
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
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@3@0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{9ef1c37e-4650-45ff-9f70-9d5e28ed3545}" locked="0" class="SvgMarker">
              <Option type="Map">
                <Option type="QString" value="270" name="angle"/>
                <Option type="QString" value="255,0,0,255,rgb:1,0,0,1" name="color"/>
                <Option type="QString" value="0" name="fixedAspectRatio"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgd2lkdGg9IjEuNDE0NzQ2M21tIgogICBoZWlnaHQ9IjAuODQ4NTIyNDJtbSIKICAgdmlld0JveD0iMCAwIDEuNDE0NzQ2MyAwLjg0ODUyMjM5IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImFjaW1hLnN2ZyIKICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiCiAgIHhtbG5zOnNvZGlwb2RpPSJodHRwOi8vc29kaXBvZGkuc291cmNlZm9yZ2UubmV0L0RURC9zb2RpcG9kaS0wLmR0ZCIKICAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiCiAgIHhtbG5zOmNjPSJodHRwOi8vY3JlYXRpdmVjb21tb25zLm9yZy9ucyMiCiAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgPGRlZnMKICAgICBpZD0iZGVmczEyNjAiIC8+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJiYXNlIgogICAgIHBhZ2Vjb2xvcj0iI2ZmZmZmZiIKICAgICBib3JkZXJjb2xvcj0iIzY2NjY2NiIKICAgICBib3JkZXJvcGFjaXR5PSIxLjAiCiAgICAgaW5rc2NhcGU6cGFnZW9wYWNpdHk9IjAuMCIKICAgICBpbmtzY2FwZTpwYWdlc2hhZG93PSIyIgogICAgIGlua3NjYXBlOnpvb209IjE4MS4wMTkzNCIKICAgICBpbmtzY2FwZTpjeD0iMi40OTE0NDY1IgogICAgIGlua3NjYXBlOmN5PSIxLjgxNzQ4NTQiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtdW5pdHM9Im1tIgogICAgIGlua3NjYXBlOmN1cnJlbnQtbGF5ZXI9ImxheWVyMSIKICAgICBzaG93Z3JpZD0iZmFsc2UiCiAgICAgaW5rc2NhcGU6d2luZG93LXdpZHRoPSIxOTIwIgogICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciCiAgICAgaW5rc2NhcGU6d2luZG93LXg9IjE5MTIiCiAgICAgaW5rc2NhcGU6d2luZG93LXk9Ii04IgogICAgIGlua3NjYXBlOndpbmRvdy1tYXhpbWl6ZWQ9IjEiCiAgICAgaW5rc2NhcGU6ZG9jdW1lbnQtcm90YXRpb249IjAiCiAgICAgZml0LW1hcmdpbi10b3A9IjAiCiAgICAgZml0LW1hcmdpbi1sZWZ0PSIwIgogICAgIGZpdC1tYXJnaW4tcmlnaHQ9IjAiCiAgICAgZml0LW1hcmdpbi1ib3R0b209IjAiCiAgICAgaW5rc2NhcGU6c2hvd3BhZ2VzaGFkb3c9IjIiCiAgICAgaW5rc2NhcGU6cGFnZWNoZWNrZXJib2FyZD0iMCIKICAgICBpbmtzY2FwZTpkZXNrY29sb3I9IiNkMWQxZDEiIC8+CiAgPG1ldGFkYXRhCiAgICAgaWQ9Im1ldGFkYXRhMTI2MyI+CiAgICA8cmRmOlJERj4KICAgICAgPGNjOldvcmsKICAgICAgICAgcmRmOmFib3V0PSIiPgogICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2Uvc3ZnK3htbDwvZGM6Zm9ybWF0PgogICAgICAgIDxkYzp0eXBlCiAgICAgICAgICAgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIgLz4KICAgICAgICA8ZGM6dGl0bGUgLz4KICAgICAgPC9jYzpXb3JrPgogICAgPC9yZGY6UkRGPgogIDwvbWV0YWRhdGE+CiAgPGcKICAgICBpbmtzY2FwZTpsYWJlbD0iQ2FtYWRhIDEiCiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIKICAgICBpZD0ibGF5ZXIxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKDI1LjMwMzM5NywtOTguNDI4MDgyKSI+CiAgICA8ZwogICAgICAgaWQ9Imc4MzkiCiAgICAgICBzdHlsZT0ic3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLW9wYWNpdHk6MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIC0yNS4yMzI2ODcsOTguNDk4Nzk3IDAuNzA3MTExLDAuNzA3MDk2IgogICAgICAgICBpZD0icGF0aDgzMyIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gLTIzLjk1OTM2MSw5OC40OTg3OTMgLTAuNzA3MTA2LDAuNzA3MSIKICAgICAgICAgaWQ9InBhdGg4MzUiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" name="name"/>
                <Option type="QString" value="0,-0.10000000000000001" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" name="outline_color"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option name="parameters"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.92" name="size"/>
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
        </layer>
        <layer pass="0" enabled="1" id="{242f7b97-6398-411e-b1cb-db6751a91f8d}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="3" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="0" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="LastVertex" name="placements"/>
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
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@3@1" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{96bed60a-91a0-4c31-9f64-4ed377da83e0}" locked="0" class="SvgMarker">
              <Option type="Map">
                <Option type="QString" value="270" name="angle"/>
                <Option type="QString" value="255,0,0,255,rgb:1,0,0,1" name="color"/>
                <Option type="QString" value="0" name="fixedAspectRatio"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjxzdmcKICAgd2lkdGg9IjEuNDE0NzQ2M21tIgogICBoZWlnaHQ9IjAuODQ4NTIyNDJtbSIKICAgdmlld0JveD0iMCAwIDEuNDE0NzQ2MyAwLjg0ODUyMjM5IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjY2IgogICBpbmtzY2FwZTp2ZXJzaW9uPSIxLjIuMiAoYjBhODQ4NjU0MSwgMjAyMi0xMi0wMSkiCiAgIHNvZGlwb2RpOmRvY25hbWU9ImFiYWl4by5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIgogICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIgogICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxMjYwIiAvPgogIDxzb2RpcG9kaTpuYW1lZHZpZXcKICAgICBpZD0iYmFzZSIKICAgICBwYWdlY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMS4wIgogICAgIGlua3NjYXBlOnBhZ2VvcGFjaXR5PSIwLjAiCiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTp6b29tPSI2My4zNTY3NjUiCiAgICAgaW5rc2NhcGU6Y3g9Ii0xLjYwOTkzMDciCiAgICAgaW5rc2NhcGU6Y3k9IjMuMDkzNTkyMyIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgaW5rc2NhcGU6Y3VycmVudC1sYXllcj0ibGF5ZXIxIgogICAgIHNob3dncmlkPSJmYWxzZSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpkb2N1bWVudC1yb3RhdGlvbj0iMCIKICAgICBmaXQtbWFyZ2luLXRvcD0iMCIKICAgICBmaXQtbWFyZ2luLWxlZnQ9IjAiCiAgICAgZml0LW1hcmdpbi1yaWdodD0iMCIKICAgICBmaXQtbWFyZ2luLWJvdHRvbT0iMCIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMiIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIwIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iI2QxZDFkMSIgLz4KICA8bWV0YWRhdGEKICAgICBpZD0ibWV0YWRhdGExMjYzIj4KICAgIDxyZGY6UkRGPgogICAgICA8Y2M6V29yawogICAgICAgICByZGY6YWJvdXQ9IiI+CiAgICAgICAgPGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+CiAgICAgICAgPGRjOnR5cGUKICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPgogICAgICAgIDxkYzp0aXRsZSAvPgogICAgICA8L2NjOldvcms+CiAgICA8L3JkZjpSREY+CiAgPC9tZXRhZGF0YT4KICA8ZwogICAgIGlua3NjYXBlOmxhYmVsPSJDYW1hZGEgMSIKICAgICBpbmtzY2FwZTpncm91cG1vZGU9ImxheWVyIgogICAgIGlkPSJsYXllcjEiCiAgICAgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMjUuMjk4ODI3LC05OC4zNzk3NTIpIj4KICAgIDxnCiAgICAgICBpZD0iZzgzOSIKICAgICAgIHRyYW5zZm9ybT0icm90YXRlKDE4MCwtMjQuNTkzNzM5LDk4LjgyODE3OCkiCiAgICAgICBzdHlsZT0ic3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLW9wYWNpdHk6MSI+CiAgICAgIDxwYXRoCiAgICAgICAgIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjtzdHJva2UtbGluZWNhcDpidXR0O3N0cm9rZS1saW5lam9pbjptaXRlcjtzdHJva2UtbWl0ZXJsaW1pdDo0O3N0cm9rZS1kYXNoYXJyYXk6bm9uZTtzdHJva2Utb3BhY2l0eToxIgogICAgICAgICBkPSJtIC0yNS4yMzI2ODcsOTguNDk4Nzk3IDAuNzA3MTExLDAuNzA3MDk2IgogICAgICAgICBpZD0icGF0aDgzMyIgLz4KICAgICAgPHBhdGgKICAgICAgICAgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2U6IzI0MWYyMTtzdHJva2Utd2lkdGg6MC4yO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICAgIGQ9Im0gLTIzLjk1OTM2MSw5OC40OTg3OTMgLTAuNzA3MTA2LDAuNzA3MSIKICAgICAgICAgaWQ9InBhdGg4MzUiIC8+CiAgICA8L2c+CiAgPC9nPgo8L3N2Zz4K" name="name"/>
                <Option type="QString" value="0,0.10000000000000001" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" name="outline_color"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option name="parameters"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.92" name="size"/>
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
        </layer>
        <layer pass="0" enabled="1" id="{63740963-845d-4859-b250-0c676d7bd2a7}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="5" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="10" name="offset_along_line"/>
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
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@3@2" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{00d1e918-6042-4f28-ac61-8a610cd7c230}" locked="0" class="SimpleMarker">
              <Option type="Map">
                <Option type="QString" value="270" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0.10000000000000001" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.7" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" id="{3fd4bc3d-3c55-49b1-98a2-bc92ac8e80a4}" locked="0" class="SimpleLine">
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
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="line" is_animated="0" clip_to_extent="1" name="4" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{ebec46f9-4933-4fc5-9692-ee1175bd5dd7}" locked="0" class="SimpleLine">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="4;1" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" name="line_color"/>
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
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" enabled="1" id="{7187ad73-5713-4d39-8d69-bba057a96626}" locked="0" class="MarkerLine">
          <Option type="Map">
            <Option type="QString" value="4" name="average_angle_length"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="average_angle_map_unit_scale"/>
            <Option type="QString" value="MM" name="average_angle_unit"/>
            <Option type="QString" value="10" name="interval"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="interval_map_unit_scale"/>
            <Option type="QString" value="MM" name="interval_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="5" name="offset_along_line"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_along_line_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_along_line_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="bool" value="true" name="place_on_every_part"/>
            <Option type="QString" value="Interval" name="placements"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="rotate"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="@4@1" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="{c43ee5cb-7bdb-43bb-8dc0-fbc6393bf980}" locked="0" class="SimpleMarker">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="0.7" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="true" name="active"/>
                      <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="line" is_animated="0" clip_to_extent="1" name="5" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{133d9645-47ca-4e1a-89c6-43ffc910f39c}" locked="0" class="SimpleLine">
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
            <Option type="QString" value="255,1,1,255,rgb:1,0.00392156862745098,0.00392156862745098,1" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="2" name="line_width"/>
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
  </selection>
  <labeling type="rule-based">
    <rules key="{997bf997-fe5a-40e8-af14-05f0b912490e}">
      <rule filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; != 301 and &quot;tipo&quot; != 9999" key="{2d60c27d-a7b7-40fc-a73d-4a2f4211a90a}" description="Duto">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" fontKerning="1" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedBold="0" multilineHeightUnit="Percentage" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="0" namedStyle="Condensed" fontStrikeout="0" isExpression="0" useSubstitutions="0" textOrientation="horizontal" blendMode="0" textOpacity="1" legendString="Aa" tabStopDistanceUnit="Point" textColor="36,31,33,255,rgb:0.14117647058823529,0.12156862745098039,0.12941176470588237,1" fontSize="6" fontFamily="Noto Sans" fieldName="texto_edicao" fontWordSpacing="0" fontSizeUnit="Point" fontWeight="50" multilineHeight="1" capitalization="0" forcedItalic="0" allowHtml="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferBlendMode="0" bufferDraw="0"/>
            <text-mask maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;infra_vala_l_7ede732b_2965_4761_bea9_f09bf9259c66;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;infra_elemento_energia_l_4368b0e4_d9fd_4646_a037_ce18e441e1cc;" maskSize="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskSizeUnits="MM" maskSize2="0.20000000000000001"/>
            <background shapeSizeUnit="MM" shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeRadiiY="0" shapeRadiiX="0" shapeRotation="0" shapeOpacity="1" shapeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeSVGFile="">
              <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="markerSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="243,166,178,255,rgb:0.95294117647058818,0.65098039215686276,0.69803921568627447,1" name="color"/>
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
              <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="fillSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleFill">
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
            <shadow shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetGlobal="1" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowUnder="0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" multilineAlign="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" rightDirectionSymbol=">" plussign="0"/>
          <placement geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" lineAnchorPercent="0.5" centroidWhole="0" geometryGeneratorType="LineGeometry" offsetUnits="MM" lineAnchorClipping="0" maxCurvedCharAngleIn="25" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" repeatDistanceUnits="MM" offsetType="0" allowDegraded="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" distUnits="MM" overlapHandling="PreventOverlap" maximumDistanceUnit="MM" xOffset="0" dist="0" rotationAngle="0" layerType="LineGeometry" maximumDistance="0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" repeatDistance="200" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" prioritization="PreferCloser" fitInPolygonOnly="0" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorEnabled="1" lineAnchorTextPoint="CenterOfText" placementFlags="10" centroidInside="0" placement="2" overrunDistance="0" yOffset="0" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" labelPerPart="0" zIndex="0" unplacedVisibility="0" obstacleFactor="1" fontMinPixelSize="3" minFeatureSize="0" obstacleType="1" scaleMin="0" obstacle="1" upsidedownLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" drawLabels="1" mergeLines="1" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Color">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="PositionX">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
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
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; type=&quot;line&quot; is_animated=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; id=&quot;{2e16a154-6562-4da0-a05c-ea874590f573}&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
      <rule filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; = 301" key="{6b7dbe63-d7fa-4214-a4e0-ff4f0e7609fb}" description="Duto água">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" fontKerning="1" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedBold="0" multilineHeightUnit="Percentage" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="0" namedStyle="Condensed" fontStrikeout="0" isExpression="0" useSubstitutions="0" textOrientation="horizontal" blendMode="0" textOpacity="1" legendString="Aa" tabStopDistanceUnit="Point" textColor="0,173,240,255,rgb:0,0.67843137254901964,0.94117647058823528,1" fontSize="6" fontFamily="Noto Sans" fieldName="texto_edicao" fontWordSpacing="0" fontSizeUnit="Point" fontWeight="50" multilineHeight="1" capitalization="0" forcedItalic="0" allowHtml="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferBlendMode="0" bufferDraw="0"/>
            <text-mask maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;infra_vala_l_7ede732b_2965_4761_bea9_f09bf9259c66;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;infra_elemento_energia_l_4368b0e4_d9fd_4646_a037_ce18e441e1cc;" maskSize="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskSizeUnits="MM" maskSize2="0.20000000000000001"/>
            <background shapeSizeUnit="MM" shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeRadiiY="0" shapeRadiiX="0" shapeRotation="0" shapeOpacity="1" shapeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeSVGFile="">
              <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="markerSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="243,166,178,255,rgb:0.95294117647058818,0.65098039215686276,0.69803921568627447,1" name="color"/>
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
              <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="fillSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleFill">
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
            <shadow shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetGlobal="1" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowUnder="0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" multilineAlign="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" rightDirectionSymbol=">" plussign="0"/>
          <placement geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" lineAnchorPercent="0.5" centroidWhole="0" geometryGeneratorType="LineGeometry" offsetUnits="MM" lineAnchorClipping="0" maxCurvedCharAngleIn="25" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" repeatDistanceUnits="MM" offsetType="0" allowDegraded="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" distUnits="MM" overlapHandling="PreventOverlap" maximumDistanceUnit="MM" xOffset="0" dist="0" rotationAngle="0" layerType="LineGeometry" maximumDistance="0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" repeatDistance="200" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" prioritization="PreferCloser" fitInPolygonOnly="0" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorEnabled="1" lineAnchorTextPoint="CenterOfText" placementFlags="10" centroidInside="0" placement="2" overrunDistance="0" yOffset="0" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" labelPerPart="0" zIndex="0" unplacedVisibility="0" obstacleFactor="1" fontMinPixelSize="3" minFeatureSize="0" obstacleType="1" scaleMin="0" obstacle="1" upsidedownLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" drawLabels="1" mergeLines="1" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Color">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('ciano-100_0-160-223_#00A0DF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="PositionX">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
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
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; type=&quot;line&quot; is_animated=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; id=&quot;{898eb608-8466-427d-b658-e1b98f9f61de}&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
