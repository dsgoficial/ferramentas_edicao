<qgis version="3.18.1-Zürich" hasScaleBasedVisibilityFlag="0" minScale="100000000" styleCategories="AllStyleCategories" simplifyDrawingHints="0" simplifyDrawingTol="1" simplifyLocal="1" simplifyMaxScale="1" readOnly="0" labelsEnabled="1" simplifyAlgorithm="0" maxScale="0">
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
<renderer-v2 forceraster="0" type="mergedFeatureRenderer" enableorderby="0">
<renderer-v2 symbollevels="1" forceraster="0" type="RuleRenderer" enableorderby="0">
<rules key="{8b45b4bb-4fb7-44a3-aa62-5672c279e3b9}">
<rule label="L11302A" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; =  1" symbol="0" key="{abacada7-6415-4698-8775-45ecfcc12a47}"/>
<rule label="L11302B" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  >= 4" symbol="1" key="{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c}"/>
<rule label="L11302C" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and&#xd;(&quot;nr_faixas&quot;  IN (2,3) or &quot;nr_faixas&quot; is null)" symbol="2" key="{bc07a595-5d0d-41ca-8c3a-9be354d5ca94}"/>
<rule label="L11302D" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  = 1" symbol="3" key="{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83}"/>
<rule label="L11302E" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2  and&#xd;&#xa;&quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" symbol="4" key="{b2135330-a7e6-4ea7-a7b2-f58d824d19ac}"/>
<rule label="L11302F" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" symbol="5" key="{72c0d73b-a2fc-4ceb-877d-e019f8061484}"/>
<rule label="L11302G" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; in (3) and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;&quot;nr_faixas&quot; = 1" symbol="6" key="{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea}"/>
<rule label="L11302H" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" symbol="7" key="{9c14ab03-399e-48d0-a253-46933dff9c91}"/>
<rule label="L11302I" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;(&#xa; &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" symbol="8" key="{0a9e3586-49f7-4ee8-8195-0c8493e0e053}"/>
<rule label="L11302J" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" symbol="9" key="{c921bc81-6b3a-471e-83e2-a6930ce0f7a2}"/>
<rule label="L11302K" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" symbol="10" key="{dfb4681b-e5ad-4379-bd19-2a1fe18ff673}"/>
<rule label="L11302L" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" symbol="11" key="{6c962be9-7f83-4f54-b33c-b86b9a7f7063}"/>
<rule label="L11302M" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" symbol="12" key="{b41d8306-313b-4c76-b5e7-de47feec0efc}"/>
<rule label="L11302N" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; !=  1 " symbol="13" key="{b60c7c00-f8c0-49e1-8621-86f244e3985f}"/>
<rule label="L11302O" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 1" symbol="14" key="{568ccda1-72cf-49ff-9629-3a055e4e98be}"/>
<rule label="L11302P" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3)and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2" symbol="15" key="{d91e59d1-098c-4240-ba18-57038fa01222}"/>
<rule label="L10802A" filter=" &quot;tipo&quot; = 3" symbol="16" key="{1c58cd5e-e449-488e-ae73-7d2d8802bd88}"/>
<rule label="L10815A" filter=" &quot;tipo&quot; = 6" symbol="17" key="{984ae812-5d0f-495d-abb7-479418811b4c}"/>
<rule label="L20227A" filter=" &quot;tipo&quot; = 5 and &quot;revestimento&quot; = 3 and &quot;situacao_fisica&quot; in (0,3)" symbol="18" key="{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7}"/>
<rule label="L20227B" filter=" &quot;tipo&quot; = 5 and &quot;revestimento&quot; != 3 and &quot;situacao_fisica&quot; in (0,3)" symbol="19" key="{fc01a0bf-6376-4675-b2dd-f21b65680d5a}"/>
<rule label="L20227C" filter=" &quot;tipo&quot; = 5 and &quot;situacao_fisica&quot; not in (0,3)" symbol="20" key="{a9910ea2-cda8-4926-bd8b-581851fb015c}"/>
<rule filter="ELSE" symbol="21" key="{a825bc71-2b88-4fe0-8dc4-2f85ac1808b3}"/>
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="1.1" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="6" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.8" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="2" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
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
<Option value="0.1" name="line_width" type="QString"/>
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.9" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="6" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.6" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="10" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.9" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.6" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="3.5;1.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="199,91,91,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.6" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="11" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="3.5;1.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="199,91,91,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="12" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="3.5;1.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="199,91,91,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.3" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="13" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="14" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="1.1" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="2.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="dash" name="line_style" type="QString"/>
<Option value="1.1" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="2" enabled="1">
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
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.8" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="3" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="2.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.1" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="15" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="2.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="dash" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="2" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="16" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="3.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="dash" name="line_style" type="QString"/>
<Option value="0.25" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="17" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="1.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="dash" name="line_style" type="QString"/>
<Option value="0.2" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="1.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="dash"/>
<prop k="line_width" v="0.2"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="18" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="1.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="1.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="4" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="19" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="4" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="1.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.1" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0.2" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="0" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="1.5;0.5"/>
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
<prop k="offset" v="0.2"/>
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
<layer class="SimpleLine" locked="0" pass="0" enabled="1">
<Option type="Map">
<Option value="1" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="1;1" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.1" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="-0.2" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="1" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="1"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="1;1"/>
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
<prop k="offset" v="-0.2"/>
<prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="offset_unit" v="MM"/>
<prop k="ring_filter" v="0"/>
<prop k="tweak_dash_pattern_on_corners" v="1"/>
<prop k="use_custom_dash" v="1"/>
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="6" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="20" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
<data_defined_properties>
<Option type="Map">
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
<layer class="SimpleLine" locked="0" pass="4" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="2" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="2.5;0.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0.2" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="35,35,35,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
</Option>
<prop k="align_dash_pattern" v="0"/>
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="2.5;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0.2"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="35,35,35,255"/>
<prop k="line_style" v="solid"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="3" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="1;1" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="-0.2" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<prop k="capstyle" v="flat"/>
<prop k="customdash" v="1;1"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="-0.2"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="21" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="255,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="1" name="line_width" type="QString"/>
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
<prop k="line_color" v="255,0,0,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="1"/>
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="4" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.9" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="199,91,91,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.6" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="5" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="199,91,91,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="6" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="5" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="199,91,91,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="7" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.9" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.6" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="6" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="square" name="capstyle" type="QString"/>
<Option value="3.5;1.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.6" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="8" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.7" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="6" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="3.5;1.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol name="9" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
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
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="0,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.5" name="line_width" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="1" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="5;2" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="255,255,255,255" name="line_color" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer class="SimpleLine" locked="0" pass="6" enabled="1">
<Option type="Map">
<Option value="0" name="align_dash_pattern" type="QString"/>
<Option value="flat" name="capstyle" type="QString"/>
<Option value="3.5;1.5" name="customdash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
<Option value="MM" name="customdash_unit" type="QString"/>
<Option value="0" name="dash_pattern_offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
<Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
<Option value="0" name="draw_inside_polygon" type="QString"/>
<Option value="bevel" name="joinstyle" type="QString"/>
<Option value="153,0,0,255" name="line_color" type="QString"/>
<Option value="solid" name="line_style" type="QString"/>
<Option value="0.3" name="line_width" type="QString"/>
<Option value="MM" name="line_width_unit" type="QString"/>
<Option value="0" name="offset" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
<Option value="MM" name="offset_unit" type="QString"/>
<Option value="0" name="ring_filter" type="QString"/>
<Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
<Option value="1" name="use_custom_dash" type="QString"/>
<Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
<Option value="" name="name" type="QString"/>
<Option name="properties"/>
<Option value="collection" name="type" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</symbols>
</renderer-v2>
</renderer-v2>
<labeling type="simple">
<settings calloutType="simple">
<text-style textOrientation="horizontal" fontFamily="Arial" blendMode="0" previewBkgrdColor="255,255,255,255" capitalization="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="6" fontSizeUnit="Point" isExpression="1" fontKerning="1" fontStrikeout="0" fontWordSpacing="0" fontUnderline="0" namedStyle="Normal" fieldName="coalesce(&quot;nome&quot;, ') || coalesce(&quot;nr_faixas&quot; || 'FAIXAS',')&#xd;" allowHtml="0" fontLetterSpacing="0" fontWeight="50" useSubstitutions="0" textColor="0,0,0,255" fontItalic="0" textOpacity="1" multilineHeight="1">
<text-buffer bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSize="1" bufferOpacity="1" bufferNoFill="1" bufferBlendMode="0" bufferColor="255,255,255,255"/>
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
<Option value="229,182,54,255" name="color" type="QString"/>
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
<Option value="5" name="Arruamento (5)" type="QString"/>
</Option>
<Option type="Map">
<Option value="4" name="Auto-estrada (4)" type="QString"/>
</Option>
<Option type="Map">
<Option value="3" name="Caminho carroçável (3)" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Estrada/Rodovia (2)" type="QString"/>
</Option>
<Option type="Map">
<Option value="6" name="Trilha ou Picada (6)" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="revestimento">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
<Option value="4" name="Calçado (4)" type="QString"/>
<Option value="1" name="Leito natural (1)" type="QString"/>
<Option value="3" name="Pavimentado (3)" type="QString"/>
<Option value="2" name="Revestimento primário (solto) (2)" type="QString"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="trafego">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
<Option value="2" name="Periódico (2)" type="QString"/>
<Option value="1" name="Permanente (1)" type="QString"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="nr_faixas">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option value="false" name="IsMultiline" type="bool"/>
<Option value="false" name="UseHtml" type="bool"/>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="nr_pistas">
<editWidget type="TextEdit">
<config>
<Option type="Map">
<Option value="false" name="IsMultiline" type="bool"/>
<Option value="false" name="UseHtml" type="bool"/>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="canteiro_divisorio">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Não (2)" type="QString"/>
</Option>
<Option type="Map">
<Option value="1" name="Sim (1)" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="situacao_fisica">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
</Option>
<Option type="Map">
<Option value="1" name="Abandonada (1)" type="QString"/>
</Option>
<Option type="Map">
<Option value="3" name="Construída (3)" type="QString"/>
</Option>
<Option type="Map">
<Option value="0" name="Desconhecida (0)" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Destruída (2)" type="QString"/>
</Option>
<Option type="Map">
<Option value="4" name="Em construção (4)" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="jurisdicao">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="List">
<Option type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
</Option>
<Option type="Map">
<Option value="0" name="Desconhecida (0)" type="QString"/>
</Option>
<Option type="Map">
<Option value="2" name="Estadual (2)" type="QString"/>
</Option>
<Option type="Map">
<Option value="1" name="Federal (1)" type="QString"/>
</Option>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="sigla">
<editWidget type="TextEdit">
<config>
<Option/>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="administracao">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option name="map" type="Map">
<Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
<Option value="7" name="Concessionada (7)" type="QString"/>
<Option value="0" name="Desconhecida (0)" type="QString"/>
<Option value="2" name="Estadual (2)" type="QString"/>
<Option value="1" name="Federal (1)" type="QString"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field configurationFlags="None" name="concessionaria">
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
<field configurationFlags="None" name="carta_mini">
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
<default applyOnUpdate="0" expression="" field="id"/>
<default applyOnUpdate="0" expression="" field="nome"/>
<default applyOnUpdate="0" expression="" field="tipo"/>
<default applyOnUpdate="0" expression="" field="revestimento"/>
<default applyOnUpdate="0" expression="" field="trafego"/>
<default applyOnUpdate="0" expression="" field="nr_faixas"/>
<default applyOnUpdate="0" expression="" field="nr_pistas"/>
<default applyOnUpdate="0" expression="" field="canteiro_divisorio"/>
<default applyOnUpdate="0" expression="" field="situacao_fisica"/>
<default applyOnUpdate="0" expression="" field="jurisdicao"/>
<default applyOnUpdate="0" expression="" field="sigla"/>
<default applyOnUpdate="0" expression="" field="administracao"/>
<default applyOnUpdate="0" expression="" field="concessionaria"/>
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
<default applyOnUpdate="0" expression="" field="label_x"/>
<default applyOnUpdate="0" expression="" field="label_y"/>
<default applyOnUpdate="0" expression="" field="justificativa_txt"/>
<default applyOnUpdate="0" expression="" field="lenght_otf"/>
</defaults>
<constraints>
<constraint exp_strength="0" notnull_strength="1" unique_strength="1" constraints="3" field="id"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="nome"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="tipo"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="revestimento"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="trafego"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="nr_faixas"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="nr_pistas"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="canteiro_divisorio"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="situacao_fisica"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="jurisdicao"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="sigla"/>
<constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="administracao"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="concessionaria"/>
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
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="label_x"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="label_y"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="justificativa_txt"/>
<constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="lenght_otf"/>
</constraints>
<constraintExpressions>
<constraint desc="" field="id" exp=""/>
<constraint desc="" field="nome" exp=""/>
<constraint desc="" field="tipo" exp=""/>
<constraint desc="" field="revestimento" exp=""/>
<constraint desc="" field="trafego" exp=""/>
<constraint desc="" field="nr_faixas" exp=""/>
<constraint desc="" field="nr_pistas" exp=""/>
<constraint desc="" field="canteiro_divisorio" exp=""/>
<constraint desc="" field="situacao_fisica" exp=""/>
<constraint desc="" field="jurisdicao" exp=""/>
<constraint desc="" field="sigla" exp=""/>
<constraint desc="" field="administracao" exp=""/>
<constraint desc="" field="concessionaria" exp=""/>
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
<constraint desc="" field="label_x" exp=""/>
<constraint desc="" field="label_y" exp=""/>
<constraint desc="" field="justificativa_txt" exp=""/>
<constraint desc="" field="lenght_otf" exp=""/>
</constraintExpressions>
<expressionfields>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
<field comment="" length="0" expression="$length" name="lenght_otf" precision="0" type="6" typeName="" subType="0"/>
</expressionfields>
<attributeactions>
<defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
</attributeactions>
<attributetableconfig sortExpression="&quot;sigla&quot;" sortOrder="1" actionWidgetStyle="dropDown">
<columns>
<column width="-1" hidden="0" name="id" type="field"/>
<column width="-1" hidden="0" name="nome" type="field"/>
<column width="-1" hidden="0" name="tipo" type="field"/>
<column width="-1" hidden="0" name="revestimento" type="field"/>
<column width="-1" hidden="0" name="trafego" type="field"/>
<column width="-1" hidden="0" name="nr_faixas" type="field"/>
<column width="-1" hidden="0" name="nr_pistas" type="field"/>
<column width="-1" hidden="0" name="canteiro_divisorio" type="field"/>
<column width="-1" hidden="0" name="situacao_fisica" type="field"/>
<column width="-1" hidden="0" name="jurisdicao" type="field"/>
<column width="267" hidden="0" name="sigla" type="field"/>
<column width="-1" hidden="0" name="administracao" type="field"/>
<column width="-1" hidden="0" name="concessionaria" type="field"/>
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
<field editable="1" name="administracao"/>
<field editable="1" name="canteiro_divisorio"/>
<field editable="1" name="carta_mini"/>
<field editable="1" name="concessionaria"/>
<field editable="1" name="controle_uuid"/>
<field editable="1" name="data_insumo"/>
<field editable="1" name="data_modificacao"/>
<field editable="1" name="id"/>
<field editable="1" name="insumo"/>
<field editable="1" name="jurisdicao"/>
<field editable="1" name="justificativa_txt"/>
<field editable="1" name="label_x"/>
<field editable="1" name="label_y"/>
<field editable="0" name="lenght_otf"/>
<field editable="1" name="nome"/>
<field editable="1" name="nr_faixas"/>
<field editable="1" name="nr_pistas"/>
<field editable="1" name="observacao"/>
<field editable="1" name="revestimento"/>
<field editable="1" name="sigla"/>
<field editable="1" name="situacao_fisica"/>
<field editable="1" name="texto_edicao"/>
<field editable="1" name="tipo"/>
<field editable="1" name="trafego"/>
<field editable="1" name="usuario_atualizacao"/>
<field editable="1" name="usuario_criacao"/>
<field editable="1" name="visivel"/>
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
