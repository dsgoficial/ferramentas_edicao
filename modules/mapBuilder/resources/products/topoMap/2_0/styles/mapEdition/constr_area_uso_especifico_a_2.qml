<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" layerType="Vector" styleCategories="Symbology|Labeling" version="4.2.0-Belém do Pará">
  <renderer-v2 enableorderby="0" forceraster="0" referencescale="-1" symbollevels="0" type="RuleRenderer">
    <rules key="{13e4a4cc-441e-4a52-afcd-1c27c2d5b0a6}">
      <rule description="Área de uso específico" filter="&quot;visivel&quot; = 1" key="{3c12a81d-87ff-4240-b8c8-02ee4667da6d}">
        <rule description="Área relacionada a edificação de comércio ou serviços (5)" filter="&quot;tipo&quot; = 5" key="{a64b3154-a255-47bb-a09a-84a851deca1f}" label="Área de: comércio e serviço" symbol="0"/>
        <rule description="Área relacionada a edificação de ensino (6)" filter="&quot;tipo&quot; = 6" key="{5665bc50-a9db-4638-97e7-d70843a66508}" label="Área de: ensino" symbol="1"/>
        <rule description="Área relacionada a edificação de saúde (7) e a equipamentos de desenvolvimento social (11)" filter="&quot;tipo&quot; in (7, 11)" key="{04376f99-35e2-4850-941d-0286f829270e}" label="Área de: saúde" symbol="2"/>
        <rule description="Dutos (3), agropecuária ou extrativismo vegetal ou pesca (4), industrial (8), energia elétrica (10), estação de medição (12), extrativismo mineral (13), abastecimento de água (14), comunicações (15), estrutura de transporte (16) e saneamento (17)" filter="&quot;tipo&quot; in (3, 4, 8, 10, 12, 13, 14, 15, 16, 17)" key="{722aba5e-4133-4949-8a6a-8aa2bcfef1f8}" label="Área de: infraestrutura" symbol="3"/>
        <rule description="Área relacionada a edificação religiosa (9)" filter="&quot;tipo&quot; = 9" key="{42169f06-e299-47c0-b12b-8d69a94a38f9}" label="Área de: religiosa" symbol="4"/>
        <rule description="Área relacionada ao lazer (18) e a ruínas de valor histórico (19)" filter="&quot;tipo&quot; in (18, 19)" key="{f8a938bc-2c6d-4eb2-a258-a6ffdff575d4}" label="Área de: lazer" symbol="5"/>
        <rule description="A SER PREENCHIDO (9999) e códigos fora do domínio" filter="ELSE" key="{b786785c-e857-4caf-aa76-edb00dde5d51}" label="Área de: sem classificação (9999)" symbol="6"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="0" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{a2150f3c-bf8c-4994-9b3f-6ab7a0386206}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{9d9261ec-9e75-4444-ae46-b70444c0be9f}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="line_color" type="QString" value="172,158,145,255,rgb:0.6745098,0.6196079,0.5686275,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="3.9"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area >= 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" enabled="1" id="{33347c17-5c78-414c-ba45-9774e9762f13}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="172,158,145,255,rgb:0.6745098,0.6196079,0.5686275,1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="172,158,145,255,rgb:0.6745098,0.6196079,0.5686275,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area &lt; 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{7c109d62-45fa-436b-9c71-a312ee6861b0}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{a4a395af-8b86-4441-8c07-fb2d40d27d1a}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{7ee5e1c5-c717-4f02-bf42-515e69f081ed}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="line_color" type="QString" value="234,217,149,255,rgb:0.9176471,0.8509804,0.5843138,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="3.9"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area >= 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" enabled="1" id="{d5d35115-9e32-4c21-9dd5-9e2607701451}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="234,217,149,255,rgb:0.9176471,0.8509804,0.5843138,1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="234,217,149,255,rgb:0.9176471,0.8509804,0.5843138,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area &lt; 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{26c7c58b-c36c-4d6d-bf38-25e998876ee8}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="2" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{c14da15f-ba03-4a1e-ad2a-cffb336648bb}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{21516836-a0e6-40a8-86b4-532990e776ee}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="line_color" type="QString" value="222,101,87,255,rgb:0.8705882,0.3960784,0.3411765,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="3.9"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area >= 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" enabled="1" id="{81dd152f-103f-424c-a941-76b55c96ef00}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="222,101,87,255,rgb:0.8705882,0.3960784,0.3411765,1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="222,101,87,255,rgb:0.8705882,0.3960784,0.3411765,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area &lt; 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{69598dc1-330b-48e9-ba37-062349259c80}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="3" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{ffc0f751-a459-403b-afff-41783891a062}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{a39d46f4-e001-45d1-b2e6-9159bacfa3cd}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="line_color" type="QString" value="228,173,116,255,rgb:0.8941177,0.6784314,0.454902,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="3.9"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area >= 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" enabled="1" id="{099d4b66-b6d2-4ca7-8d53-1ee6b144fe0a}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="228,173,116,255,rgb:0.8941177,0.6784314,0.454902,1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="228,173,116,255,rgb:0.8941177,0.6784314,0.454902,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area &lt; 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{0e06c7e4-acbb-437d-be79-1e60dd994525}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="4" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{7f10d7a8-6c83-4f77-9e4a-33ae9acb2f2a}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{c84136b1-be22-4430-81ba-1f1c667e95d4}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="line_color" type="QString" value="253,221,5,255,rgb:0.9921569,0.8666667,0.0196078,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="3.9"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area >= 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" enabled="1" id="{55104c8b-4245-4648-b548-d1b2e210a96e}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="253,221,5,255,rgb:0.9921569,0.8666667,0.0196078,1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="253,221,5,255,rgb:0.9921569,0.8666667,0.0196078,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area &lt; 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{ebc85cd3-5f63-4747-acbb-20c64e233a39}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="5" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{9f6632f5-9eb3-4d3b-8143-cf3c3aab4c39}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{cbca021c-8b01-4f37-acd7-d949fae8648a}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="flat"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="line_color" type="QString" value="233,244,231,255,rgb:0.9137255,0.9568627,0.9058824,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="3.9"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area >= 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" enabled="1" id="{f605dc75-3ade-43c8-8131-5c62fea5a3d3}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="233,244,231,255,rgb:0.9137255,0.9568627,0.9058824,1"/>
            <Option name="joinstyle" type="QString" value="miter"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="233,244,231,255,rgb:0.9137255,0.9568627,0.9058824,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="$area &lt; 4000"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{c7fca210-a8d7-4e83-a881-f9d455682ece}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="6" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{9c44377c-98da-4701-9c76-03acb244c2e0}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleLine" enabled="1" id="{d0049653-0f5c-42c0-878b-6caea8b5f38c}" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="0,0,4,255,rgb:0,0,0.0156863,1"/>
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
    </symbols>
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" id="{c54884b4-7db2-481e-a890-bed4ce2f3704}" locked="0" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255,rgb:0,0,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="rule-based">
    <rules key="{2236ff4f-ea1f-4d9d-86fa-74ce758b5ae6}">
      <rule active="0" description="Área de uso específico" filter="&quot;visivel&quot; = 1" key="{bfb34504-151f-465d-96ba-806181f512ed}">
        <rule description="Área de: comércio e serviço" filter="&quot;tipo&quot; = 5" key="{764c47a7-3241-4e1d-82a2-474a381393dd}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="172,158,145,255,rgb:0.6745098,0.6196079,0.5686275,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Área de: ensino" filter="&quot;tipo&quot; = 6" key="{5eb05314-cbd9-40d0-af2d-aecd33afaeeb}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="234,217,149,255,rgb:0.9176471,0.8509804,0.5843138,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Área de: saúde" filter="&quot;tipo&quot; in (7, 11)" key="{326be5d4-0853-484d-b2af-60e888bc408a}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="222,101,87,255,rgb:0.8705882,0.3960784,0.3411765,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Área de: infraestrutura" filter="&quot;tipo&quot; in (3, 4, 8, 10, 12, 13, 14, 15, 16, 17)" key="{56ac6742-a671-4f3e-8900-3a1fcbc1d05b}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="228,173,116,255,rgb:0.8941177,0.6784314,0.454902,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Área de: religiosa" filter="&quot;tipo&quot; = 9" key="{a3a83ba9-c426-45d3-b33a-0f65776bc857}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="253,221,5,255,rgb:0.9921569,0.8666667,0.0196078,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Área de: lazer" filter="&quot;tipo&quot; in (18, 19)" key="{80823574-b7f4-4aec-bad0-67b4b9c2ca93}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="233,244,231,255,rgb:0.9137255,0.9568627,0.9058824,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
        <rule description="Área de: sem classificação (9999)" filter="ELSE" key="{11826578-81f4-422e-a618-154cc937af11}">
          <settings calloutType="simple">
            <text-style allowHtml="0" blendMode="0" capitalization="0" fieldName="texto_edicao" fontFamily="Noto Sans" fontItalic="0" fontKerning="1" fontLetterSpacing="0" fontSize="6" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="400" fontWordSpacing="0" forcedBold="0" forcedItalic="0" isExpression="0" legendString="Aa" multilineHeight="0.80000000000000004" multilineHeightUnit="Percentage" namedStyle="Condensed" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" stretchFactor="100" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistanceUnit="Point" textColor="255,255,255,255,rgb:1,1,1,1" textOpacity="1" textOrientation="horizontal" useSubstitutions="0">
              <families/>
              <text-buffer bufferBlendMode="0" bufferColor="36,31,33,255,rgb:0.1411765,0.1215686,0.1294118,1" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="0.20000000000000001" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM"/>
              <text-mask maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSize="0.20000000000000001" maskSize2="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM" maskType="0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd;"/>
              <background shapeBlendMode="0" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0">
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="markerSymbol" type="marker">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleMarker" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="angle" type="QString" value="0"/>
                      <Option name="cap_style" type="QString" value="square"/>
                      <Option name="color" type="QString" value="231,113,72,255,rgb:0.9058824,0.4431373,0.282353,1"/>
                      <Option name="horizontal_anchor_point" type="QString" value="1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="name" type="QString" value="circle"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="0,0,0,255,rgb:0,0,0,1"/>
                      <Option name="outline_style" type="QString" value="solid"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="scale_method" type="QString" value="diameter"/>
                      <Option name="size" type="QString" value="2"/>
                      <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="size_unit" type="QString" value="MM"/>
                      <Option name="vertical_anchor_point" type="QString" value="1"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
                <symbol alpha="1" clip_to_extent="1" force_rhr="0" frame_rate="10" is_animated="0" name="fillSymbol" type="fill">
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <layer class="SimpleFill" enabled="1" id="" locked="0" pass="0">
                    <Option type="Map">
                      <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                      <Option name="joinstyle" type="QString" value="bevel"/>
                      <Option name="offset" type="QString" value="0,0"/>
                      <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                      <Option name="offset_unit" type="QString" value="MM"/>
                      <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                      <Option name="outline_style" type="QString" value="no"/>
                      <Option name="outline_width" type="QString" value="0"/>
                      <Option name="outline_width_unit" type="QString" value="MM"/>
                      <Option name="style" type="QString" value="solid"/>
                    </Option>
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                  </layer>
                </symbol>
              </background>
              <shadow shadowBlendMode="6" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0"/>
              <dd_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </dd_properties>
              <substitutions/>
            </text-style>
            <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" wrapChar="|"/>
            <placement allowDegraded="0" centroidInside="0" centroidWhole="0" dist="0.40000000000000002" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" geometryGeneratorEnabled="1" geometryGeneratorType="PolygonGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" lineAnchorClipping="0" lineAnchorPercent="0.5" lineAnchorTextPoint="CenterOfText" lineAnchorType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" maximumDistance="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" multipartBehavior="LabelLargestPartOnly" offsetType="0" offsetUnits="MM" overlapHandling="PreventOverlap" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" placement="0" placementFlags="10" polygonPlacementFlags="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" prioritization="PreferCloser" priority="5" quadOffset="2" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" rotationUnit="AngleDegrees" xOffset="0.5" yOffset="-0.5"/>
            <rendering drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="1" scaleMax="0" scaleMin="0" scaleVisibility="0" unplacedVisibility="0" upsidedownLabels="0" zIndex="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties" type="Map">
                  <Option name="AlwaysShow" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="BufferColor" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="project_color_object('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="CalloutDraw" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="type" type="int" value="1"/>
                    <Option name="val" type="QString" value=""/>
                  </Option>
                  <Option name="Color" type="Map">
                    <Option name="active" type="bool" value="false"/>
                    <Option name="expression" type="QString" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="MultiLineAlignment" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                  <Option name="PositionX" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_x"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="PositionY" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="field" type="QString" value="label_y"/>
                    <Option name="type" type="int" value="2"/>
                  </Option>
                  <Option name="Show" type="Map">
                    <Option name="active" type="bool" value="true"/>
                    <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                    <Option name="type" type="int" value="3"/>
                  </Option>
                </Option>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <callout type="simple">
              <Option type="Map">
                <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
                <Option name="blendMode" type="int" value="0"/>
                <Option name="ddProperties" type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
                <Option name="drawToAllParts" type="bool" value="false"/>
                <Option name="enabled" type="QString" value="0"/>
                <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
                <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; id=&quot;{e2a67524-ed31-4663-b661-28110fa17b21}&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
                <Option name="minLength" type="double" value="0"/>
                <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="minLengthUnit" type="QString" value="MM"/>
                <Option name="offsetFromAnchor" type="double" value="0"/>
                <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
                <Option name="offsetFromLabel" type="double" value="0"/>
                <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
              </Option>
            </callout>
          </settings>
        </rule>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>2</layerGeometryType>
</qgis>
