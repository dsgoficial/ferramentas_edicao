<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 enableorderby="0" symbollevels="0" type="mergedFeatureRenderer" referencescale="25000" forceraster="0">
    <renderer-v2 enableorderby="0" symbollevels="1" type="RuleRenderer" referencescale="-1" forceraster="0">
      <rules key="{8b45b4bb-4fb7-44a3-aa62-5672c279e3b9}">
        <rule symbol="0" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; =  1 and jurisdicao not in (2,0)" label="L11302A" key="{abacada7-6415-4698-8775-45ecfcc12a47}"/>
        <rule symbol="1" filter=" &quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and &quot;revestimento&quot; = 3 and  &quot;canteiro_divisorio&quot; = 1 and &quot;jurisdicao&quot; in (2,0)" label="L11302_Est_Pav_cant_div" key="{29ed2422-15fb-466c-b3b3-af375808b362}"/>
        <rule symbol="2" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  >= 4" label="L11302B" key="{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c}"/>
        <rule symbol="3" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and&#xd;(&quot;nr_faixas&quot;  IN (2,3) or &quot;nr_faixas&quot; is null)" label="L11302C" key="{bc07a595-5d0d-41ca-8c3a-9be354d5ca94}"/>
        <rule symbol="4" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; IN (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and  &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa; &quot;jurisdicao&quot; = 1 and &quot;nr_faixas&quot;  = 1" label="L11302D" key="{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83}"/>
        <rule symbol="5" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2  and&#xd;&#xa;&quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" label="L11302E" key="{b2135330-a7e6-4ea7-a7b2-f58d824d19ac}"/>
        <rule symbol="6" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2 and &quot;revestimento&quot; =  3 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" label="L11302F" key="{72c0d73b-a2fc-4ceb-877d-e019f8061484}"/>
        <rule symbol="7" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; in (3) and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;&quot;nr_faixas&quot; = 1" label="L11302G" key="{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea}"/>
        <rule symbol="8" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" label="L11302H" key="{9c14ab03-399e-48d0-a253-46933dff9c91}"/>
        <rule symbol="9" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;(&#xa; &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" label="L11302I" key="{0a9e3586-49f7-4ee8-8195-0c8493e0e053}"/>
        <rule symbol="10" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (1) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" label="L11302J" key="{c921bc81-6b3a-471e-83e2-a6930ce0f7a2}"/>
        <rule symbol="11" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; >= 4" label="L11302K" key="{dfb4681b-e5ad-4379-bd19-2a1fe18ff673}"/>
        <rule symbol="12" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa;( &quot;nr_faixas&quot; in (2,3) or &quot;nr_faixas&quot; is null)" label="L11302L" key="{6c962be9-7f83-4f54-b33c-b86b9a7f7063}"/>
        <rule symbol="13" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; = 1 and&#xd;&#xd;&#xa;&quot;jurisdicao&quot; in (0,2) and&#xd;&#xd;&#xa; &quot;nr_faixas&quot; = 1" label="L11302M" key="{b41d8306-313b-4c76-b5e7-de47feec0efc}"/>
        <rule symbol="14" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; in (2) and &#xd;&#xd;&#xa;&quot;revestimento&quot; != 3 and&#xd;&#xd;&#xa;&quot;trafego&quot; !=  1 " label="L11302N" key="{b60c7c00-f8c0-49e1-8621-86f244e3985f}"/>
        <rule symbol="15" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3) and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 1" label="L11302O" key="{568ccda1-72cf-49ff-9629-3a055e4e98be}"/>
        <rule symbol="16" filter="&quot;visivel&quot; = 1 and &quot;tipo&quot; in (2,4) and &quot;situacao_fisica&quot; not in (0,3)and&#xd;&#xd;&#xa;&quot;canteiro_divisorio&quot; = 2" label="L11302P" key="{d91e59d1-098c-4240-ba18-57038fa01222}"/>
        <rule symbol="17" filter="&quot;visivel&quot; = 1 and  &quot;tipo&quot; = 3" label="L10802A" key="{1c58cd5e-e449-488e-ae73-7d2d8802bd88}"/>
        <rule symbol="18" filter="&quot;visivel&quot; = 1 and  &quot;tipo&quot; = 6" label="L10815A" key="{984ae812-5d0f-495d-abb7-479418811b4c}"/>
        <rule symbol="19" filter="&quot;visivel&quot; = 1 and  &quot;tipo&quot; = 5 and &quot;revestimento&quot; = 3 and &quot;situacao_fisica&quot; in (0,3)" label="L20227A" key="{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7}"/>
        <rule symbol="20" filter="&quot;visivel&quot; = 1 and  &quot;tipo&quot; = 5 and &quot;revestimento&quot; != 3 and &quot;situacao_fisica&quot; in (0,3)" label="L20227B" key="{fc01a0bf-6376-4675-b2dd-f21b65680d5a}"/>
        <rule symbol="21" filter="&quot;visivel&quot; = 1 and  &quot;tipo&quot; = 5 and &quot;situacao_fisica&quot; not in (0,3)" label="L20227C" key="{a9910ea2-cda8-4926-bd8b-581851fb015c}"/>
        <rule symbol="22" filter="&quot;visivel&quot; = 2" key="{3f47467a-d408-4009-a28d-b9035567c57a}"/>
        <rule symbol="23" filter="ELSE" key="{a8a19282-e315-4023-a93a-97a16dbabe83}"/>
      </rules>
      <symbols>
        <symbol force_rhr="0" clip_to_extent="1" name="0" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1.25"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="1.25"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="26" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="153,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.95"/>
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
            <prop k="line_color" v="153,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.95"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="27" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="153,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.25"/>
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
            <prop k="line_color" v="153,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.25"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="28" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,1,1,255"/>
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
            <prop k="line_color" v="255,1,1,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="1" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="joinstyle" type="QString" value="round"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1.25"/>
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
            <prop k="joinstyle" v="round"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="1.25"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="25" class="SimpleLine" locked="0">
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
              <Option name="joinstyle" type="QString" value="round"/>
              <Option name="line_color" type="QString" value="149,80,88,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.95"/>
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
            <prop k="joinstyle" v="round"/>
            <prop k="line_color" v="149,80,88,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.95"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="27" class="SimpleLine" locked="0">
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
              <Option name="joinstyle" type="QString" value="round"/>
              <Option name="line_color" type="QString" value="149,80,88,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.25"/>
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
            <prop k="joinstyle" v="round"/>
            <prop k="line_color" v="149,80,88,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.25"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="28" class="SimpleLine" locked="0">
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
              <Option name="joinstyle" type="QString" value="round"/>
              <Option name="line_color" type="QString" value="149,80,88,255"/>
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
            <prop k="joinstyle" v="round"/>
            <prop k="line_color" v="149,80,88,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="10" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="17" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;1.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="153,0,0,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="18" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;3.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="flat"/>
            <prop k="customdash" v="1.5;3.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="11" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.9"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.9"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="15" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;1.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="199,91,91,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="16" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;3.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="flat"/>
            <prop k="customdash" v="1.5;3.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="12" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="13" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;1.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="199,91,91,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="14" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;3.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="customdash" v="1.5;3.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="13" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="joinstyle" type="QString" value="miter"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="joinstyle" v="miter"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="11" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;1.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="miter"/>
              <Option name="line_color" type="QString" value="199,91,91,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="12" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;3.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="miter"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="flat"/>
            <prop k="customdash" v="1.5;3.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="14" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="5" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
            <prop k="line_color" v="255,255,255,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="15" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="1" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1.1"/>
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
            <prop k="line_color" v="255,255,255,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="1.1"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="2.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="dash"/>
              <Option name="line_width" type="QString" value="1.1"/>
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
            <prop k="customdash" v="2.5;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="dash"/>
            <prop k="line_width" v="1.1"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="3" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.8"/>
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
            <prop k="line_color" v="255,255,255,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.8"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="4" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="2.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.1"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="16" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="1" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="line_color" v="255,255,255,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="2.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="dash"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="customdash" v="2.5;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="dash"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="3" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="255,255,255,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="17" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="0" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="dash"/>
              <Option name="line_width" type="QString" value="0.25"/>
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
            <prop k="customdash" v="3.5;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="dash"/>
            <prop k="line_width" v="0.25"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="18" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="0" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="dash"/>
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
            <prop k="customdash" v="1.5;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="dash"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="19" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="customdash" v="1.5;0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="3" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
            <prop k="line_color" v="255,255,255,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="2" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.9"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.9"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="24" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="153,0,0,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="20" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.1"/>
              <Option name="line_width_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0.2"/>
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
            <prop k="customdash" v="1.5;0.5"/>
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
            <prop k="offset" v="0.2"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1;1"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.1"/>
              <Option name="line_width_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="-0.2"/>
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
            <prop k="customdash" v="1;1"/>
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
            <prop k="offset" v="-0.2"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="3" class="SimpleLine" locked="0">
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
              <Option name="joinstyle" type="QString" value="miter"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
            <prop k="joinstyle" v="miter"/>
            <prop k="line_color" v="255,255,255,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="21" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="1" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="line_color" v="255,255,255,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="2.5;0.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0.2"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="customdash" v="2.5;0.5"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0.2"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="3" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1;1"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="-0.2"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="22" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="0" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="114,155,111,255"/>
              <Option name="line_style" type="QString" value="no"/>
              <Option name="line_width" type="QString" value="0.26"/>
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
            <prop k="line_color" v="114,155,111,255"/>
            <prop k="line_style" v="no"/>
            <prop k="line_width" v="0.26"/>
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
        <symbol force_rhr="0" clip_to_extent="1" name="23" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="40" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="255,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="1"/>
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
            <prop k="line_color" v="255,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="1"/>
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
        <symbol force_rhr="0" clip_to_extent="1" name="3" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="24" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="153,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="153,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="4" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="24" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="153,0,0,255"/>
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
            <prop k="line_color" v="153,0,0,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="5" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.9"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.9"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="23" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="199,91,91,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="6" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="23" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="199,91,91,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="199,91,91,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="7" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="23" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="199,91,91,255"/>
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
            <prop k="line_color" v="199,91,91,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-54_180-127-140_#B47F8C')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="8" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.9"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.9"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="21" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;1.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="153,0,0,255"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="22" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;3.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
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
              <Option name="use_custom_dash" type="QString" value="1"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="flat"/>
            <prop k="customdash" v="1.5;3.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
        <symbol force_rhr="0" clip_to_extent="1" name="9" type="line" alpha="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="2" class="SimpleLine" locked="0">
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
              <Option name="line_color" type="QString" value="0,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.7"/>
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
            <prop k="line_color" v="0,0,0,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.7"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="19" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="3.5;1.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="153,0,0,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('marrom-escuro202-100_149-80-88_#955058')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="20" class="SimpleLine" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="flat"/>
              <Option name="customdash" type="QString" value="1.5;3.5"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="255,255,255,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.5"/>
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
            <prop k="customdash" v="1.5;3.5"/>
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
                <Option name="properties" type="Map">
                  <Option name="outlineColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
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
  <labeling type="rule-based">
    <rules key="{8833fe82-4ebb-4592-9576-744b839637f6}"/>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>1</layerGeometryType>
</qgis>
