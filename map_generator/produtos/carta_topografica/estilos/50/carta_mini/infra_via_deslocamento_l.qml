<qgis simplifyLocal="1" version="3.18.3-Zürich" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="0" styleCategories="AllStyleCategories" labelsEnabled="0" simplifyAlgorithm="0" simplifyDrawingTol="1" readOnly="0" minScale="100000000" simplifyMaxScale="1" maxScale="0">
<flags>
<Identifiable>1</Identifiable>
<Removable>1</Removable>
<Searchable>1</Searchable>
<Private>0</Private>
</flags>
<temporal endExpression="" fixedDuration="0" accumulate="0" enabled="0" startExpression="" durationUnit="min" endField="" mode="0" durationField="" startField="">
<fixedRange>
<start></start>
<end></end>
</fixedRange>
</temporal>
<renderer-v2 type="mergedFeatureRenderer" forceraster="0" enableorderby="0">
<renderer-v2 type="RuleRenderer" symbollevels="1" forceraster="0" enableorderby="0">
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
<symbol type="line" name="0" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="1.1"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="6" class="SimpleLine">
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
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.8"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="2" class="SimpleLine">
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
<Option type="QString" name="line_color" value="35,35,35,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.1"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="1" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.9"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="6" class="SimpleLine">
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
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.6"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="10" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.9"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.6"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="3.5;1.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="199,91,91,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.6"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="11" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="3.5;1.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="199,91,91,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="12" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="joinstyle" value="miter"/>
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="joinstyle" value="miter"/>
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="3.5;1.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="miter"/>
<Option type="QString" name="line_color" value="199,91,91,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="13" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="14" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="1.1"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="2.5;0.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="35,35,35,255"/>
<Option type="QString" name="line_style" value="dash"/>
<Option type="QString" name="line_width" value="1.1"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="2" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.8"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="3" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="2.5;0.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.1"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="15" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="2.5;0.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="35,35,35,255"/>
<Option type="QString" name="line_style" value="dash"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="2" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="16" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="3.5;0.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="35,35,35,255"/>
<Option type="QString" name="line_style" value="dash"/>
<Option type="QString" name="line_width" value="0.25"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="2" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="6" class="SimpleLine">
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
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="3" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
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
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="4" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.9"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
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
<Option type="QString" name="line_color" value="199,91,91,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.6"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="5" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
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
<Option type="QString" name="line_color" value="199,91,91,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="6" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="5" class="SimpleLine">
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
<Option type="QString" name="line_color" value="199,91,91,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="7" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.9"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.6"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="6" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="square"/>
<Option type="QString" name="customdash" value="3.5;1.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.6"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="8" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.7"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="6" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="3.5;1.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol type="line" name="9" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="0,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.5"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="1" class="SimpleLine">
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
<Option type="QString" name="line_color" value="255,255,255,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
<layer enabled="1" locked="0" pass="6" class="SimpleLine">
<Option type="Map">
<Option type="QString" name="align_dash_pattern" value="0"/>
<Option type="QString" name="capstyle" value="flat"/>
<Option type="QString" name="customdash" value="3.5;1.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="153,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.3"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="1"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</symbols>
<orderby>
<orderByClause nullsFirst="0" asc="1">"id"</orderByClause>
</orderby>
</renderer-v2>
<orderby>
<orderByClause nullsFirst="0" asc="1">"tipo"</orderByClause>
<orderByClause nullsFirst="0" asc="1">"revestimento"</orderByClause>
<orderByClause nullsFirst="0" asc="1">"nr_faixas"</orderByClause>
</orderby>
</renderer-v2>
<labeling type="simple">
<settings calloutType="simple">
<text-style fontFamily="Arial" fontStrikeout="0" fontSizeUnit="Point" fontSize="6" capitalization="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" fontLetterSpacing="0" textColor="0,0,0,255" multilineHeight="1" blendMode="0" fontWordSpacing="0" textOpacity="1" isExpression="1" fontWeight="50" textOrientation="horizontal" fieldName="coalesce(&quot;nome&quot;, ') || coalesce(&quot;nr_faixas&quot; || 'FAIXAS',')&#xd;" namedStyle="Normal" fontItalic="0" previewBkgrdColor="255,255,255,255" allowHtml="0" fontKerning="1" useSubstitutions="0">
<text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSizeUnits="MM" bufferSize="1" bufferColor="255,255,255,255" bufferDraw="0" bufferNoFill="1"/>
<text-mask maskSizeUnits="MM" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskType="0" maskSize="1.5"/>
<background shapeRadiiUnit="MM" shapeJoinStyle="64" shapeOffsetX="0" shapeSizeType="0" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeDraw="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSVGFile="" shapeOpacity="1" shapeBlendMode="0" shapeRadiiX="0" shapeFillColor="255,255,255,255">
<symbol type="marker" name="markerSymbol" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleMarker">
<Option type="Map">
<Option type="QString" name="angle" value="0"/>
<Option type="QString" name="color" value="229,182,54,255"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</background>
<shadow shadowOffsetDist="1" shadowOffsetUnit="MM" shadowRadiusAlphaOnly="0" shadowOpacity="0.7" shadowScale="100" shadowOffsetGlobal="1" shadowBlendMode="6" shadowUnder="0" shadowRadius="1.5" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowDraw="0" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
<dd_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" formatNumbers="0" useMaxLineLengthForAutoWrap="1" plussign="0" rightDirectionSymbol=">" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3"/>
<placement rotationAngle="0" maxCurvedCharAngleIn="25" repeatDistance="0" lineAnchorType="0" xOffset="0" polygonPlacementFlags="2" quadOffset="4" yOffset="0" offsetType="0" placement="2" dist="0" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" geometryGenerator="" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" layerType="LineGeometry" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0"/>
<rendering displayAll="0" labelPerPart="0" scaleMax="0" scaleMin="0" zIndex="0" maxNumLabels="2000" minFeatureSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" obstacleFactor="1" upsidedownLabels="0" obstacleType="1" limitNumLabels="0" obstacle="1" mergeLines="0" scaleVisibility="0" drawLabels="1" fontLimitPixelSize="0"/>
<dd_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</dd_properties>
<callout type="simple">
<Option type="Map">
<Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
<Option type="Map" name="ddProperties">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
<Option type="bool" name="drawToAllParts" value="false"/>
<Option type="QString" name="enabled" value="0"/>
<Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
<Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
</labeling>
<customproperties>
<property key="dualview/previewExpressions" value="&quot;nome&quot;"/>
<property key="embeddedWidgets/count" value="0"/>
<property key="variableNames"/>
<property key="variableValues"/>
</customproperties>
<blendMode>0</blendMode>
<featureBlendMode>0</featureBlendMode>
<layerOpacity>1</layerOpacity>
<SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
<DiagramCategory lineSizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0" rotationOffset="270" labelPlacementMethod="XHeight" spacingUnit="MM" sizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" spacing="5" direction="0" diagramOrientation="Up" lineSizeType="MM" scaleDependency="Area" enabled="0" penWidth="0" penColor="#000000" backgroundAlpha="255" width="15" scaleBasedVisibility="0" showAxis="1" maxScaleDenominator="1e+08" spacingUnitScale="3x:0,0,0,0,0,0" minimumSize="0" sizeType="MM" penAlpha="255" opacity="1" barWidth="5" height="15">
<fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
<attribute color="#000000" label="" field=""/>
<axisSymbol>
<symbol type="line" name="" clip_to_extent="1" alpha="1" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
<layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
<Option type="QString" name="line_color" value="35,35,35,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.26"/>
<Option type="QString" name="line_width_unit" value="MM"/>
<Option type="QString" name="offset" value="0"/>
<Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="offset_unit" value="MM"/>
<Option type="QString" name="ring_filter" value="0"/>
<Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
<Option type="QString" name="use_custom_dash" value="0"/>
<Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</axisSymbol>
</DiagramCategory>
</SingleCategoryDiagramRenderer>
<DiagramLayerSettings obstacle="0" priority="0" showAll="1" placement="2" dist="0" zIndex="0" linePlacementFlags="18">
<properties>
<Option type="Map">
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
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
<Option type="List" name="map">
<Option type="Map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
</Option>
<Option type="Map">
<Option type="QString" name="Arruamento (5)" value="5"/>
</Option>
<Option type="Map">
<Option type="QString" name="Auto-estrada (4)" value="4"/>
</Option>
<Option type="Map">
<Option type="QString" name="Caminho carroçável (3)" value="3"/>
</Option>
<Option type="Map">
<Option type="QString" name="Estrada/Rodovia (2)" value="2"/>
</Option>
<Option type="Map">
<Option type="QString" name="Trilha ou Picada (6)" value="6"/>
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
<Option type="List" name="map">
<Option type="Map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
</Option>
<Option type="Map">
<Option type="QString" name="Calçado (4)" value="4"/>
</Option>
<Option type="Map">
<Option type="QString" name="Leito natural (1)" value="1"/>
</Option>
<Option type="Map">
<Option type="QString" name="Pavimentado (3)" value="3"/>
</Option>
<Option type="Map">
<Option type="QString" name="Revestimento primário (solto) (2)" value="2"/>
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
<Option type="Map" name="map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
<Option type="QString" name="Periódico (2)" value="2"/>
<Option type="QString" name="Permanente (1)" value="1"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="nr_faixas" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option type="bool" name="IsMultiline" value="false"/>
<Option type="bool" name="UseHtml" value="false"/>
</Option>
</config>
</editWidget>
</field>
<field name="nr_pistas" configurationFlags="None">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option type="bool" name="IsMultiline" value="false"/>
<Option type="bool" name="UseHtml" value="false"/>
</Option>
</config>
</editWidget>
</field>
<field name="canteiro_divisorio" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option type="List" name="map">
<Option type="Map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
</Option>
<Option type="Map">
<Option type="QString" name="Não (2)" value="2"/>
</Option>
<Option type="Map">
<Option type="QString" name="Sim (1)" value="1"/>
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
<Option type="List" name="map">
<Option type="Map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
</Option>
<Option type="Map">
<Option type="QString" name="Abandonada (1)" value="1"/>
</Option>
<Option type="Map">
<Option type="QString" name="Construída (3)" value="3"/>
</Option>
<Option type="Map">
<Option type="QString" name="Desconhecida (0)" value="0"/>
</Option>
<Option type="Map">
<Option type="QString" name="Destruída (2)" value="2"/>
</Option>
<Option type="Map">
<Option type="QString" name="Em construção (4)" value="4"/>
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
<Option type="List" name="map">
<Option type="Map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
</Option>
<Option type="Map">
<Option type="QString" name="Desconhecida (0)" value="0"/>
</Option>
<Option type="Map">
<Option type="QString" name="Estadual (2)" value="2"/>
</Option>
<Option type="Map">
<Option type="QString" name="Federal (1)" value="1"/>
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
<Option type="Map" name="map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
<Option type="QString" name="Concessionada (7)" value="7"/>
<Option type="QString" name="Desconhecida (0)" value="0"/>
<Option type="QString" name="Estadual (2)" value="2"/>
<Option type="QString" name="Federal (1)" value="1"/>
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
<Option type="QString" name="CheckedState" value=""/>
<Option type="int" name="TextDisplayMethod" value="0"/>
<Option type="QString" name="UncheckedState" value=""/>
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
<alias name="" field="id" index="0"/>
<alias name="" field="nome" index="1"/>
<alias name="" field="tipo" index="2"/>
<alias name="" field="revestimento" index="3"/>
<alias name="" field="trafego" index="4"/>
<alias name="" field="nr_faixas" index="5"/>
<alias name="" field="nr_pistas" index="6"/>
<alias name="" field="canteiro_divisorio" index="7"/>
<alias name="" field="situacao_fisica" index="8"/>
<alias name="" field="jurisdicao" index="9"/>
<alias name="" field="sigla" index="10"/>
<alias name="" field="administracao" index="11"/>
<alias name="" field="concessionaria" index="12"/>
<alias name="" field="observacao" index="13"/>
<alias name="" field="data_modificacao" index="14"/>
<alias name="" field="controle_uuid" index="15"/>
<alias name="" field="usuario_criacao" index="16"/>
<alias name="" field="usuario_atualizacao" index="17"/>
<alias name="" field="insumo" index="18"/>
<alias name="" field="data_insumo" index="19"/>
<alias name="" field="visivel" index="20"/>
<alias name="" field="texto_edicao" index="21"/>
<alias name="" field="carta_mini" index="22"/>
<alias name="" field="label_x" index="23"/>
<alias name="" field="label_y" index="24"/>
<alias name="" field="justificativa_txt" index="25"/>
<alias name="" field="lenght_otf" index="26"/>
</aliases>
<defaults>
<default applyOnUpdate="0" field="id" expression=""/>
<default applyOnUpdate="0" field="nome" expression=""/>
<default applyOnUpdate="0" field="tipo" expression=""/>
<default applyOnUpdate="0" field="revestimento" expression=""/>
<default applyOnUpdate="0" field="trafego" expression=""/>
<default applyOnUpdate="0" field="nr_faixas" expression=""/>
<default applyOnUpdate="0" field="nr_pistas" expression=""/>
<default applyOnUpdate="0" field="canteiro_divisorio" expression=""/>
<default applyOnUpdate="0" field="situacao_fisica" expression=""/>
<default applyOnUpdate="0" field="jurisdicao" expression=""/>
<default applyOnUpdate="0" field="sigla" expression=""/>
<default applyOnUpdate="0" field="administracao" expression=""/>
<default applyOnUpdate="0" field="concessionaria" expression=""/>
<default applyOnUpdate="0" field="observacao" expression=""/>
<default applyOnUpdate="0" field="data_modificacao" expression=""/>
<default applyOnUpdate="0" field="controle_uuid" expression=""/>
<default applyOnUpdate="0" field="usuario_criacao" expression=""/>
<default applyOnUpdate="0" field="usuario_atualizacao" expression=""/>
<default applyOnUpdate="0" field="insumo" expression=""/>
<default applyOnUpdate="0" field="data_insumo" expression=""/>
<default applyOnUpdate="0" field="visivel" expression=""/>
<default applyOnUpdate="0" field="texto_edicao" expression=""/>
<default applyOnUpdate="0" field="carta_mini" expression=""/>
<default applyOnUpdate="0" field="label_x" expression=""/>
<default applyOnUpdate="0" field="label_y" expression=""/>
<default applyOnUpdate="0" field="justificativa_txt" expression=""/>
<default applyOnUpdate="0" field="lenght_otf" expression=""/>
</defaults>
<constraints>
<constraint notnull_strength="1" field="id" exp_strength="0" unique_strength="1" constraints="3"/>
<constraint notnull_strength="0" field="nome" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="1" field="tipo" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="1" field="revestimento" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="1" field="trafego" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="0" field="nr_faixas" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="nr_pistas" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="1" field="canteiro_divisorio" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="1" field="situacao_fisica" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="1" field="jurisdicao" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="0" field="sigla" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="1" field="administracao" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="0" field="concessionaria" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="observacao" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="data_modificacao" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="controle_uuid" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="usuario_criacao" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="usuario_atualizacao" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="insumo" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="data_insumo" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="1" field="visivel" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="0" field="texto_edicao" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="1" field="carta_mini" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="0" field="label_x" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="label_y" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="justificativa_txt" exp_strength="0" unique_strength="0" constraints="0"/>
<constraint notnull_strength="0" field="lenght_otf" exp_strength="0" unique_strength="0" constraints="0"/>
</constraints>
<constraintExpressions>
<constraint exp="" field="id" desc=""/>
<constraint exp="" field="nome" desc=""/>
<constraint exp="" field="tipo" desc=""/>
<constraint exp="" field="revestimento" desc=""/>
<constraint exp="" field="trafego" desc=""/>
<constraint exp="" field="nr_faixas" desc=""/>
<constraint exp="" field="nr_pistas" desc=""/>
<constraint exp="" field="canteiro_divisorio" desc=""/>
<constraint exp="" field="situacao_fisica" desc=""/>
<constraint exp="" field="jurisdicao" desc=""/>
<constraint exp="" field="sigla" desc=""/>
<constraint exp="" field="administracao" desc=""/>
<constraint exp="" field="concessionaria" desc=""/>
<constraint exp="" field="observacao" desc=""/>
<constraint exp="" field="data_modificacao" desc=""/>
<constraint exp="" field="controle_uuid" desc=""/>
<constraint exp="" field="usuario_criacao" desc=""/>
<constraint exp="" field="usuario_atualizacao" desc=""/>
<constraint exp="" field="insumo" desc=""/>
<constraint exp="" field="data_insumo" desc=""/>
<constraint exp="" field="visivel" desc=""/>
<constraint exp="" field="texto_edicao" desc=""/>
<constraint exp="" field="carta_mini" desc=""/>
<constraint exp="" field="label_x" desc=""/>
<constraint exp="" field="label_y" desc=""/>
<constraint exp="" field="justificativa_txt" desc=""/>
<constraint exp="" field="lenght_otf" desc=""/>
</constraintExpressions>
<expressionfields>
<field subType="0" type="6" name="lenght_otf" length="0" typeName="" comment="" precision="0" expression="$length"/>
<field subType="0" type="6" name="lenght_otf" length="0" typeName="" comment="" precision="0" expression="$length"/>
<field subType="0" type="6" name="lenght_otf" length="0" typeName="" comment="" precision="0" expression="$length"/>
<field subType="0" type="6" name="lenght_otf" length="0" typeName="" comment="" precision="0" expression="$length"/>
</expressionfields>
<attributeactions>
<defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
</attributeactions>
<attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;tipo&quot;">
<columns>
<column hidden="0" width="-1" type="field" name="id"/>
<column hidden="0" width="-1" type="field" name="nome"/>
<column hidden="0" width="-1" type="field" name="tipo"/>
<column hidden="0" width="-1" type="field" name="revestimento"/>
<column hidden="0" width="-1" type="field" name="trafego"/>
<column hidden="0" width="-1" type="field" name="nr_faixas"/>
<column hidden="0" width="-1" type="field" name="nr_pistas"/>
<column hidden="0" width="-1" type="field" name="canteiro_divisorio"/>
<column hidden="0" width="-1" type="field" name="situacao_fisica"/>
<column hidden="0" width="-1" type="field" name="jurisdicao"/>
<column hidden="0" width="267" type="field" name="sigla"/>
<column hidden="0" width="-1" type="field" name="administracao"/>
<column hidden="0" width="-1" type="field" name="concessionaria"/>
<column hidden="0" width="-1" type="field" name="observacao"/>
<column hidden="0" width="-1" type="field" name="data_modificacao"/>
<column hidden="0" width="-1" type="field" name="controle_uuid"/>
<column hidden="0" width="-1" type="field" name="usuario_criacao"/>
<column hidden="0" width="-1" type="field" name="usuario_atualizacao"/>
<column hidden="0" width="-1" type="field" name="insumo"/>
<column hidden="0" width="-1" type="field" name="data_insumo"/>
<column hidden="0" width="-1" type="field" name="lenght_otf"/>
<column hidden="1" width="-1" type="actions"/>
<column hidden="0" width="-1" type="field" name="visivel"/>
<column hidden="0" width="-1" type="field" name="texto_edicao"/>
<column hidden="0" width="-1" type="field" name="carta_mini"/>
<column hidden="0" width="-1" type="field" name="label_x"/>
<column hidden="0" width="-1" type="field" name="label_y"/>
<column hidden="0" width="-1" type="field" name="justificativa_txt"/>
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
