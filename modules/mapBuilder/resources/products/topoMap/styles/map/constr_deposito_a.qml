<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.34.0-Prizren" labelsEnabled="1">
  <renderer-v2 referencescale="-1" forceraster="0" type="RuleRenderer" symbollevels="0" enableorderby="0">
    <rules key="{f90668d0-bcbf-4ab0-b992-a3a7023aa098}">
      <rule filter="&quot;visivel&quot; = 1" key="{ab6cd03f-78b6-4834-a3f7-0603bccf6b32}">
        <rule filter="&quot;tipo&quot; in (112, 101, 110, 111, 198, 108, 132, 113, 109, 298)" description="Reservatório" key="{f20c2b3e-2a68-4b94-a517-835ef9a264f0}" label="A20403A" symbol="0"/>
        <rule filter="&quot;tipo&quot; in (201, 202, 204, 301)" key="{d844d7ad-7bb3-45e6-9704-f4b1878dc8e4}" label="Tanque de Saneamento" symbol="1"/>
        <rule filter="&quot;tipo&quot; in (203)" key="{d4480d7d-fe8b-4e17-a4ce-c466f3fb0e75}" label="Cisterna" symbol="2"/>
        <rule filter="&quot;tipo&quot; in (304,305,306, 398)" description="Aterro sanitário" key="{a4d71eb4-85cb-4c4a-b104-975029b57333}" label="A20214D" symbol="3"/>
        <rule filter="ELSE" key="{582ca24f-2794-4040-9626-0dd48d5cb8fd}" symbol="4"/>
      </rule>
    </rules>
    <symbols>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="0" frame_rate="10" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{34d59468-9c57-41a9-b6fe-fe285a52cc23}" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="0,0,0,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_style" value="no"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="1" frame_rate="10" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{121e9d58-3817-4ab1-bf4e-9ac9b3ff5ca1}" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="158,210,241,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.1"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('ciano-31_158-210-241_#9ED2F1')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="2" frame_rate="10" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{16333602-58db-4018-aa47-31ec1fa8b7d2}" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="158,210,241,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_style" value="no"/>
            <Option type="QString" name="outline_width" value="0.1"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('ciano-100_0-160-223_#00A0DF')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="3" frame_rate="10" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{7f09a427-7fde-4ba4-84f7-8fc35ee1eff8}" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="0,0,255,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255"/>
            <Option type="QString" name="outline_style" value="no"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('branco-100_255-255-255_#FFFFFF')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" id="{f3d553b4-4558-4521-af7f-b4827d3b947b}" class="SimpleLine" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="1"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="1;0.5"/>
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
            <Option type="QString" name="trim_distance_end" value="0"/>
            <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_end_unit" value="MM"/>
            <Option type="QString" name="trim_distance_start" value="0"/>
            <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="trim_distance_start_unit" value="MM"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="1"/>
            <Option type="QString" name="use_custom_dash" value="1"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineColor">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="4" frame_rate="10" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{71e034b2-a07f-4060-a82a-49256a089c4a}" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="255,5,1,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,0,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
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
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" name="" frame_rate="10" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{b3525ab5-b7ab-46c0-b706-982e1c9a2bd3}" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="0,0,255,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="rule-based">
    <rules key="{8d681d55-f7c5-42e1-b26f-278cb6cc3e10}">
      <rule filter="&quot;visivel&quot; = 1" description="Depósito" key="{c9d80b09-737e-4aea-bb65-b19463b54896}">
        <settings calloutType="simple">
          <text-style forcedItalic="0" fontWeight="50" allowHtml="0" fontItalic="0" capitalization="0" fieldName="texto_edicao" blendMode="0" fontStrikeout="0" textColor="36,31,33,255" textOrientation="horizontal" fontSizeMapUnitScale="3x:0,0,0,0,0,0" namedStyle="Condensed" fontFamily="Noto Sans" previewBkgrdColor="255,255,255,255" fontKerning="1" useSubstitutions="0" forcedBold="0" textOpacity="1" isExpression="0" fontLetterSpacing="0" fontSize="6" fontUnderline="0" legendString="Aa" multilineHeight="0.80000000000000004" fontSizeUnit="Point" fontWordSpacing="0" multilineHeightUnit="Percentage">
            <families/>
            <text-buffer bufferColor="255,255,255,255" bufferNoFill="1" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSizeUnits="MM" bufferOpacity="1" bufferDraw="0" bufferJoinStyle="128"/>
            <text-mask maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="1" maskJoinStyle="128" maskType="0" maskedSymbolLayers="infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;;infra_via_deslocamento_l_ce24dd65_e097_46a1_af70_1175a87403a8;" maskOpacity="1" maskSize="0.20000000000000001"/>
            <background shapeOffsetUnit="MM" shapeBorderColor="128,128,128,255" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRotationType="0" shapeSizeX="0" shapeOpacity="1" shapeSVGFile="" shapeRadiiUnit="MM" shapeSizeY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeOffsetX="0" shapeRadiiY="0" shapeOffsetY="0" shapeType="0" shapeBlendMode="0" shapeBorderWidth="0" shapeRadiiX="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRotation="0">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" name="markerSymbol" frame_rate="10" is_animated="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" id="" class="SimpleMarker" enabled="1" locked="0">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="231,113,72,255"/>
                    <Option type="QString" name="horizontal_anchor_point" value="1"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="name" value="circle"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="0,0,0,255"/>
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
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" name="fillSymbol" frame_rate="10" is_animated="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" id="" class="SimpleFill" enabled="1" locked="0">
                  <Option type="Map">
                    <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="255,255,255,255"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="128,128,128,255"/>
                    <Option type="QString" name="outline_style" value="no"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="style" value="solid"/>
                  </Option>
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
            <shadow shadowOffsetUnit="MM" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowRadiusAlphaOnly="0" shadowScale="100" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowRadius="1.5" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format useMaxLineLengthForAutoWrap="1" multilineAlign="0" placeDirectionSymbol="0" wrapChar="|" addDirectionSymbol="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" autoWrapLength="0" leftDirectionSymbol="&lt;" formatNumbers="0"/>
          <placement centroidWhole="0" quadOffset="2" polygonPlacementFlags="3" maxCurvedCharAngleIn="25" placement="8" lineAnchorClipping="0" overrunDistance="0" repeatDistance="0" offsetType="0" xOffset="0.5" lineAnchorPercent="0.5" preserveRotation="1" layerType="PolygonGeometry" distMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" dist="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" lineAnchorType="0" geometryGeneratorEnabled="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PolygonGeometry" placementFlags="10" rotationUnit="AngleDegrees" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" allowDegraded="1" priority="5" rotationAngle="0" yOffset="-0.5" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorTextPoint="CenterOfText" overrunDistanceUnit="MM" offsetUnits="MM" geometryGenerator="with_variable(&#xd;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xd;&#xa;)" overlapHandling="AllowOverlapIfRequired" repeatDistanceUnits="MM" distUnits="MM"/>
          <rendering limitNumLabels="0" scaleVisibility="0" minFeatureSize="0" scaleMin="0" unplacedVisibility="0" mergeLines="0" fontMinPixelSize="3" obstacleType="1" drawLabels="1" obstacle="1" labelPerPart="0" maxNumLabels="2000" scaleMax="0" upsidedownLabels="0" zIndex="0" fontLimitPixelSize="0" fontMaxPixelSize="10000" obstacleFactor="1"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="CalloutDraw">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="if(  &quot;exibir_linha_rotulo&quot; = 1, 1, 0)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="project_color('preto-75_75-75-75_#4B4B4B')"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="PositionX">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="field" value="label_x"/>
                  <Option type="int" name="type" value="2"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="field" value="label_y"/>
                  <Option type="int" name="type" value="2"/>
                </Option>
                <Option type="Map" name="Show">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects(centroid($geometry),  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" name="anchorPoint" value="point_on_exterior"/>
              <Option type="int" name="blendMode" value="0"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
              <Option type="bool" name="drawToAllParts" value="false"/>
              <Option type="QString" name="enabled" value="1"/>
              <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
              <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; frame_rate=&quot;10&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; id=&quot;{140380a7-7c82-4525-a6cf-221e32943a28}&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option type=&quot;Map&quot; name=&quot;properties&quot;>&lt;Option type=&quot;Map&quot; name=&quot;outlineColor&quot;>&lt;Option type=&quot;bool&quot; name=&quot;active&quot; value=&quot;true&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;expression&quot; value=&quot;project_color('preto-75_75-75-75_#4B4B4B')&quot;/>&lt;Option type=&quot;int&quot; name=&quot;type&quot; value=&quot;3&quot;/>&lt;/Option>&lt;/Option>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>2</layerGeometryType>
</qgis>
