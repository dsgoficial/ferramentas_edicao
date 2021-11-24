<qgis readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" simplifyDrawingHints="0" simplifyMaxScale="1" styleCategories="AllStyleCategories" version="3.18.3-Zürich" maxScale="0" minScale="100000000" simplifyDrawingTol="1" simplifyLocal="1" labelsEnabled="0">
<flags>
<Identifiable>1</Identifiable>
<Removable>1</Removable>
<Searchable>1</Searchable>
<Private>0</Private>
</flags>
<temporal mode="0" enabled="0" startExpression="" endExpression="" durationField="" durationUnit="min" fixedDuration="0" startField="" accumulate="0" endField="">
<fixedRange>
<start></start>
<end></end>
</fixedRange>
</temporal>
<renderer-v2 enableorderby="0" type="mergedFeatureRenderer" forceraster="0">
<renderer-v2 symbollevels="1" enableorderby="0" type="RuleRenderer" forceraster="0">
<rules key="{8b45b4bb-4fb7-44a3-aa62-5672c279e3b9}">
<rule symbol="0" key="{abacada7-6415-4698-8775-45ecfcc12a47}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; =  1" label="L11302A"/>
<rule symbol="1" key="{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  >= 4" label="L11302B"/>
<rule symbol="2" key="{bc07a595-5d0d-41ca-8c3a-9be354d5ca94}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and&#xd;(&quot;nr_faixas&quot;  IN (2,3) or &quot;nr_faixas&quot; is null)" label="L11302C"/>
<rule symbol="3" key="{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  = 1" label="L11302D"/>
<rule symbol="4" key="{b2135330-a7e6-4ea7-a7b2-f58d824d19ac}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2  and&#xd;&#xa;&quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" label="L11302E"/>
<rule symbol="5" key="{72c0d73b-a2fc-4ceb-877d-e019f8061484}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" label="L11302F"/>
<rule symbol="6" key="{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; in (3) and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;&quot;nr_faixas&quot; = 1" label="L11302G"/>
<rule symbol="7" key="{9c14ab03-399e-48d0-a253-46933dff9c91}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" label="L11302H"/>
<rule symbol="8" key="{0a9e3586-49f7-4ee8-8195-0c8493e0e053}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;(&#xa; &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" label="L11302I"/>
<rule symbol="9" key="{c921bc81-6b3a-471e-83e2-a6930ce0f7a2}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" label="L11302J"/>
<rule symbol="10" key="{dfb4681b-e5ad-4379-bd19-2a1fe18ff673}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" label="L11302K"/>
<rule symbol="11" key="{6c962be9-7f83-4f54-b33c-b86b9a7f7063}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" label="L11302L"/>
<rule symbol="12" key="{b41d8306-313b-4c76-b5e7-de47feec0efc}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" label="L11302M"/>
<rule symbol="13" key="{b60c7c00-f8c0-49e1-8621-86f244e3985f}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; !=  1 " label="L11302N"/>
<rule symbol="14" key="{568ccda1-72cf-49ff-9629-3a055e4e98be}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 1" label="L11302O"/>
<rule symbol="15" key="{d91e59d1-098c-4240-ba18-57038fa01222}" filter="&quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3)and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2" label="L11302P"/>
<rule symbol="16" key="{1c58cd5e-e449-488e-ae73-7d2d8802bd88}" filter=" &quot;tipo&quot; = 3" label="L10802A"/>
<rule symbol="17" key="{984ae812-5d0f-495d-abb7-479418811b4c}" filter=" &quot;tipo&quot; = 6" label="L10815A"/>
<rule symbol="18" key="{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7}" filter=" &quot;tipo&quot; = 5 and &quot;revestimento&quot; = 3 and &quot;situacao_fisica&quot; in (0,3)" label="L20227A"/>
<rule symbol="19" key="{fc01a0bf-6376-4675-b2dd-f21b65680d5a}" filter=" &quot;tipo&quot; = 5 and &quot;revestimento&quot; != 3 and &quot;situacao_fisica&quot; in (0,3)" label="L20227B"/>
<rule symbol="20" key="{a9910ea2-cda8-4926-bd8b-581851fb015c}" filter=" &quot;tipo&quot; = 5 and &quot;situacao_fisica&quot; not in (0,3)" label="L20227C"/>
<rule symbol="21" key="{a825bc71-2b88-4fe0-8dc4-2f85ac1808b3}" filter="ELSE"/>
</rules>
<symbols>
<symbol clip_to_extent="1" name="0" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="6" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="2" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="1" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="6" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="10" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="11" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="12" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="13" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="14" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="2" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="3" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="15" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="2" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="16" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="17" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="1.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="dash" type="QString"/>
<Option name="line_width" value="0.2" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol clip_to_extent="1" name="18" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="1.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="4" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="19" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="4" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="1.5;0.5" type="QString"/>
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
<Option name="offset" value="0.2" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
<Option name="use_custom_dash" value="0" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
<Option type="Map">
<Option name="align_dash_pattern" value="1" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="1;1" type="QString"/>
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
<Option name="offset" value="-0.2" type="QString"/>
<Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="offset_unit" value="MM" type="QString"/>
<Option name="ring_filter" value="0" type="QString"/>
<Option name="tweak_dash_pattern_on_corners" value="1" type="QString"/>
<Option name="use_custom_dash" value="1" type="QString"/>
<Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol clip_to_extent="1" name="2" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="6" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="20" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="4" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="2" class="SimpleLine" enabled="1" locked="0">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="2.5;0.5" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="0.2" type="QString"/>
<Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
<Option name="draw_inside_polygon" value="0" type="QString"/>
<Option name="joinstyle" value="bevel" type="QString"/>
<Option name="line_color" value="35,35,35,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
<layer pass="3" class="SimpleLine" enabled="1" locked="0">
<Option type="Map">
<Option name="align_dash_pattern" value="0" type="QString"/>
<Option name="capstyle" value="flat" type="QString"/>
<Option name="customdash" value="1;1" type="QString"/>
<Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
<Option name="customdash_unit" value="MM" type="QString"/>
<Option name="dash_pattern_offset" value="-0.2" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol clip_to_extent="1" name="21" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<Option name="line_color" value="255,0,0,255" type="QString"/>
<Option name="line_style" value="solid" type="QString"/>
<Option name="line_width" value="1" type="QString"/>
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
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
<symbol clip_to_extent="1" name="3" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="4" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="5" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="6" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="5" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="7" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="6" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="8" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="6" class="SimpleLine" enabled="1" locked="0">
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
<symbol clip_to_extent="1" name="9" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="1" class="SimpleLine" enabled="1" locked="0">
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
<layer pass="6" class="SimpleLine" enabled="1" locked="0">
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
<text-style multilineHeight="1" fontWeight="50" fontWordSpacing="0" useSubstitutions="0" fontStrikeout="0" fontSize="6" fontFamily="Arial" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" capitalization="1" fontUnderline="0" textOpacity="1" fontKerning="1" textOrientation="horizontal" fieldName="coalesce(&quot;nome&quot;, ') || coalesce(&quot;nr_faixas&quot; || 'FAIXAS',')&#xd;" textColor="0,0,0,255" blendMode="0" namedStyle="Normal">
<text-buffer bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferNoFill="1" bufferJoinStyle="128" bufferSize="1" bufferSizeUnits="MM"/>
<text-mask maskSize="1.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskJoinStyle="128" maskOpacity="1" maskType="0" maskedSymbolLayers="" maskEnabled="0"/>
<background shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRotationType="0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeRadiiX="0" shapeOffsetY="0" shapeSizeX="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeRadiiY="0" shapeSizeType="0" shapeSVGFile="" shapeOffsetUnit="MM" shapeSizeY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeType="0">
<symbol clip_to_extent="1" name="markerSymbol" force_rhr="0" alpha="1" type="marker">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleMarker" enabled="1" locked="0">
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
<shadow shadowOpacity="0.7" shadowColor="0,0,0,255" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadius="1.5" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100"/>
<dd_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</dd_properties>
<substitutions/>
</text-style>
<text-format reverseDirectionSymbol="0" addDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" plussign="0" decimals="3" multilineAlign="0" formatNumbers="0" wrapChar="" leftDirectionSymbol="&lt;" placeDirectionSymbol="0"/>
<placement xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationAngle="0" fitInPolygonOnly="0" dist="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" layerType="LineGeometry" placementFlags="10" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" centroidInside="0" lineAnchorType="0" overrunDistance="0" priority="5" placement="2" distUnits="MM" offsetType="0" geometryGenerator="" geometryGeneratorType="PointGeometry" centroidWhole="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" lineAnchorPercent="0.5" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" yOffset="0" quadOffset="4" labelOffsetMapUnitScale="3x:0,0,0,0,0,0"/>
<rendering minFeatureSize="0" fontMinPixelSize="3" limitNumLabels="0" mergeLines="0" scaleMax="0" maxNumLabels="2000" scaleMin="0" fontMaxPixelSize="10000" upsidedownLabels="0" obstacleType="1" fontLimitPixelSize="0" drawLabels="1" displayAll="0" labelPerPart="0" scaleVisibility="0" zIndex="0" obstacle="1" obstacleFactor="1"/>
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
<Option name="lineSymbol" value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
<property key="dualview/previewExpressions" value="&quot;nome&quot;"/>
<property key="embeddedWidgets/count" value="0"/>
<property key="variableNames"/>
<property key="variableValues"/>
</customproperties>
<blendMode>0</blendMode>
<featureBlendMode>0</featureBlendMode>
<layerOpacity>1</layerOpacity>
<SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
<DiagramCategory minimumSize="0" barWidth="5" penWidth="0" minScaleDenominator="0" rotationOffset="270" spacing="5" sizeScale="3x:0,0,0,0,0,0" penAlpha="255" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" spacingUnitScale="3x:0,0,0,0,0,0" penColor="#000000" lineSizeType="MM" showAxis="1" height="15" scaleDependency="Area" opacity="1" width="15" enabled="0" backgroundColor="#ffffff" maxScaleDenominator="1e+08" diagramOrientation="Up" spacingUnit="MM" scaleBasedVisibility="0" labelPlacementMethod="XHeight" backgroundAlpha="255" direction="0">
<fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
<attribute color="#000000" field="" label=""/>
<axisSymbol>
<symbol clip_to_extent="1" name="" force_rhr="0" alpha="1" type="line">
<data_defined_properties>
<Option type="Map">
<Option name="name" value="" type="QString"/>
<Option name="properties"/>
<Option name="type" value="collection" type="QString"/>
</Option>
</data_defined_properties>
<layer pass="0" class="SimpleLine" enabled="1" locked="0">
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
<DiagramLayerSettings obstacle="0" linePlacementFlags="18" priority="0" showAll="1" placement="2" dist="0" zIndex="0">
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
<editWidget type="TextEdit">
<config>
<Option/>
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
<constraint constraints="3" notnull_strength="1" unique_strength="1" field="id" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="nome" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="tipo" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="revestimento" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="trafego" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="nr_faixas" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="nr_pistas" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="canteiro_divisorio" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="situacao_fisica" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="jurisdicao" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="sigla" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="administracao" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="concessionaria" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="observacao" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="data_modificacao" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="controle_uuid" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="usuario_criacao" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="usuario_atualizacao" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="insumo" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="data_insumo" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="visivel" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="texto_edicao" exp_strength="0"/>
<constraint constraints="1" notnull_strength="1" unique_strength="0" field="carta_mini" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="label_x" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="label_y" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="justificativa_txt" exp_strength="0"/>
<constraint constraints="0" notnull_strength="0" unique_strength="0" field="lenght_otf" exp_strength="0"/>
</constraints>
<constraintExpressions>
<constraint exp="" desc="" field="id"/>
<constraint exp="" desc="" field="nome"/>
<constraint exp="" desc="" field="tipo"/>
<constraint exp="" desc="" field="revestimento"/>
<constraint exp="" desc="" field="trafego"/>
<constraint exp="" desc="" field="nr_faixas"/>
<constraint exp="" desc="" field="nr_pistas"/>
<constraint exp="" desc="" field="canteiro_divisorio"/>
<constraint exp="" desc="" field="situacao_fisica"/>
<constraint exp="" desc="" field="jurisdicao"/>
<constraint exp="" desc="" field="sigla"/>
<constraint exp="" desc="" field="administracao"/>
<constraint exp="" desc="" field="concessionaria"/>
<constraint exp="" desc="" field="observacao"/>
<constraint exp="" desc="" field="data_modificacao"/>
<constraint exp="" desc="" field="controle_uuid"/>
<constraint exp="" desc="" field="usuario_criacao"/>
<constraint exp="" desc="" field="usuario_atualizacao"/>
<constraint exp="" desc="" field="insumo"/>
<constraint exp="" desc="" field="data_insumo"/>
<constraint exp="" desc="" field="visivel"/>
<constraint exp="" desc="" field="texto_edicao"/>
<constraint exp="" desc="" field="carta_mini"/>
<constraint exp="" desc="" field="label_x"/>
<constraint exp="" desc="" field="label_y"/>
<constraint exp="" desc="" field="justificativa_txt"/>
<constraint exp="" desc="" field="lenght_otf"/>
</constraintExpressions>
<expressionfields>
<field name="lenght_otf" typeName="" length="0" subType="0" precision="0" expression="$length" comment="" type="6"/>
<field name="lenght_otf" typeName="" length="0" subType="0" precision="0" expression="$length" comment="" type="6"/>
<field name="lenght_otf" typeName="" length="0" subType="0" precision="0" expression="$length" comment="" type="6"/>
<field name="lenght_otf" typeName="" length="0" subType="0" precision="0" expression="$length" comment="" type="6"/>
</expressionfields>
<attributeactions>
<defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
</attributeactions>
<attributetableconfig sortExpression="&quot;sigla&quot;" actionWidgetStyle="dropDown" sortOrder="1">
<columns>
<column name="id" hidden="0" width="-1" type="field"/>
<column name="nome" hidden="0" width="-1" type="field"/>
<column name="tipo" hidden="0" width="-1" type="field"/>
<column name="revestimento" hidden="0" width="-1" type="field"/>
<column name="trafego" hidden="0" width="-1" type="field"/>
<column name="nr_faixas" hidden="0" width="-1" type="field"/>
<column name="nr_pistas" hidden="0" width="-1" type="field"/>
<column name="canteiro_divisorio" hidden="0" width="-1" type="field"/>
<column name="situacao_fisica" hidden="0" width="-1" type="field"/>
<column name="jurisdicao" hidden="0" width="-1" type="field"/>
<column name="sigla" hidden="0" width="267" type="field"/>
<column name="administracao" hidden="0" width="-1" type="field"/>
<column name="concessionaria" hidden="0" width="-1" type="field"/>
<column name="observacao" hidden="0" width="-1" type="field"/>
<column name="data_modificacao" hidden="0" width="-1" type="field"/>
<column name="controle_uuid" hidden="0" width="-1" type="field"/>
<column name="usuario_criacao" hidden="0" width="-1" type="field"/>
<column name="usuario_atualizacao" hidden="0" width="-1" type="field"/>
<column name="insumo" hidden="0" width="-1" type="field"/>
<column name="data_insumo" hidden="0" width="-1" type="field"/>
<column name="lenght_otf" hidden="0" width="-1" type="field"/>
<column hidden="1" width="-1" type="actions"/>
<column name="visivel" hidden="0" width="-1" type="field"/>
<column name="texto_edicao" hidden="0" width="-1" type="field"/>
<column name="carta_mini" hidden="0" width="-1" type="field"/>
<column name="label_x" hidden="0" width="-1" type="field"/>
<column name="label_y" hidden="0" width="-1" type="field"/>
<column name="justificativa_txt" hidden="0" width="-1" type="field"/>
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
