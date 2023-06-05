<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.24.3-Tisler" labelsEnabled="1">
  <renderer-v2 referencescale="-1" enableorderby="0" type="RuleRenderer" forceraster="0" symbollevels="0">
    <rules key="{7bb1213f-2bd9-4545-9fdd-2d50509a5138}">
      <rule filter=" &quot;visivel&quot; = 1" symbol="0" label="Cota" key="{5f961e1c-08ef-49bb-b5cb-8e1ff71a6076}"/>
    </rules>
    <symbols>
      <symbol type="marker" name="0" clip_to_extent="1" force_rhr="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="255,255,255,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.15" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.74" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="square" k="cap_style"/>
          <prop v="255,255,255,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.15" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.74" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('preto-0_0-0-0_#000000')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{352e0622-f78e-425a-a40a-a26ab7c5ab47}">
      <rule filter="&quot;cota_mais_alta&quot; = 1 and  &quot;visivel&quot; = 1" description="Cota mais alta" key="{7b69871d-45dc-4f3d-88b7-95f810f1ef2c}">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" textOpacity="1" fontStrikeout="0" capitalization="0" textColor="255,255,255,255" isExpression="1" blendMode="0" fontFamily="Noto Sans" namedStyle="Condensed Bold" fontUnderline="0" multilineHeight="1" allowHtml="0" previewBkgrdColor="255,255,255,255" textOrientation="horizontal" fontLetterSpacing="0" fontWeight="75" legendString="Aa" fontItalic="0" fontSizeUnit="Point" fontSize="10" useSubstitutions="0" fontKerning="1" fieldName=" round( &quot;cota&quot;)">
            <families/>
            <text-buffer bufferSize="0.5" bufferOpacity="1" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,0,0,255" bufferNoFill="1" bufferJoinStyle="128" bufferSizeUnits="Point"/>
            <text-mask maskOpacity="1" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSizeUnits="MM" maskJoinStyle="128" maskSize="0.40000000000000002" maskedSymbolLayers="elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{3ed6ab00-ff3e-4c8b-b7b3-64284f2a3543},0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{babeea22-322d-417e-8941-b703129ea60c},1;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{4058f258-7ce7-41bd-9aa3-636c64bdd022},2;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{2ec6beb6-6309-4246-8713-dae8c8227a2f},0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{4058f258-7ce7-41bd-9aa3-636c64bdd022},0,0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{cef3b486-d663-49c4-af84-f6eec2b16adf},0,0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{cef3b486-d663-49c4-af84-f6eec2b16adf},1;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{deb7a634-0a8a-4b21-b802-85c667582ef4},0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{babeea22-322d-417e-8941-b703129ea60c},0,0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{4058f258-7ce7-41bd-9aa3-636c64bdd022},1,0"/>
            <background shapeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeRotationType="0" shapeSVGFile="" shapeSizeType="0" shapeRadiiY="0" shapeSizeY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeDraw="0" shapeRadiiX="0" shapeOpacity="1" shapeSizeUnit="MM" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeSizeX="0" shapeOffsetY="0" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol type="marker" name="markerSymbol" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="125,139,143,255" name="color"/>
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
                  <prop v="125,139,143,255" k="color"/>
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
              <symbol type="fill" name="fillSymbol" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleFill">
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
            <shadow shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowScale="100" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" formatNumbers="0" wrapChar="" decimals="3" plussign="0" placeDirectionSymbol="0" reverseDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="0"/>
          <placement offsetType="0" overrunDistanceUnit="MM" xOffset="0" preserveRotation="1" lineAnchorClipping="0" placement="0" maxCurvedCharAngleIn="25" centroidWhole="0" rotationAngle="0" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" quadOffset="2" repeatDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" lineAnchorType="0" layerType="PointGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" dist="0.40000000000000002" priority="5" centroidInside="0" distUnits="MM" repeatDistanceUnits="MM" lineAnchorPercent="0.5" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" offsetUnits="MM"/>
          <rendering scaleVisibility="0" obstacleType="1" displayAll="0" obstacle="1" unplacedVisibility="0" drawLabels="1" scaleMin="0" maxNumLabels="2000" fontMaxPixelSize="10000" fontLimitPixelSize="0" obstacleFactor="1" labelPerPart="0" limitNumLabels="0" scaleMax="0" mergeLines="0" upsidedownLabels="0" zIndex="0" minFeatureSize="0" fontMinPixelSize="3"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="AlwaysShow">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="BufferColor">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="project_color('preto-0_0-0-0_#000000')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Hali">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression"/>
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
                  <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Vali">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 1 THEN 'Bottom'&#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 2 THEN 'Half'&#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 3 THEN 'Top'&#xd;&#xa;ELSE 'Bottom' END" name="expression"/>
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
              <Option type="QString" value="&lt;symbol type=&quot;line&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
      <rule filter="&quot;cota_mais_alta&quot; != 1 and  &quot;visivel&quot; = 1" description="Outras" key="{f07a72af-deb8-47b0-8aba-7838bf35d177}">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" textOpacity="1" fontStrikeout="0" capitalization="0" textColor="255,255,255,255" isExpression="1" blendMode="0" fontFamily="Noto Sans" namedStyle="Condensed" fontUnderline="0" multilineHeight="1" allowHtml="0" previewBkgrdColor="255,255,255,255" textOrientation="horizontal" fontLetterSpacing="0" fontWeight="50" legendString="Aa" fontItalic="0" fontSizeUnit="Point" fontSize="7" useSubstitutions="0" fontKerning="1" fieldName=" round( &quot;cota&quot;)">
            <families/>
            <text-buffer bufferSize="0.5" bufferOpacity="1" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="0,0,0,255" bufferNoFill="1" bufferJoinStyle="128" bufferSizeUnits="Point"/>
            <text-mask maskOpacity="1" maskEnabled="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSizeUnits="MM" maskJoinStyle="128" maskSize="0.40000000000000002" maskedSymbolLayers="elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{3ed6ab00-ff3e-4c8b-b7b3-64284f2a3543},0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{babeea22-322d-417e-8941-b703129ea60c},1;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{4058f258-7ce7-41bd-9aa3-636c64bdd022},2;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{2ec6beb6-6309-4246-8713-dae8c8227a2f},0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{4058f258-7ce7-41bd-9aa3-636c64bdd022},0,0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{cef3b486-d663-49c4-af84-f6eec2b16adf},0,0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{cef3b486-d663-49c4-af84-f6eec2b16adf},1;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{deb7a634-0a8a-4b21-b802-85c667582ef4},0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{babeea22-322d-417e-8941-b703129ea60c},0,0;elemnat_curva_nivel_l_016a2f14_eb15_4896_ad18_c0929e3626db,{4058f258-7ce7-41bd-9aa3-636c64bdd022},1,0"/>
            <background shapeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeRotationType="0" shapeSVGFile="" shapeSizeType="0" shapeRadiiY="0" shapeSizeY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeDraw="0" shapeRadiiX="0" shapeOpacity="1" shapeSizeUnit="MM" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeSizeX="0" shapeOffsetY="0" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol type="marker" name="markerSymbol" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="125,139,143,255" name="color"/>
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
                  <prop v="125,139,143,255" k="color"/>
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
              <symbol type="fill" name="fillSymbol" clip_to_extent="1" force_rhr="0" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleFill">
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
            <shadow shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowScale="100" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" formatNumbers="0" wrapChar="" decimals="3" plussign="0" placeDirectionSymbol="0" reverseDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="0"/>
          <placement offsetType="0" overrunDistanceUnit="MM" xOffset="0" preserveRotation="1" lineAnchorClipping="0" placement="0" maxCurvedCharAngleIn="25" centroidWhole="0" rotationAngle="0" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" quadOffset="2" repeatDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" lineAnchorType="0" layerType="PointGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleDegrees" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" dist="0.40000000000000002" priority="5" centroidInside="0" distUnits="MM" repeatDistanceUnits="MM" lineAnchorPercent="0.5" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" offsetUnits="MM"/>
          <rendering scaleVisibility="0" obstacleType="1" displayAll="0" obstacle="1" unplacedVisibility="0" drawLabels="1" scaleMin="0" maxNumLabels="2000" fontMaxPixelSize="10000" fontLimitPixelSize="0" obstacleFactor="1" labelPerPart="0" limitNumLabels="0" scaleMax="0" mergeLines="0" upsidedownLabels="0" zIndex="0" minFeatureSize="0" fontMinPixelSize="3"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="AlwaysShow">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="BufferColor">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="project_color('preto-0_0-0-0_#000000')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="project_color('branco-100_255-255-255_#FFFFFF')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Hali">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression"/>
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
                  <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Vali">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="CASE &#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 1 THEN 'Bottom'&#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 2 THEN 'Half'&#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 3 THEN 'Top'&#xd;&#xa;ELSE 'Bottom' END" name="expression"/>
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
              <Option type="QString" value="&lt;symbol type=&quot;line&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
