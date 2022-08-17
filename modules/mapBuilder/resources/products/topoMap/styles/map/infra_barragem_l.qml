<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="0" version="3.24.3-Tisler" labelsEnabled="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" readOnly="0" symbologyReferenceScale="-1" maxScale="0" simplifyAlgorithm="0" simplifyDrawingHints="1" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal limitMode="0" fixedDuration="0" startExpression="" endExpression="" durationField="" endField="" enabled="0" startField="" durationUnit="min" accumulate="0" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" referencescale="-1" type="RuleRenderer" enableorderby="0" symbollevels="0">
    <rules key="{19d54618-79b3-47af-bbd0-e84dac371fef}">
      <rule label="L10303A" filter="&quot;tipo&quot; = 1&#xd;&#xa;and &quot;material_construcao&quot; in (1, 2)&#xd;&#xa;and  &quot;sobreposto_transportes&quot; = 2" symbol="0" key="{c9edef73-1f55-4492-a38e-d5cd52cd8f24}"/>
      <rule label="L10303B" filter="&quot;tipo&quot; = 1&#xd;&#xd;&#xa;and &quot;material_construcao&quot; not in (1, 2) and  &quot;sobreposto_transportes&quot; = 2" symbol="1" key="{2491d842-155c-4ff3-872b-47b65025f4db}"/>
      <rule label="L10303A em transporte" filter="&quot;tipo&quot; = 1&#xd;&#xd;&#xa;and &quot;material_construcao&quot; in (1, 2) and  &quot;sobreposto_transportes&quot; = 1" symbol="2" key="{3c315e5c-0be2-429e-8fd5-6278cf5358b9}"/>
      <rule label="L10303B em transporte" filter="&quot;tipo&quot; = 1&#xd;&#xd;&#xa;and &quot;material_construcao&quot; not in (1, 2) and  &quot;sobreposto_transportes&quot; = 1" symbol="3" key="{533cb2e3-c649-495d-9b5e-0fcaa1c52cad}"/>
      <rule filter="ELSE" symbol="4" key="{6de2b40b-f298-42c9-bf7f-93ae82730b74}"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="0.66;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="miter" name="joinstyle"/>
            <Option type="QString" value="0,0,0,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.4" name="line_width"/>
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
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="0.66;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="miter" name="joinstyle"/>
            <Option type="QString" value="149,80,88,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.4" name="line_width"/>
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
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="149,80,88,255" k="line_color"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="2">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="0.66;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="miter" name="joinstyle"/>
            <Option type="QString" value="0,0,0,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.3" name="line_width"/>
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
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
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
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="offset">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="-&quot;largura_simbologia&quot;/2" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="0.66;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="miter" name="joinstyle"/>
            <Option type="QString" value="0,0,0,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.3" name="line_width"/>
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
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
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
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="offset">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;largura_simbologia&quot;/2" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="3">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="flat" name="capstyle"/>
            <Option type="QString" value="0.66;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="miter" name="joinstyle"/>
            <Option type="QString" value="149,80,88,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.3" name="line_width"/>
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
          <prop v="0" k="align_dash_pattern"/>
          <prop v="flat" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="149,80,88,255" k="line_color"/>
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
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="offset">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="-&quot;largura_simbologia&quot;/2" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="round" name="capstyle"/>
            <Option type="QString" value="0.66;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="round" name="joinstyle"/>
            <Option type="QString" value="149,80,88,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.3" name="line_width"/>
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
          <prop v="0" k="align_dash_pattern"/>
          <prop v="round" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="149,80,88,255" k="line_color"/>
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
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="offset">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;largura_simbologia&quot;/2" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="4">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" pass="0" enabled="1">
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
            <Option type="QString" value="254,0,42,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="1.26" name="line_width"/>
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
          <prop v="254,0,42,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1.26" k="line_width"/>
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
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{265bc72d-9f28-4c27-9dab-b39e403af291}">
      <rule key="{ffd29dfb-6262-4082-ae1f-04b5a826d973}" description="Barragem">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" legendString="Aa" fontSizeUnit="Point" fontKerning="1" fontItalic="1" textColor="0,0,0,255" fontWordSpacing="0" textOpacity="1" namedStyle="Condensed Italic" useSubstitutions="0" fontLetterSpacing="0" fontWeight="50" previewBkgrdColor="255,255,255,255" fontFamily="Noto Sans" multilineHeight="0.80000000000000004" isExpression="0" blendMode="0" fontStrikeout="0" allowHtml="0" fontSize="6" fieldName="texto_edicao" fontUnderline="0" capitalization="0" textOrientation="horizontal">
            <families/>
            <text-buffer bufferJoinStyle="128" bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1" bufferSize="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="1" maskType="0" maskedSymbolLayers="auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},1,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},2,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},3,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},4,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},5,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},6,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},7,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},8,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},9,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},10,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},11,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},12,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},13,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},14,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},15,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},16,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},17,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},18,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},19,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},20,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},21,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},22,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},23,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},24,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},25,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},26,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},27,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},28,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},29,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},30,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},31,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},32,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},33,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},34,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},35,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},36,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},37,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},38,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},39,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},40,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},41,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},42,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},43,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},44,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},45,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},46,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},47,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},48,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},49,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},50,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},51,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},52,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},53,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},54,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},55,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},56,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},57,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},58,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},59,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},60,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},61,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},62,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},63,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},64,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},65,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},66,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},67,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},68,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},69,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},70,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},71,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},72,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},73,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},74,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},75,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},76,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},77,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},78,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},79,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},80,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},81,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},82,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},83,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},84,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},85,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},86,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},87,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},88,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},89,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},90,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},91,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},92,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},93,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},94,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},95,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},96,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},97,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},98,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},99,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},100,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},101,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},102,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},103,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},104,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},105,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},106,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},107,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},108,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},109,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},110,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},111,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},112,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},113,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},114,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},115,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},116,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},117,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},118,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},119,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},120,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},121,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},122,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},123,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},124,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},125,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},126,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},127,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},128,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},129,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},130,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},131,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},132,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},133,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},134,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},135,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},136,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},137,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},138,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},139,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},140,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},141,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},142,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},143,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},144,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},145,0;auxiliar_moldura_79b0fa99_4add_4099_a954_58d45b6f246d,{9c9776f3-6790-4255-a951-02ecbdef827b},146,0" maskJoinStyle="128" maskOpacity="1" maskSizeUnits="MM"/>
            <background shapeRadiiUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeType="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiX="0" shapeSVGFile="" shapeSizeUnit="MM" shapeJoinStyle="64" shapeDraw="0" shapeSizeX="0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeOffsetY="0" shapeRotation="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeOpacity="1" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeBlendMode="0">
              <symbol force_rhr="0" type="marker" clip_to_extent="1" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="231,113,72,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="0,0,0,255" name="outline_color"/>
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
                  <prop v="0" k="angle"/>
                  <prop v="square" k="cap_style"/>
                  <prop v="231,113,72,255" k="color"/>
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
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" type="fill" clip_to_extent="1" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
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
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOpacity="0.69999999999999996" shadowRadiusAlphaOnly="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowColor="0,0,0,255" shadowScale="100" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" addDirectionSymbol="0" wrapChar="|" autoWrapLength="0" formatNumbers="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" placeDirectionSymbol="0" plussign="0" leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" decimals="3"/>
          <placement dist="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" priority="5" repeatDistanceUnits="MM" maxCurvedCharAngleIn="25" lineAnchorType="0" placementFlags="10" lineAnchorClipping="0" offsetType="0" geometryGeneratorEnabled="1" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" layerType="LineGeometry" xOffset="0.5" quadOffset="2" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" preserveRotation="1" yOffset="-0.5" placement="4" centroidInside="0" geometryGeneratorType="LineGeometry" polygonPlacementFlags="2" overrunDistanceUnit="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" centroidWhole="0" rotationUnit="AngleDegrees" offsetUnits="MM" lineAnchorPercent="0.5" rotationAngle="0" distUnits="MM" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)"/>
          <rendering fontMinPixelSize="3" limitNumLabels="0" scaleVisibility="0" obstacle="1" drawLabels="1" obstacleFactor="1" obstacleType="1" upsidedownLabels="0" mergeLines="0" labelPerPart="0" displayAll="0" fontLimitPixelSize="0" minFeatureSize="0" fontMaxPixelSize="10000" unplacedVisibility="0" scaleMin="0" maxNumLabels="2000" zIndex="0" scaleMax="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="AlwaysShow">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="PositionX">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="label_x" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="label_y" name="field"/>
                  <Option type="int" value="2" name="type"/>
                </Option>
                <Option type="Map" name="Show">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)" name="expression"/>
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
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
  <customproperties>
    <Option type="Map">
      <Option type="List" name="dualview/previewExpressions">
        <Option type="QString" value="&quot;nome&quot;"/>
      </Option>
      <Option type="int" value="0" name="embeddedWidgets/count"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory spacingUnitScale="3x:0,0,0,0,0,0" height="15" scaleDependency="Area" diagramOrientation="Up" barWidth="5" sizeScale="3x:0,0,0,0,0,0" rotationOffset="270" labelPlacementMethod="XHeight" backgroundAlpha="255" spacing="5" lineSizeType="MM" penAlpha="255" penColor="#000000" maxScaleDenominator="0" minimumSize="0" lineSizeScale="3x:0,0,0,0,0,0" direction="0" sizeType="MM" enabled="0" showAxis="1" scaleBasedVisibility="0" minScaleDenominator="0" penWidth="0" width="15" spacingUnit="MM" backgroundColor="#ffffff" opacity="1">
      <fontProperties style="" description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0"/>
      <axisSymbol>
        <symbol force_rhr="0" type="line" clip_to_extent="1" alpha="1" name="">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
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
              <Option type="QString" value="35,35,35,255" name="line_color"/>
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
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
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
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" zIndex="0" placement="2" priority="0" obstacle="0" linePlacementFlags="18" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="nome">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tipo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="material_construcao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="texto_edicao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="label_x">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="label_y">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="sobreposto_transportes">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="largura_simbologia">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="observacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="nome" index="1" name=""/>
    <alias field="tipo" index="2" name=""/>
    <alias field="material_construcao" index="3" name=""/>
    <alias field="texto_edicao" index="4" name=""/>
    <alias field="label_x" index="5" name=""/>
    <alias field="label_y" index="6" name=""/>
    <alias field="sobreposto_transportes" index="7" name=""/>
    <alias field="largura_simbologia" index="8" name=""/>
    <alias field="observacao" index="9" name=""/>
  </aliases>
  <defaults>
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="nome" expression="" applyOnUpdate="0"/>
    <default field="tipo" expression="" applyOnUpdate="0"/>
    <default field="material_construcao" expression="" applyOnUpdate="0"/>
    <default field="texto_edicao" expression="" applyOnUpdate="0"/>
    <default field="label_x" expression="" applyOnUpdate="0"/>
    <default field="label_y" expression="" applyOnUpdate="0"/>
    <default field="sobreposto_transportes" expression="" applyOnUpdate="0"/>
    <default field="largura_simbologia" expression="" applyOnUpdate="0"/>
    <default field="observacao" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" constraints="3" notnull_strength="1" exp_strength="0" unique_strength="1"/>
    <constraint field="nome" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="tipo" constraints="1" notnull_strength="1" exp_strength="0" unique_strength="0"/>
    <constraint field="material_construcao" constraints="1" notnull_strength="1" exp_strength="0" unique_strength="0"/>
    <constraint field="texto_edicao" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="label_x" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="label_y" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="sobreposto_transportes" constraints="1" notnull_strength="1" exp_strength="0" unique_strength="0"/>
    <constraint field="largura_simbologia" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="observacao" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="nome" desc="" exp=""/>
    <constraint field="tipo" desc="" exp=""/>
    <constraint field="material_construcao" desc="" exp=""/>
    <constraint field="texto_edicao" desc="" exp=""/>
    <constraint field="label_x" desc="" exp=""/>
    <constraint field="label_y" desc="" exp=""/>
    <constraint field="sobreposto_transportes" desc="" exp=""/>
    <constraint field="largura_simbologia" desc="" exp=""/>
    <constraint field="observacao" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column type="field" hidden="0" name="id" width="-1"/>
      <column type="field" hidden="0" name="nome" width="-1"/>
      <column type="field" hidden="0" name="tipo" width="-1"/>
      <column type="field" hidden="0" name="material_construcao" width="-1"/>
      <column type="field" hidden="0" name="texto_edicao" width="-1"/>
      <column type="field" hidden="0" name="label_x" width="-1"/>
      <column type="field" hidden="0" name="label_y" width="-1"/>
      <column type="field" hidden="0" name="sobreposto_transportes" width="-1"/>
      <column type="field" hidden="0" name="largura_simbologia" width="-1"/>
      <column type="field" hidden="0" name="observacao" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="id"/>
    <field editable="1" name="label_x"/>
    <field editable="1" name="label_y"/>
    <field editable="1" name="largura_simbologia"/>
    <field editable="1" name="material_construcao"/>
    <field editable="1" name="nome"/>
    <field editable="1" name="observacao"/>
    <field editable="1" name="sobreposto_transportes"/>
    <field editable="1" name="texto_edicao"/>
    <field editable="1" name="tipo"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="label_x"/>
    <field labelOnTop="0" name="label_y"/>
    <field labelOnTop="0" name="largura_simbologia"/>
    <field labelOnTop="0" name="material_construcao"/>
    <field labelOnTop="0" name="nome"/>
    <field labelOnTop="0" name="observacao"/>
    <field labelOnTop="0" name="sobreposto_transportes"/>
    <field labelOnTop="0" name="texto_edicao"/>
    <field labelOnTop="0" name="tipo"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="label_x"/>
    <field reuseLastValue="0" name="label_y"/>
    <field reuseLastValue="0" name="largura_simbologia"/>
    <field reuseLastValue="0" name="material_construcao"/>
    <field reuseLastValue="0" name="nome"/>
    <field reuseLastValue="0" name="observacao"/>
    <field reuseLastValue="0" name="sobreposto_transportes"/>
    <field reuseLastValue="0" name="texto_edicao"/>
    <field reuseLastValue="0" name="tipo"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"nome"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
