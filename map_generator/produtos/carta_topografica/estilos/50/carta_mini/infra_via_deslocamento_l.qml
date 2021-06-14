<qgis maxScale="0" simplifyAlgorithm="0" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" simplifyDrawingHints="0" styleCategories="AllStyleCategories" simplifyDrawingTol="1" simplifyMaxScale="1" minScale="100000000" version="3.18.3-Zürich" readOnly="0">
<flags>
<Identifiable>1</Identifiable>
<Removable>1</Removable>
<Searchable>1</Searchable>
<Private>0</Private>
</flags>
<temporal mode="0" startExpression="" endExpression="" accumulate="0" startField="" durationUnit="min" fixedDuration="0" enabled="0" durationField="" endField="">
<fixedRange>
<start></start>
<end></end>
</fixedRange>
</temporal>
<renderer-v2 type="mergedFeatureRenderer" forceraster="0" enableorderby="0">
<renderer-v2 symbollevels="1" type="RuleRenderer" forceraster="0" enableorderby="0">
<rules key="{8b45b4bb-4fb7-44a3-aa62-5672c279e3b9}">
<rule filter=" &quot;carta_mini&quot; is true" key="{c9006d7c-9600-4ea2-8886-781e7a534f69}">
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; =  1" symbol="0" label="L11302A" key="{073f8cd1-35bd-4b59-9ff2-6dee1fd595c6}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  >= 4" symbol="1" label="L11302B" key="{508ad0fd-b79b-43b1-b918-2386dfef56c2}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and&#xd;(&quot;nr_faixas&quot;  IN (2,3) or &quot;nr_faixas&quot; is null)" symbol="2" label="L11302C" key="{8aa9dd4a-b763-40a2-a409-fe98ceaee92b}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  = 1" symbol="3" label="L11302D" key="{2e7c3716-3662-43f5-af33-000d98817cb1}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2  and&#xd;&#xa;&quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" symbol="4" label="L11302E" key="{411e931b-34b1-4222-8b94-696b57aabd2a}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" symbol="5" label="L11302F" key="{2078308f-3d65-4733-ae6d-9115c3242e90}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; in (3) and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;&quot;nr_faixas&quot; = 1" symbol="6" label="L11302G" key="{03dbd6cc-3f4e-45f1-96cf-d00835f7f797}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" symbol="7" label="L11302H" key="{e78aabf3-cd8b-4ddf-b4c4-c1845903191a}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;(&#xa; &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" symbol="8" label="L11302I" key="{c67c92e4-bf31-48ae-a4c3-953af625c328}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" symbol="9" label="L11302J" key="{ad6cf3b0-79b0-4132-ac56-702dd2db0484}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" symbol="10" label="L11302K" key="{c0b6a4f0-791d-40cf-bea3-4f4a162732ad}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" symbol="11" label="L11302L" key="{07d5324b-7751-4237-8a20-2cfe37df19ba}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" symbol="12" label="L11302M" key="{00ad5ddb-4c1f-4f06-8e9e-f32bd3b02296}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; !=  1 " symbol="13" label="L11302N" key="{e2fff656-72a1-43f8-a625-3bef656e7d6a}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 1" symbol="14" label="L11302O" key="{3b16ac33-42d5-437f-b567-3ae6687755e0}"/>
<rule filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3)and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2" symbol="15" label="L11302P" key="{0d219191-1752-4562-a488-44b745157fae}"/>
<rule filter=" &quot;tipo&quot; = 3" symbol="16" label="L10802A" key="{9edd9e8d-6d43-4f7b-90a9-3ddd25427c36}"/>
</rule>
</rules>
<symbols>
<symbol alpha="1" name="0" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="1.1" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="1.1"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="6" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.8" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="153,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.8"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="2" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.1" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.1"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.9" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.9"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="6" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.6" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="153,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.6"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="10" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.9" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.9"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.6" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.6"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="3.5;1.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="199,91,91,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.6" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="3.5;1.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="199,91,91,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.6"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="11" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.7"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="3.5;1.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="199,91,91,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="3.5;1.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="199,91,91,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="12" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="miter" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="joinstyle" v="miter"/>
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="miter" type="QString"/>
<Option name="line_color" value="255,255,255,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="joinstyle" v="miter"/>
<prop k="line_color" v="255,255,255,255"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="3.5;1.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="miter" type="QString"/>
<Option name="line_color" value="199,91,91,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="3.5;1.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="miter"/>
<prop k="line_color" v="199,91,91,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.3"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="13" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="14" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="1.1" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="1.1"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="2.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="dash" type="QString"/>
<Option name="line_width" value="1.1" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="2.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="dash"/>
<prop k="line_width" v="1.1"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="2" enabled="1" locked="0" class="SimpleLine">
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
<Option name="line_width" value="0.8" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.8"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="3" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="2.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.1" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="2.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.1"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="15" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.7"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="2.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="dash" type="QString"/>
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="2.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="dash"/>
<prop k="line_width" v="0.7"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="2" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.7"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="16" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="3.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="dash" type="QString"/>
<Option name="line_width" value="0.25" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="3.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="dash"/>
<prop k="line_width" v="0.25"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="2" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.7"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="6" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="153,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="3" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="153,0,0,255"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="4" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.9" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.9"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="199,91,91,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.6" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="199,91,91,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.6"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="5" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.7"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="199,91,91,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="199,91,91,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="6" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="5" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="199,91,91,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="199,91,91,255"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="7" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.9" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.9"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.6" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.6"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="6" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="square" type="QString"/>
<Option name="customdash" value="3.5;1.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.6" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="square"/>
<prop k="customdash" v="3.5;1.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="153,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.6"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="8" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.7" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.7"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="6" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="3.5;1.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="3.5;1.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="153,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol alpha="1" name="9" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="5;2" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="0,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.5" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="0,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.5"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="1" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
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
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<prop k="line_color" v="255,255,255,255"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="6" enabled="1" locked="0" class="SimpleLine">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="3.5;1.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="153,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.3" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="3.5;1.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="153,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.3"/>
<prop k="line_width_unit" v="MM"/>
<prop k="offset" v="0"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="0"/>
<prop k="use_custom_dash" v="1"/>
<prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
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
<orderby>
<orderByClause asc="1" nullsFirst="0">"id"</orderByClause>
</orderby>
</renderer-v2>
<orderby>
<orderByClause asc="1" nullsFirst="0">"tipo"</orderByClause>
<orderByClause asc="1" nullsFirst="0">"revestimento"</orderByClause>
<orderByClause asc="1" nullsFirst="0">"nr_faixas"</orderByClause>
</orderby>
</renderer-v2>
<labeling type="simple">
<settings calloutType="simple">
<text-style fontUnderline="0" fontSize="6" blendMode="0" namedStyle="Normal" capitalization="1" textOpacity="1" textOrientation="horizontal" fieldName="coalesce(&quot;nome&quot;, ') || coalesce(&quot;nr_faixas&quot; || 'FAIXAS',')&#xd;" useSubstitutions="0" fontSizeUnit="Point" allowHtml="0" fontStrikeout="0" isExpression="1" fontWordSpacing="0" fontLetterSpacing="0" textColor="0,0,0,255" multilineHeight="1" fontFamily="Arial" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fontWeight="50" fontKerning="1">
<text-buffer bufferSize="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferDraw="0"/>
<text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskOpacity="1" maskedSymbolLayers="" maskEnabled="0" maskType="0" maskSize="1.5"/>
<background shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeRadiiX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeRotation="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeUnit="MM" shapeDraw="0" shapeOffsetX="0" shapeBlendMode="0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeOffsetY="0" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0">
<symbol alpha="1" name="markerSymbol" clip_to_extent="1" type="marker" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleMarker">
<Option type="Map">
<Option name="angle" value="0" type="QString"/>
<Option name="color" value="229,182,54,255" type="QString"/>
<Option name="horizontal_anchor_point" value="1" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="name" value="circle" type="QString"/>
<Option name="offset" value="0,0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="outline_color" value="35,35,35,255" type="QString"/>
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
<prop k="angle" v="0"/>
<prop k="color" v="229,182,54,255"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</background>
<shadow shadowOpacity="0.7" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format rightDirectionSymbol=">" formatNumbers="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" plussign="0" wrapChar="" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" autoWrapLength="0" placeDirectionSymbol="0"/>
<placement centroidWhole="0" repeatDistance="0" overrunDistanceUnit="MM" geometryGeneratorEnabled="0" fitInPolygonOnly="0" rotationAngle="0" lineAnchorPercent="0.5" overrunDistance="0" geometryGenerator="" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="2" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" yOffset="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" dist="0" quadOffset="4" offsetType="0" distUnits="MM" preserveRotation="1" priority="5" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" layerType="LineGeometry" placementFlags="10"/>
<rendering fontLimitPixelSize="0" drawLabels="1" obstacleType="1" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" obstacle="1" minFeatureSize="0" scaleVisibility="0" fontMaxPixelSize="10000" mergeLines="0" scaleMin="0" obstacleFactor="1" maxNumLabels="2000" scaleMax="0" labelPerPart="0" displayAll="0" zIndex="0"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<callout type="simple">
<Option type="Map">
<Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
<Option name="ddProperties" type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
<Option name="drawToAllParts" value="false" type="bool"/>
<Option name="enabled" value="0" type="QString"/>
<Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
<Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
<DiagramCategory width="15" maxScaleDenominator="1e+08" spacing="5" penAlpha="255" backgroundColor="#ffffff" scaleBasedVisibility="0" rotationOffset="270" direction="0" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" lineSizeType="MM" opacity="1" sizeType="MM" showAxis="1" penWidth="0" scaleDependency="Area" penColor="#000000" diagramOrientation="Up" barWidth="5" minimumSize="0" minScaleDenominator="0" height="15" enabled="0" sizeScale="3x:0,0,0,0,0,0" spacingUnit="MM" spacingUnitScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight">
<fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
<attribute color="#000000" label="" field=""/>
<axisSymbol>
<symbol alpha="1" name="" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" enabled="1" locked="0" class="SimpleLine">
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
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="0.26" type="QString"/>
<Option name="line_width_unit" value="MM" type="QString"/>
<Option name="offset" value="0" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</axisSymbol>
</DiagramCategory>
</SingleCategoryDiagramRenderer>
<DiagramLayerSettings dist="0" linePlacementFlags="18" priority="0" showAll="1" placement="2" zIndex="0" obstacle="0">
<properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
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
<field name="id" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="nome" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="tipo" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
</Option>
<Option type="Map">
<Option name="Arruamento (5)" value="5" type="QString"/>
</Option>
<Option type="Map">
<Option name="Auto-estrada (4)" value="4" type="QString"/>
</Option>
<Option type="Map">
<Option name="Caminho carroçável (3)" value="3" type="QString"/>
</Option>
<Option type="Map">
<Option name="Estrada/Rodovia (2)" value="2" type="QString"/>
</Option>
<Option type="Map">
<Option name="Trilha ou Picada (6)" value="6" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="revestimento" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
</Option>
<Option type="Map">
<Option name="Calçado (4)" value="4" type="QString"/>
</Option>
<Option type="Map">
<Option name="Leito natural (1)" value="1" type="QString"/>
</Option>
<Option type="Map">
<Option name="Pavimentado (3)" value="3" type="QString"/>
</Option>
<Option type="Map">
<Option name="Revestimento primário (solto) (2)" value="2" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="trafego" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
<Option name="Periódico (2)" value="2" type="QString"/>
<Option name="Permanente (1)" value="1" type="QString"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="nr_faixas" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option name="IsMultiline" value="false" type="bool"/>
<Option name="UseHtml" value="false" type="bool"/>
</Option>
</config>
</editWidget>
</field>
<field name="nr_pistas" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option name="IsMultiline" value="false" type="bool"/>
<Option name="UseHtml" value="false" type="bool"/>
</Option>
</config>
</editWidget>
</field>
<field name="canteiro_divisorio" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
</Option>
<Option type="Map">
<Option name="Não (2)" value="2" type="QString"/>
</Option>
<Option type="Map">
<Option name="Sim (1)" value="1" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="situacao_fisica" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
</Option>
<Option type="Map">
<Option name="Abandonada (1)" value="1" type="QString"/>
</Option>
<Option type="Map">
<Option name="Construída (3)" value="3" type="QString"/>
</Option>
<Option type="Map">
<Option name="Desconhecida (0)" value="0" type="QString"/>
</Option>
<Option type="Map">
<Option name="Destruída (2)" value="2" type="QString"/>
</Option>
<Option type="Map">
<Option name="Em construção (4)" value="4" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="jurisdicao" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
</Option>
<Option type="Map">
<Option name="Desconhecida (0)" value="0" type="QString"/>
</Option>
<Option type="Map">
<Option name="Estadual (2)" value="2" type="QString"/>
</Option>
<Option type="Map">
<Option name="Federal (1)" value="1" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="sigla" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="administracao" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="Map">
<Option name="A SER PREENCHIDO (9999)" value="9999" type="QString"/>
<Option name="Concessionada (7)" value="7" type="QString"/>
<Option name="Desconhecida (0)" value="0" type="QString"/>
<Option name="Estadual (2)" value="2" type="QString"/>
<Option name="Federal (1)" value="1" type="QString"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="concessionaria" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="observacao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="data_modificacao" configurationFlags="None">
<editWidget type="DateTime">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="controle_uuid" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="usuario_criacao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="usuario_atualizacao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="insumo" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="data_insumo" configurationFlags="None">
<editWidget type="DateTime">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="visivel" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="texto_edicao" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="carta_mini" configurationFlags="None">
<editWidget type="CheckBox">
<config>
<Option type="Map">
<Option name="CheckedState" value="" type="QString"/>
<Option name="TextDisplayMethod" value="0" type="int"/>
<Option name="UncheckedState" value="" type="QString"/>
</Option>
</config>
</editWidget>
</field>
<field name="label_x" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="label_y" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="justificativa_txt" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field name="lenght_otf" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
</fieldConfiguration>
<aliases>
<alias name="" index="0" field="id"/>
<alias name="" index="1" field="nome"/>
<alias name="" index="2" field="tipo"/>
<alias name="" index="3" field="revestimento"/>
<alias name="" index="4" field="trafego"/>
<alias name="" index="5" field="nr_faixas"/>
<alias name="" index="6" field="nr_pistas"/>
<alias name="" index="7" field="canteiro_divisorio"/>
<alias name="" index="8" field="situacao_fisica"/>
<alias name="" index="9" field="jurisdicao"/>
<alias name="" index="10" field="sigla"/>
<alias name="" index="11" field="administracao"/>
<alias name="" index="12" field="concessionaria"/>
<alias name="" index="13" field="observacao"/>
<alias name="" index="14" field="data_modificacao"/>
<alias name="" index="15" field="controle_uuid"/>
<alias name="" index="16" field="usuario_criacao"/>
<alias name="" index="17" field="usuario_atualizacao"/>
<alias name="" index="18" field="insumo"/>
<alias name="" index="19" field="data_insumo"/>
<alias name="" index="20" field="visivel"/>
<alias name="" index="21" field="texto_edicao"/>
<alias name="" index="22" field="carta_mini"/>
<alias name="" index="23" field="label_x"/>
<alias name="" index="24" field="label_y"/>
<alias name="" index="25" field="justificativa_txt"/>
<alias name="" index="26" field="lenght_otf"/>
</aliases>
<defaults>
<default field="id" expression="" applyOnUpdate="0"/>
<default field="nome" expression="" applyOnUpdate="0"/>
<default field="tipo" expression="" applyOnUpdate="0"/>
<default field="revestimento" expression="" applyOnUpdate="0"/>
<default field="trafego" expression="" applyOnUpdate="0"/>
<default field="nr_faixas" expression="" applyOnUpdate="0"/>
<default field="nr_pistas" expression="" applyOnUpdate="0"/>
<default field="canteiro_divisorio" expression="" applyOnUpdate="0"/>
<default field="situacao_fisica" expression="" applyOnUpdate="0"/>
<default field="jurisdicao" expression="" applyOnUpdate="0"/>
<default field="sigla" expression="" applyOnUpdate="0"/>
<default field="administracao" expression="" applyOnUpdate="0"/>
<default field="concessionaria" expression="" applyOnUpdate="0"/>
<default field="observacao" expression="" applyOnUpdate="0"/>
<default field="data_modificacao" expression="" applyOnUpdate="0"/>
<default field="controle_uuid" expression="" applyOnUpdate="0"/>
<default field="usuario_criacao" expression="" applyOnUpdate="0"/>
<default field="usuario_atualizacao" expression="" applyOnUpdate="0"/>
<default field="insumo" expression="" applyOnUpdate="0"/>
<default field="data_insumo" expression="" applyOnUpdate="0"/>
<default field="visivel" expression="" applyOnUpdate="0"/>
<default field="texto_edicao" expression="" applyOnUpdate="0"/>
<default field="carta_mini" expression="" applyOnUpdate="0"/>
<default field="label_x" expression="" applyOnUpdate="0"/>
<default field="label_y" expression="" applyOnUpdate="0"/>
<default field="justificativa_txt" expression="" applyOnUpdate="0"/>
<default field="lenght_otf" expression="" applyOnUpdate="0"/>
</defaults>
<constraints>
<constraint unique_strength="1" field="id" constraints="3" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="nome" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="tipo" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="revestimento" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="trafego" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="nr_faixas" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="nr_pistas" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="canteiro_divisorio" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="situacao_fisica" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="jurisdicao" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="sigla" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="administracao" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="concessionaria" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="observacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="data_modificacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="controle_uuid" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="usuario_criacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="usuario_atualizacao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="insumo" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="data_insumo" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="visivel" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="texto_edicao" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="carta_mini" constraints="1" notnull_strength="1" exp_strength="0"/>
<constraint unique_strength="0" field="label_x" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="label_y" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="justificativa_txt" constraints="0" notnull_strength="0" exp_strength="0"/>
<constraint unique_strength="0" field="lenght_otf" constraints="0" notnull_strength="0" exp_strength="0"/>
</constraints>
<constraintExpressions>
<constraint field="id" exp="" desc=""/>
<constraint field="nome" exp="" desc=""/>
<constraint field="tipo" exp="" desc=""/>
<constraint field="revestimento" exp="" desc=""/>
<constraint field="trafego" exp="" desc=""/>
<constraint field="nr_faixas" exp="" desc=""/>
<constraint field="nr_pistas" exp="" desc=""/>
<constraint field="canteiro_divisorio" exp="" desc=""/>
<constraint field="situacao_fisica" exp="" desc=""/>
<constraint field="jurisdicao" exp="" desc=""/>
<constraint field="sigla" exp="" desc=""/>
<constraint field="administracao" exp="" desc=""/>
<constraint field="concessionaria" exp="" desc=""/>
<constraint field="observacao" exp="" desc=""/>
<constraint field="data_modificacao" exp="" desc=""/>
<constraint field="controle_uuid" exp="" desc=""/>
<constraint field="usuario_criacao" exp="" desc=""/>
<constraint field="usuario_atualizacao" exp="" desc=""/>
<constraint field="insumo" exp="" desc=""/>
<constraint field="data_insumo" exp="" desc=""/>
<constraint field="visivel" exp="" desc=""/>
<constraint field="texto_edicao" exp="" desc=""/>
<constraint field="carta_mini" exp="" desc=""/>
<constraint field="label_x" exp="" desc=""/>
<constraint field="label_y" exp="" desc=""/>
<constraint field="justificativa_txt" exp="" desc=""/>
<constraint field="lenght_otf" exp="" desc=""/>
</constraintExpressions>
<expressionfields>
<field precision="0" name="lenght_otf" typeName="" comment="" type="6" expression="$length" length="0" subType="0"/>
<field precision="0" name="lenght_otf" typeName="" comment="" type="6" expression="$length" length="0" subType="0"/>
<field precision="0" name="lenght_otf" typeName="" comment="" type="6" expression="$length" length="0" subType="0"/>
<field precision="0" name="lenght_otf" typeName="" comment="" type="6" expression="$length" length="0" subType="0"/>
</expressionfields>
<attributeactions>
<defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
</attributeactions>
<attributetableconfig sortExpression="&quot;tipo&quot;" sortOrder="0" actionWidgetStyle="dropDown">
<columns>
<column name="id" width="-1" type="field" hidden="0"/>
<column name="nome" width="-1" type="field" hidden="0"/>
<column name="tipo" width="-1" type="field" hidden="0"/>
<column name="revestimento" width="-1" type="field" hidden="0"/>
<column name="trafego" width="-1" type="field" hidden="0"/>
<column name="nr_faixas" width="-1" type="field" hidden="0"/>
<column name="nr_pistas" width="-1" type="field" hidden="0"/>
<column name="canteiro_divisorio" width="-1" type="field" hidden="0"/>
<column name="situacao_fisica" width="-1" type="field" hidden="0"/>
<column name="jurisdicao" width="-1" type="field" hidden="0"/>
<column name="sigla" width="267" type="field" hidden="0"/>
<column name="administracao" width="-1" type="field" hidden="0"/>
<column name="concessionaria" width="-1" type="field" hidden="0"/>
<column name="observacao" width="-1" type="field" hidden="0"/>
<column name="data_modificacao" width="-1" type="field" hidden="0"/>
<column name="controle_uuid" width="-1" type="field" hidden="0"/>
<column name="usuario_criacao" width="-1" type="field" hidden="0"/>
<column name="usuario_atualizacao" width="-1" type="field" hidden="0"/>
<column name="insumo" width="-1" type="field" hidden="0"/>
<column name="data_insumo" width="-1" type="field" hidden="0"/>
<column name="lenght_otf" width="-1" type="field" hidden="0"/>
<column width="-1" type="actions" hidden="1"/>
<column name="visivel" width="-1" type="field" hidden="0"/>
<column name="texto_edicao" width="-1" type="field" hidden="0"/>
<column name="carta_mini" width="-1" type="field" hidden="0"/>
<column name="label_x" width="-1" type="field" hidden="0"/>
<column name="label_y" width="-1" type="field" hidden="0"/>
<column name="justificativa_txt" width="-1" type="field" hidden="0"/>
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
<field name="administracao" editable="1"/>
<field name="canteiro_divisorio" editable="1"/>
<field name="carta_mini" editable="1"/>
<field name="concessionaria" editable="1"/>
<field name="controle_uuid" editable="1"/>
<field name="data_insumo" editable="1"/>
<field name="data_modificacao" editable="1"/>
<field name="id" editable="1"/>
<field name="insumo" editable="1"/>
<field name="jurisdicao" editable="1"/>
<field name="justificativa_txt" editable="1"/>
<field name="label_x" editable="1"/>
<field name="label_y" editable="1"/>
<field name="lenght_otf" editable="0"/>
<field name="nome" editable="1"/>
<field name="nr_faixas" editable="1"/>
<field name="nr_pistas" editable="1"/>
<field name="observacao" editable="1"/>
<field name="revestimento" editable="1"/>
<field name="sigla" editable="1"/>
<field name="situacao_fisica" editable="1"/>
<field name="texto_edicao" editable="1"/>
<field name="tipo" editable="1"/>
<field name="trafego" editable="1"/>
<field name="usuario_atualizacao" editable="1"/>
<field name="usuario_criacao" editable="1"/>
<field name="visivel" editable="1"/>
</editable>
<labelOnTop>
<field name="administracao" labelOnTop="0"/>
<field name="canteiro_divisorio" labelOnTop="0"/>
<field name="carta_mini" labelOnTop="0"/>
<field name="concessionaria" labelOnTop="0"/>
<field name="controle_uuid" labelOnTop="0"/>
<field name="data_insumo" labelOnTop="0"/>
<field name="data_modificacao" labelOnTop="0"/>
<field name="id" labelOnTop="0"/>
<field name="insumo" labelOnTop="0"/>
<field name="jurisdicao" labelOnTop="0"/>
<field name="justificativa_txt" labelOnTop="0"/>
<field name="label_x" labelOnTop="0"/>
<field name="label_y" labelOnTop="0"/>
<field name="lenght_otf" labelOnTop="0"/>
<field name="nome" labelOnTop="0"/>
<field name="nr_faixas" labelOnTop="0"/>
<field name="nr_pistas" labelOnTop="0"/>
<field name="observacao" labelOnTop="0"/>
<field name="revestimento" labelOnTop="0"/>
<field name="sigla" labelOnTop="0"/>
<field name="situacao_fisica" labelOnTop="0"/>
<field name="texto_edicao" labelOnTop="0"/>
<field name="tipo" labelOnTop="0"/>
<field name="trafego" labelOnTop="0"/>
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
