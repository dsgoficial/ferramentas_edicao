<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="100000000" simplifyDrawingTol="1" simplifyLocal="1" simplifyMaxScale="1" simplifyDrawingHints="0" version="3.18.3-Zürich" styleCategories="AllStyleCategories" simplifyAlgorithm="0" maxScale="0" hasScaleBasedVisibilityFlag="0" labelsEnabled="1" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" endExpression="" durationUnit="min" accumulate="0" enabled="0" endField="" startField="" startExpression="" durationField="" fixedDuration="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" type="RuleRenderer">
    <rules key="{f90668d0-bcbf-4ab0-b992-a3a7023aa098}">
      <rule label="A20403A" filter="&quot;tipo&quot; = 204" description="Reservatório" symbol="0" key="{b057ca41-ceaf-415e-a042-d27e7226c2d4}"/>
      <rule label="A20214D" filter="&quot;tipo&quot; = 305" description="Aterro sanitário" symbol="1" key="{b057ca41-ceaf-415e-a042-d27e7226c2d4}"/>
      <rule label="A20214C" filter="&quot;tipo&quot; in (201,301)" description="Tanque" symbol="2" key="{216aafa8-c3e5-49c5-aaa2-b49a0a32cade}"/>
      <rule filter="ELSE" symbol="3" key="{40796232-9cf1-4f9d-8770-00e9ace844e6}"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" name="0" alpha="1" force_rhr="0" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,0,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="1" alpha="1" force_rhr="0" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" locked="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="1"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="1;0.5"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="35,35,35,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.1"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="1"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop v="1" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="35,35,35,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.1" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="2" alpha="1" force_rhr="0" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="158,210,241,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.1"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="158,210,241,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.1" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="3" alpha="1" force_rhr="0" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,5,1,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,5,1,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{5b5552a1-1ee3-4b73-aa1c-5c1750a3638b}">
      <rule description="Depósito" key="{5b2fbfac-33e7-40aa-8505-d38dfbf29880}">
        <settings calloutType="simple">
          <text-style fieldName="texto_edicao" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" useSubstitutions="0" allowHtml="0" fontWordSpacing="0" fontStrikeout="0" isExpression="0" fontSize="6" fontKerning="1" textColor="0,0,0,255" fontItalic="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" textOpacity="1" namedStyle="Condensed" fontWeight="50" textOrientation="horizontal" fontLetterSpacing="0" fontSizeUnit="Point" blendMode="0" multilineHeight="0.8" fontUnderline="0">
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferBlendMode="0" bufferDraw="0" bufferOpacity="1" bufferSize="1" bufferColor="255,255,255,255" bufferJoinStyle="128" bufferSizeUnits="MM"/>
            <text-mask maskSizeUnits="MM" maskJoinStyle="128" maskEnabled="1" maskSize="0.2" maskType="0" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{0a9e3586-49f7-4ee8-8195-0c8493e0e053},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{bc07a595-5d0d-41ca-8c3a-9be354d5ca94},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d91e59d1-098c-4240-ba18-57038fa01222},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9eecdcb0-2ab3-46c1-896d-438fafa5c5ea},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{abacada7-6415-4698-8775-45ecfcc12a47},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{fed7dc2c-72ea-4d3e-8d77-59c29669d1b7},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{d8b1d7f1-902c-4cd8-8d0d-cb37a340a19c},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b60c7c00-f8c0-49e1-8621-86f244e3985f},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{72c0d73b-a2fc-4ceb-877d-e019f8061484},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{dfb4681b-e5ad-4379-bd19-2a1fe18ff673},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c921bc81-6b3a-471e-83e2-a6930ce0f7a2},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b41d8306-313b-4c76-b5e7-de47feec0efc},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{c0dd6618-ddd6-4175-b89e-7d0e3d0ceb83},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{568ccda1-72cf-49ff-9629-3a055e4e98be},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{a9910ea2-cda8-4926-bd8b-581851fb015c},1;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{9c14ab03-399e-48d0-a253-46933dff9c91},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{b2135330-a7e6-4ea7-a7b2-f58d824d19ac},0;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8,{6c962be9-7f83-4f54-b33c-b86b9a7f7063},0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1"/>
            <background shapeOffsetY="0" shapeBorderColor="128,128,128,255" shapeBlendMode="0" shapeSizeUnit="MM" shapeRadiiX="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeType="0" shapeRadiiY="0" shapeSizeY="0" shapeDraw="0" shapeRotation="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeOffsetX="0" shapeOpacity="1" shapeJoinStyle="64" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeBorderWidth="0" shapeRadiiUnit="MM">
              <symbol clip_to_extent="1" name="markerSymbol" alpha="1" force_rhr="0" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="color" type="QString" value="231,113,72,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
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
                  <prop v="0" k="angle"/>
                  <prop v="231,113,72,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowScale="100" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowUnder="0" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusAlphaOnly="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format formatNumbers="0" addDirectionSymbol="0" rightDirectionSymbol=">" placeDirectionSymbol="0" decimals="3" wrapChar="|" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" autoWrapLength="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0"/>
          <placement offsetUnits="MM" centroidWhole="0" repeatDistance="0" quadOffset="2" preserveRotation="1" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistanceUnits="MM" distUnits="MM" lineAnchorType="0" geometryGeneratorEnabled="1" layerType="PolygonGeometry" priority="5" offsetType="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" geometryGeneratorType="PolygonGeometry" overrunDistance="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="-0.5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" maxCurvedCharAngleIn="25" lineAnchorPercent="0.5" rotationAngle="0" polygonPlacementFlags="3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" placementFlags="10" centroidInside="0" placement="8" xOffset="0.5" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)"/>
          <rendering mergeLines="0" fontMinPixelSize="3" displayAll="1" labelPerPart="0" minFeatureSize="0" fontLimitPixelSize="0" drawLabels="1" obstacleType="1" upsidedownLabels="0" scaleMax="0" limitNumLabels="0" maxNumLabels="2000" scaleMin="0" fontMaxPixelSize="10000" obstacle="1" obstacleFactor="1" zIndex="0" scaleVisibility="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="field" type="QString" value="justificativa_txt"/>
                  <Option name="type" type="int" value="2"/>
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
                  <Option name="expression" type="QString" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects(centroid($geometry),  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
    </rules>
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
    <DiagramCategory opacity="1" backgroundAlpha="255" diagramOrientation="Up" sizeType="MM" showAxis="1" lineSizeType="MM" barWidth="5" scaleDependency="Area" spacingUnit="MM" labelPlacementMethod="XHeight" minimumSize="0" scaleBasedVisibility="0" backgroundColor="#ffffff" direction="0" height="15" rotationOffset="270" penColor="#000000" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" penWidth="0" spacingUnitScale="3x:0,0,0,0,0,0" penAlpha="255" spacing="5" enabled="0" maxScaleDenominator="1e+08" minScaleDenominator="0" width="15">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" field="" color="#000000"/>
      <axisSymbol>
        <symbol clip_to_extent="1" name="" alpha="1" force_rhr="0" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="0" locked="0" class="SimpleLine">
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
              <Option name="line_color" type="QString" value="35,35,35,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.26"/>
              <Option name="line_width_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
              <Option name="use_custom_dash" type="QString" value="0"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" placement="1" priority="0" zIndex="0" dist="0" linePlacementFlags="18" obstacle="0">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" type="double" value="0"/>
        <Option name="allowedGapsEnabled" type="bool" value="false"/>
        <Option name="allowedGapsLayer" type="QString" value=""/>
      </Option>
    </checkConfiguration>
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
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tipo">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              </Option>
              <Option type="Map">
                <Option name="Abast água - Caixa de água (202)" type="QString" value="202"/>
              </Option>
              <Option type="Map">
                <Option name="Abast água - Cisterna (203)" type="QString" value="203"/>
              </Option>
              <Option type="Map">
                <Option name="Abast água - Outros (298)" type="QString" value="298"/>
              </Option>
              <Option type="Map">
                <Option name="Abast água - Reservatório (204)" type="QString" value="204"/>
              </Option>
              <Option type="Map">
                <Option name="Abast água - Tanque de água (201)" type="QString" value="201"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Armazém (132)" type="QString" value="132"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Barracão industrial (112)" type="QString" value="112"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Composteira (110)" type="QString" value="110"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Depósito frigorífico (111)" type="QString" value="111"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Galpão (108)" type="QString" value="108"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Outros (198)" type="QString" value="198"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Reservatório (113)" type="QString" value="113"/>
              </Option>
              <Option type="Map">
                <Option name="Geral - Silo (109)" type="QString" value="109"/>
              </Option>
              <Option type="Map">
                <Option name="San - Aterro controlado (306)" type="QString" value="306"/>
              </Option>
              <Option type="Map">
                <Option name="San - Aterro sanitário (305)" type="QString" value="305"/>
              </Option>
              <Option type="Map">
                <Option name="San - Depósito de lixo (304)" type="QString" value="304"/>
              </Option>
              <Option type="Map">
                <Option name="San - Outros (398)" type="QString" value="398"/>
              </Option>
              <Option type="Map">
                <Option name="San - Tanque de saneamento (301)" type="QString" value="301"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tipo_exposicao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              <Option name="Coberto (4)" type="QString" value="4"/>
              <Option name="Céu aberto (5)" type="QString" value="5"/>
              <Option name="Desconhecido (0)" type="QString" value="0"/>
              <Option name="Fechado (3)" type="QString" value="3"/>
              <Option name="Não aplicável (97)" type="QString" value="97"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="situacao_fisica">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              <Option name="Abandonada (1)" type="QString" value="1"/>
              <Option name="Construída (3)" type="QString" value="3"/>
              <Option name="Desconhecida (0)" type="QString" value="0"/>
              <Option name="Destruída (2)" type="QString" value="2"/>
              <Option name="Em construção (4)" type="QString" value="4"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="material_construcao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              <Option name="Alvenaria (1)" type="QString" value="1"/>
              <Option name="Concreto (2)" type="QString" value="2"/>
              <Option name="Desconhecido (0)" type="QString" value="0"/>
              <Option name="Madeira (5)" type="QString" value="5"/>
              <Option name="Metal (3)" type="QString" value="3"/>
              <Option name="Não aplicável (97)" type="QString" value="97"/>
              <Option name="Outros (98)" type="QString" value="98"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="finalidade">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option name="A SER PREENCHIDO (9999)" type="QString" value="9999"/>
              <Option name="Armazenamento (8)" type="QString" value="8"/>
              <Option name="Desconhecida (0)" type="QString" value="0"/>
              <Option name="Distribuição (4)" type="QString" value="4"/>
              <Option name="Recalque (3)" type="QString" value="3"/>
              <Option name="Tratamento (2)" type="QString" value="2"/>
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
    <field configurationFlags="None" name="area_otf">
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
    <alias name="" field="tipo_exposicao" index="3"/>
    <alias name="" field="situacao_fisica" index="4"/>
    <alias name="" field="material_construcao" index="5"/>
    <alias name="" field="finalidade" index="6"/>
    <alias name="" field="observacao" index="7"/>
    <alias name="" field="data_modificacao" index="8"/>
    <alias name="" field="controle_uuid" index="9"/>
    <alias name="" field="usuario_criacao" index="10"/>
    <alias name="" field="usuario_atualizacao" index="11"/>
    <alias name="" field="insumo" index="12"/>
    <alias name="" field="data_insumo" index="13"/>
    <alias name="" field="visivel" index="14"/>
    <alias name="" field="texto_edicao" index="15"/>
    <alias name="" field="carta_mini" index="16"/>
    <alias name="" field="label_x" index="17"/>
    <alias name="" field="label_y" index="18"/>
    <alias name="" field="justificativa_txt" index="19"/>
    <alias name="" field="area_otf" index="20"/>
  </aliases>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="nome" applyOnUpdate="0"/>
    <default expression="" field="tipo" applyOnUpdate="0"/>
    <default expression="" field="tipo_exposicao" applyOnUpdate="0"/>
    <default expression="" field="situacao_fisica" applyOnUpdate="0"/>
    <default expression="" field="material_construcao" applyOnUpdate="0"/>
    <default expression="" field="finalidade" applyOnUpdate="0"/>
    <default expression="" field="observacao" applyOnUpdate="0"/>
    <default expression="" field="data_modificacao" applyOnUpdate="0"/>
    <default expression="" field="controle_uuid" applyOnUpdate="0"/>
    <default expression="" field="usuario_criacao" applyOnUpdate="0"/>
    <default expression="" field="usuario_atualizacao" applyOnUpdate="0"/>
    <default expression="" field="insumo" applyOnUpdate="0"/>
    <default expression="" field="data_insumo" applyOnUpdate="0"/>
    <default expression="" field="visivel" applyOnUpdate="0"/>
    <default expression="" field="texto_edicao" applyOnUpdate="0"/>
    <default expression="" field="carta_mini" applyOnUpdate="0"/>
    <default expression="" field="label_x" applyOnUpdate="0"/>
    <default expression="" field="label_y" applyOnUpdate="0"/>
    <default expression="" field="justificativa_txt" applyOnUpdate="0"/>
    <default expression="" field="area_otf" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1"/>
    <constraint field="nome" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="tipo" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="tipo_exposicao" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="situacao_fisica" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="material_construcao" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="finalidade" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="observacao" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="data_modificacao" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="controle_uuid" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="usuario_criacao" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="usuario_atualizacao" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="insumo" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="data_insumo" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="visivel" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="texto_edicao" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="carta_mini" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="label_x" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="label_y" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="justificativa_txt" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="area_otf" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="nome" exp=""/>
    <constraint desc="" field="tipo" exp=""/>
    <constraint desc="" field="tipo_exposicao" exp=""/>
    <constraint desc="" field="situacao_fisica" exp=""/>
    <constraint desc="" field="material_construcao" exp=""/>
    <constraint desc="" field="finalidade" exp=""/>
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
    <constraint desc="" field="area_otf" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field name="area_otf" expression="$area" length="0" precision="0" subType="0" comment="" type="6" typeName=""/>
    <field name="area_otf" expression="$area" length="0" precision="0" subType="0" comment="" type="6" typeName=""/>
    <field name="area_otf" expression="$area" length="0" precision="0" subType="0" comment="" type="6" typeName=""/>
  </expressionfields>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column name="id" type="field" width="-1" hidden="0"/>
      <column name="nome" type="field" width="-1" hidden="0"/>
      <column name="tipo" type="field" width="226" hidden="0"/>
      <column name="tipo_exposicao" type="field" width="-1" hidden="0"/>
      <column name="situacao_fisica" type="field" width="-1" hidden="0"/>
      <column name="material_construcao" type="field" width="-1" hidden="0"/>
      <column name="finalidade" type="field" width="-1" hidden="0"/>
      <column name="observacao" type="field" width="-1" hidden="0"/>
      <column name="data_modificacao" type="field" width="-1" hidden="0"/>
      <column name="controle_uuid" type="field" width="-1" hidden="0"/>
      <column name="usuario_criacao" type="field" width="-1" hidden="0"/>
      <column name="usuario_atualizacao" type="field" width="-1" hidden="0"/>
      <column name="insumo" type="field" width="-1" hidden="0"/>
      <column name="data_insumo" type="field" width="-1" hidden="0"/>
      <column name="visivel" type="field" width="-1" hidden="0"/>
      <column name="texto_edicao" type="field" width="-1" hidden="0"/>
      <column name="carta_mini" type="field" width="-1" hidden="0"/>
      <column name="label_x" type="field" width="-1" hidden="0"/>
      <column name="label_y" type="field" width="-1" hidden="0"/>
      <column name="justificativa_txt" type="field" width="-1" hidden="0"/>
      <column name="area_otf" type="field" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-UTF-8[13]
"""UTF-8[13]
QGIS forms can have a Python function that is called when the form isUTF-8[13]
opened.UTF-8[13]
UTF-8[13]
Use this function to add extra logic to your forms.UTF-8[13]
UTF-8[13]
Enter the name of the function in the "Python Init function"UTF-8[13]
field.UTF-8[13]
An example follows:UTF-8[13]
"""UTF-8[13]
from qgis.PyQt.QtWidgets import QWidgetUTF-8[13]
UTF-8[13]
def my_form_open(dialog, layer, feature):UTF-8[13]
	geom = feature.geometry()UTF-8[13]
	control = dialog.findChild(QWidget, "MyLineEdit")UTF-8[13]
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="area_otf" editable="0"/>
    <field name="carta_mini" editable="1"/>
    <field name="controle_uuid" editable="1"/>
    <field name="data_insumo" editable="1"/>
    <field name="data_modificacao" editable="1"/>
    <field name="finalidade" editable="1"/>
    <field name="id" editable="1"/>
    <field name="insumo" editable="1"/>
    <field name="justificativa_txt" editable="1"/>
    <field name="label_x" editable="1"/>
    <field name="label_y" editable="1"/>
    <field name="material_construcao" editable="1"/>
    <field name="nome" editable="1"/>
    <field name="observacao" editable="1"/>
    <field name="situacao_fisica" editable="1"/>
    <field name="texto_edicao" editable="1"/>
    <field name="tipo" editable="1"/>
    <field name="tipo_exposicao" editable="1"/>
    <field name="usuario_atualizacao" editable="1"/>
    <field name="usuario_criacao" editable="1"/>
    <field name="visivel" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="area_otf" labelOnTop="0"/>
    <field name="carta_mini" labelOnTop="0"/>
    <field name="controle_uuid" labelOnTop="0"/>
    <field name="data_insumo" labelOnTop="0"/>
    <field name="data_modificacao" labelOnTop="0"/>
    <field name="finalidade" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="insumo" labelOnTop="0"/>
    <field name="justificativa_txt" labelOnTop="0"/>
    <field name="label_x" labelOnTop="0"/>
    <field name="label_y" labelOnTop="0"/>
    <field name="material_construcao" labelOnTop="0"/>
    <field name="nome" labelOnTop="0"/>
    <field name="observacao" labelOnTop="0"/>
    <field name="situacao_fisica" labelOnTop="0"/>
    <field name="texto_edicao" labelOnTop="0"/>
    <field name="tipo" labelOnTop="0"/>
    <field name="tipo_exposicao" labelOnTop="0"/>
    <field name="usuario_atualizacao" labelOnTop="0"/>
    <field name="usuario_criacao" labelOnTop="0"/>
    <field name="visivel" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"nome"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
