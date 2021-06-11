<qgis version="3.18.1-Zürich" hasScaleBasedVisibilityFlag="0" minScale="100000000" styleCategories="AllStyleCategories" simplifyDrawingHints="0" simplifyDrawingTol="1" simplifyLocal="1" simplifyMaxScale="1" readOnly="0" labelsEnabled="0" simplifyAlgorithm="0" maxScale="0">
<flags>
<Identifiable>1</Identifiable>
<Removable>1</Removable>
<Searchable>1</Searchable>
<Private>0</Private>
</flags>
<temporal startField="" accumulate="0" endField="" durationUnit="min" mode="0" startExpression="" enabled="0" endExpression="" durationField="" fixedDuration="0">
<fixedRange>
<start></start>
<end></end>
</fixedRange>
</temporal>
<renderer-v2 symbollevels="0" forceraster="0" type="RuleRenderer" enableorderby="0">
<rules key="{19d54618-79b3-47af-bbd0-e84dac371fef}">
<rule label="L10303A" filter="&quot;tipo&quot; = 1&#xd;&#xa;and &quot;material_construcao&quot; in (1, 2)&#xd;&#xa;and  &quot;em_via_deslocamento&quot; = 2" symbol="0" key="{c9edef73-1f55-4492-a38e-d5cd52cd8f24}"/>
<rule label="L10303B" filter="&quot;tipo&quot; = 1&#xd;&#xd;&#xa;and &quot;material_construcao&quot; not in (1, 2) and  &quot;em_via_deslocamento&quot; = 2" symbol="1" key="{2491d842-155c-4ff3-872b-47b65025f4db}"/>
<rule label="L10303A em transporte" filter="&quot;tipo&quot; = 1&#xd;&#xd;&#xa;and &quot;material_construcao&quot; in (1, 2) and  &quot;em_via_deslocamento&quot; = 1" symbol="2" key="{3c315e5c-0be2-429e-8fd5-6278cf5358b9}"/>
<rule label="L10303B em transporte" filter="&quot;tipo&quot; = 1&#xd;&#xd;&#xa;and &quot;material_construcao&quot; not in (1, 2) and  &quot;em_via_deslocamento&quot; = 1" symbol="3" key="{533cb2e3-c649-495d-9b5e-0fcaa1c52cad}"/>
</rules>
<symbols>
<symbol name="0" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="round" name="capstyle" type="QString"/>
<Option value="0.66;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="round" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.4" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="round"/>
<prop k="customdash" v="0.66;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="round"/>
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.4"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="1" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="round" name="capstyle" type="QString"/>
<Option value="0.66;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="round" name="joinstyle" type="QString"/>
<Option value="149,80,88,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.4" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="round"/>
<prop k="customdash" v="0.66;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="round"/>
<prop k="line_color" v="149,80,88,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.4"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="2" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="round" name="capstyle" type="QString"/>
<Option value="0.66;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="round" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.3" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="round"/>
<prop k="customdash" v="0.66;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="round"/>
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.3"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties" type="Map">
<Option name="offset" type="Map">
<Option value="true" name="active" type="bool"/>
<Option value="-&quot;largura_simbologia&quot;/2" name="expression" type="QString"/>
<Option value="3" name="type" type="int"/>
</Option>
</Option>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="round" name="capstyle" type="QString"/>
<Option value="0.66;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="round" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.3" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="round"/>
<prop k="customdash" v="0.66;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="round"/>
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.3"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties" type="Map">
<Option name="offset" type="Map">
<Option value="true" name="active" type="bool"/>
<Option value="&quot;largura_simbologia&quot;/2" name="expression" type="QString"/>
<Option value="3" name="type" type="int"/>
</Option>
</Option>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="3" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="round" name="capstyle" type="QString"/>
<Option value="0.66;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="round" name="joinstyle" type="QString"/>
<Option value="149,80,88,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.3" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="round"/>
<prop k="customdash" v="0.66;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="round"/>
<prop k="line_color" v="149,80,88,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.3"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties" type="Map">
<Option name="offset" type="Map">
<Option value="true" name="active" type="bool"/>
<Option value="-&quot;largura_simbologia&quot;/2" name="expression" type="QString"/>
<Option value="3" name="type" type="int"/>
</Option>
</Option>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="round" name="capstyle" type="QString"/>
<Option value="0.66;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="round" name="joinstyle" type="QString"/>
<Option value="149,80,88,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.3" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="round"/>
<prop k="customdash" v="0.66;2"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="round"/>
<prop k="line_color" v="149,80,88,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.3"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties" type="Map">
<Option name="offset" type="Map">
<Option value="true" name="active" type="bool"/>
<Option value="&quot;largura_simbologia&quot;/2" name="expression" type="QString"/>
<Option value="3" name="type" type="int"/>
</Option>
</Option>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</symbols>
</renderer-v2>
<labeling type="rule-based">
<rules key="{84a344d6-7957-4920-8bfd-d305b94ebbfc}">
<rule filter="is_selected()" key="{4dbd8a9d-7d83-40bc-ac05-dbc3f9bb1a6c}">
<settings calloutType="simple">
<text-style textOrientation="horizontal" fontFamily="MS Shell Dlg 2" blendMode="0" previewBkgrdColor="255,255,255,255" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="10" fontSizeUnit="Point" isExpression="1" fontKerning="1" fontStrikeout="0" fontWordSpacing="0" fontUnderline="0" namedStyle="Normal" fieldName="CASE &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;WHEN material_construcao = 1 &#xd;&#xd;&#xa;THEN 'Alvenaria'&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;WHEN material_construcao = 2 &#xd;&#xd;&#xa;THEN 'Concreto'&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;WHEN material_construcao = 4 &#xd;&#xd;&#xa;THEN 'Rocha'&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;WHEN material_construcao = 23 &#xd;&#xd;&#xa;THEN 'Terra'&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END" allowHtml="0" fontLetterSpacing="0" fontWeight="50" useSubstitutions="0" textColor="255,255,255,255" fontItalic="0" textOpacity="1" multilineHeight="1">
<text-buffer bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSize="1" bufferOpacity="1" bufferNoFill="1" bufferBlendMode="0" bufferColor="241,99,28,255"/>
<text-mask maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskJoinStyle="128" maskEnabled="0" maskedSymbolLayers="" maskSize="1.5" maskSizeUnits="MM"/>
<background shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeBlendMode="0" shapeRotation="0" shapeSizeY="0" shapeSizeUnit="MM" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeOpacity="1" shapeOffsetY="0" shapeJoinStyle="64" shapeRadiiUnit="MM" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeType="0" shapeOffsetX="0" shapeSizeX="0" shapeDraw="0" shapeSVGFile="">
<symbol name="markerSymbol" alpha="1" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleMarker" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="angle" type="QString"/>
<Option value="183,72,75,255" name="color" type="QString"/>
<Option value="1" name="horizontal_anchor_point" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="circle" name="name" type="QString"/>
<Option value="0,0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="35,35,35,255" name="outline_color" type="QString"/>
<Option value="solid" name="outline_style" type="QString"/>
<Option value="0" name="outline_width" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
<Option value="MM" name="outline_width_unit" type="QString"/>
<Option value="diameter" name="scale_method" type="QString"/>
<Option value="2" name="size" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
<Option value="MM" name="size_unit" type="QString"/>
<Option value="1" name="vertical_anchor_point" type="QString"/>
</Option>
<prop k="angle" v="0"/>
<prop k="color" v="183,72,75,255"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</background>
<shadow shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowOffsetAngle="135" shadowOpacity="0.7" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowBlendMode="6" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowScale="100" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
<dd_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format addDirectionSymbol="0" placeDirectionSymbol="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" multilineAlign="0" decimals="3" autoWrapLength="0"/>
<placement offsetType="0" quadOffset="4" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" polygonPlacementFlags="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" dist="0" placement="2" priority="5" xOffset="0" maxCurvedCharAngleOut="-25" repeatDistance="0" yOffset="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" preserveRotation="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" offsetUnits="MM" overrunDistanceUnit="MM" geometryGenerator="" lineAnchorPercent="0.5" rotationAngle="0" centroidWhole="0" repeatDistanceUnits="MM" lineAnchorType="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placementFlags="10" distUnits="MM" maxCurvedCharAngleIn="25" fitInPolygonOnly="0" layerType="LineGeometry"/>
<rendering fontLimitPixelSize="0" labelPerPart="0" displayAll="0" scaleMin="0" obstacleType="1" maxNumLabels="2000" fontMinPixelSize="3" mergeLines="0" zIndex="0" drawLabels="1" scaleMax="0" obstacle="1" minFeatureSize="0" obstacleFactor="1" scaleVisibility="0" limitNumLabels="0" fontMaxPixelSize="10000" upsidedownLabels="0"/>
<dd_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</dd_properties>
<callout type="simple">
<Option type="Map">
<Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
<Option name="ddProperties" type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
<Option value="false" name="drawToAllParts" type="bool"/>
<Option value="0" name="enabled" type="QString"/>
<Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
<Option value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
<Option value="0" name="minLength" type="double"/>
<Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
<Option value="MM" name="minLengthUnit" type="QString"/>
<Option value="0" name="offsetFromAnchor" type="double"/>
<Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
<Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
<Option value="0" name="offsetFromLabel" type="double"/>
<Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
<Option value="MM" name="offsetFromLabelUnit" type="QString"/>
</Option>
</callout>
</settings>
</rule>
</rules>
</labeling>
<customproperties>
<property value="&quot;nome&quot;" key="dualview/previewExpressions"/>
<property value="0" key="embeddedWidgets/count"/>
<property key="variableNames"/>
<property key="variableValues"/>
</customproperties>
<blendMode>0</blendMode>
<featureBlendMode>0</featureBlendMode>
<layerOpacity>1</layerOpacity>
<SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
<DiagramCategory penWidth="0" backgroundColor="#ffffff" penAlpha="255" penColor="#000000" direction="0" scaleDependency="Area" maxScaleDenominator="1e+08" height="15" sizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0" enabled="0" sizeType="MM" width="15" backgroundAlpha="255" diagramOrientation="Up" minimumSize="0" minScaleDenominator="0" showAxis="1" rotationOffset="270" barWidth="5" lineSizeType="MM" opacity="1" spacing="5" spacingUnitScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" lineSizeScale="3x:0,0,0,0,0,0" spacingUnit="MM">
<fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
<attribute color="#000000" label="" field=""/>
<axisSymbol>
<symbol name="" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="square" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.26" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.26"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="0"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</axisSymbol>
</DiagramCategory>
</SingleCategoryDiagramRenderer>
<DiagramLayerSettings priority="0" zIndex="0" showAll="1" placement="2" linePlacementFlags="18" dist="0" obstacle="0">
<properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</properties>
</DiagramLayerSettings>
<geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
<activeChecks/>
<checkConfiguration/>
</geometryOptions>
<legend type="default-vector"/>
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
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
</Option>
<Option type="Map">
<Option value="1" name="Barragem (1)" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Dique (2)" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="material_construcao">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
</Option>
<Option type="Map">
<Option value="1" name="Alvenaria (1)" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Concreto (2)" type="QString"/>
</Option>
<Option type="Map">
<Option value="0" name="Desconhecido (0)" type="QString"/>
</Option>
<Option type="Map">
<Option value="4" name="Rocha (4)" type="QString"/>
</Option>
<Option type="Map">
<Option value="23" name="Terra (23)" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="em_via_deslocamento">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option value="1" name="Sim" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Não" type="QString"/>
</Option>
</Option>
</Option>
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
<field configurationFlags="None" name="data_modificacao">
<editWidget type="DateTime">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="controle_uuid">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="usuario_criacao">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="usuario_atualizacao">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="insumo">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="data_insumo">
<editWidget type="DateTime">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="visivel">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option value="false" name="IsMultiline" type="bool"/>
<Option value="false" name="UseHtml" type="bool"/>
</Option>
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
<field configurationFlags="None" name="carta_mini">
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
<field configurationFlags="None" name="justificativa_txt">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="lenght_otf">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
</fieldConfiguration>
<aliases>
<alias name="" field="id" index="0"/>
<alias name="" field="nome" index="1"/>
<alias name="" field="tipo" index="2"/>
<alias name="" field="material_construcao" index="3"/>
<alias name="" field="em_via_deslocamento" index="4"/>
<alias name="" field="observacao" index="5"/>
<alias name="" field="data_modificacao" index="6"/>
<alias name="" field="controle_uuid" index="7"/>
<alias name="" field="usuario_criacao" index="8"/>
<alias name="" field="usuario_atualizacao" index="9"/>
<alias name="" field="insumo" index="10"/>
<alias name="" field="data_insumo" index="11"/>
<alias name="" field="visivel" index="12"/>
<alias name="" field="texto_edicao" index="13"/>
<alias name="" field="carta_mini" index="14"/>
<alias name="" field="largura_simbologia" index="15"/>
<alias name="" field="label_x" index="16"/>
<alias name="" field="label_y" index="17"/>
<alias name="" field="justificativa_txt" index="18"/>
<alias name="" field="lenght_otf" index="19"/>
</aliases>
<defaults>
<default applyOnUpdate="0" expression="" field="id"/>
<default applyOnUpdate="0" expression="" field="nome"/>
<default applyOnUpdate="0" expression="" field="tipo"/>
<default applyOnUpdate="0" expression="" field="material_construcao"/>
<default applyOnUpdate="0" expression="" field="em_via_deslocamento"/>
<default applyOnUpdate="0" expression="" field="observacao"/>
<default applyOnUpdate="0" expression="" field="data_modificacao"/>
<default applyOnUpdate="0" expression="" field="controle_uuid"/>
<default applyOnUpdate="0" expression="" field="usuario_criacao"/>
<default applyOnUpdate="0" expression="" field="usuario_atualizacao"/>
<default applyOnUpdate="0" expression="" field="insumo"/>
<default applyOnUpdate="0" expression="" field="data_insumo"/>
<default applyOnUpdate="0" expression="" field="visivel"/>
<default applyOnUpdate="0" expression="" field="texto_edicao"/>
<default applyOnUpdate="0" expression="" field="carta_mini"/>
<default applyOnUpdate="0" expression="" field="largura_simbologia"/>
<default applyOnUpdate="0" expression="" field="label_x"/>
<default applyOnUpdate="0" expression="" field="label_y"/>
<default applyOnUpdate="0" expression="" field="justificativa_txt"/>
<default applyOnUpdate="0" expression="" field="lenght_otf"/>
</defaults>
<constraints>
<constraint exp_strength="0" notnull_strength="1" unique_strength="1" constraints="3" field="id"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="nome"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="tipo"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="material_construcao"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="em_via_deslocamento"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="observacao"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="data_modificacao"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="controle_uuid"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="usuario_criacao"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="usuario_atualizacao"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="insumo"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="data_insumo"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="visivel"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="texto_edicao"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="carta_mini"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="largura_simbologia"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="label_x"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="label_y"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="justificativa_txt"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="lenght_otf"/>
</constraints>
<constraintExpressions>
<constraint desc="" field="id" exp=""/>
<constraint desc="" field="nome" exp=""/>
<constraint desc="" field="tipo" exp=""/>
<constraint desc="" field="material_construcao" exp=""/>
<constraint desc="" field="em_via_deslocamento" exp=""/>
<constraint desc="" field="observacao" exp=""/>
<constraint desc="" field="data_modificacao" exp=""/>
<constraint desc="" field="controle_uuid" exp=""/>
<constraint desc="" field="usuario_criacao" exp=""/>
<constraint desc="" field="usuario_atualizacao" exp=""/>
<constraint desc="" field="insumo" exp=""/>
<constraint desc="" field="data_insumo" exp=""/>
<constraint desc="" field="visivel" exp=""/>
<constraint desc="" field="texto_edicao" exp=""/>
<constraint desc="" field="carta_mini" exp=""/>
<constraint desc="" field="largura_simbologia" exp=""/>
<constraint desc="" field="label_x" exp=""/>
<constraint desc="" field="label_y" exp=""/>
<constraint desc="" field="justificativa_txt" exp=""/>
<constraint desc="" field="lenght_otf" exp=""/>
</constraintExpressions>
<expressionfields>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
</expressionfields>
<attributeactions>
<defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
</attributeactions>
<attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
<columns>
<column width="-1" hidden="0" name="id" type="field"/>
<column width="-1" hidden="0" name="nome" type="field"/>
<column width="-1" hidden="0" name="tipo" type="field"/>
<column width="-1" hidden="0" name="material_construcao" type="field"/>
<column width="-1" hidden="0" name="em_via_deslocamento" type="field"/>
<column width="-1" hidden="0" name="observacao" type="field"/>
<column width="-1" hidden="0" name="data_modificacao" type="field"/>
<column width="-1" hidden="0" name="controle_uuid" type="field"/>
<column width="-1" hidden="0" name="usuario_criacao" type="field"/>
<column width="-1" hidden="0" name="usuario_atualizacao" type="field"/>
<column width="-1" hidden="0" name="insumo" type="field"/>
<column width="-1" hidden="0" name="data_insumo" type="field"/>
<column width="-1" hidden="0" name="lenght_otf" type="field"/>
<column width="-1" hidden="1" type="actions"/>
<column width="-1" hidden="0" name="visivel" type="field"/>
<column width="-1" hidden="0" name="texto_edicao" type="field"/>
<column width="-1" hidden="0" name="carta_mini" type="field"/>
<column width="173" hidden="0" name="largura_simbologia" type="field"/>
<column width="-1" hidden="0" name="label_x" type="field"/>
<column width="-1" hidden="0" name="label_y" type="field"/>
<column width="-1" hidden="0" name="justificativa_txt" type="field"/>
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
<editforminitcode><![CDATA[# -*- código: utf-8 -*-
"""
Formas QGIS podem ter uma função Python que é chamada quando o formulário é
aberto.

Use esta função para adicionar lógica extra para seus formulários.

Digite o nome da função na "função Python Init"
campo.
Um exemplo a seguir:
"""
de qgis.PyQt.QtWidgets importar QWidget

def my_form_open(diálogo, camada, feição):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
<featformsuppress>0</featformsuppress>
<editorlayout>generatedlayout</editorlayout>
<editable>
<field editable="1" name="carta_mini"/>
<field editable="1" name="controle_uuid"/>
<field editable="1" name="data_insumo"/>
<field editable="1" name="data_modificacao"/>
<field editable="1" name="em_via_deslocamento"/>
<field editable="1" name="id"/>
<field editable="1" name="insumo"/>
<field editable="1" name="justificativa_txt"/>
<field editable="1" name="label_x"/>
<field editable="1" name="label_y"/>
<field editable="1" name="largura_simbologia"/>
<field editable="0" name="lenght_otf"/>
<field editable="1" name="material_construcao"/>
<field editable="1" name="nome"/>
<field editable="1" name="observacao"/>
<field editable="1" name="texto_edicao"/>
<field editable="1" name="tipo"/>
<field editable="1" name="usuario_atualizacao"/>
<field editable="1" name="usuario_criacao"/>
<field editable="1" name="visivel"/>
</editable>
<labelOnTop>
<field name="carta_mini" labelOnTop="0"/>
<field name="controle_uuid" labelOnTop="0"/>
<field name="data_insumo" labelOnTop="0"/>
<field name="data_modificacao" labelOnTop="0"/>
<field name="em_via_deslocamento" labelOnTop="0"/>
<field name="id" labelOnTop="0"/>
<field name="insumo" labelOnTop="0"/>
<field name="justificativa_txt" labelOnTop="0"/>
<field name="label_x" labelOnTop="0"/>
<field name="label_y" labelOnTop="0"/>
<field name="largura_simbologia" labelOnTop="0"/>
<field name="lenght_otf" labelOnTop="0"/>
<field name="material_construcao" labelOnTop="0"/>
<field name="nome" labelOnTop="0"/>
<field name="observacao" labelOnTop="0"/>
<field name="texto_edicao" labelOnTop="0"/>
<field name="tipo" labelOnTop="0"/>
<field name="usuario_atualizacao" labelOnTop="0"/>
<field name="usuario_criacao" labelOnTop="0"/>
<field name="visivel" labelOnTop="0"/>
</labelOnTop>
<dataDefinedFieldProperties/>
<widgets/>
<previewExpression>"nome"</previewExpression>
<mapTip></mapTip>
<layerGeometryType>1</layerGeometryType>
</qgis>