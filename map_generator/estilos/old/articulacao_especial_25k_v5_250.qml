<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.12.2-București" styleCategories="Symbology|Labeling|Fields|Forms">
  <renderer-v2 enableorderby="0" symbollevels="0" forceraster="0" type="singleSymbol">
    <symbols>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="0" type="fill">
        <layer class="SimpleLine" enabled="1" pass="0" locked="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
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
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
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
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{6eb50b8d-fb4b-4d16-8e8b-ad50f014ac59}">
      <rule key="{c6a907b5-1b24-4f4f-911a-5ea838fb875e}">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" namedStyle="Normal" useSubstitutions="0" fontUnderline="0" fontFamily="Arial" fontStrikeout="0" textOrientation="horizontal" fontCapitals="0" textOpacity="1" fontWordSpacing="0" blendMode="0" fontSize="6" fontSizeUnit="Point" fontKerning="1" multilineHeight="1" fontLetterSpacing="0" fontItalic="0" isExpression="1" textColor="0,0,0,255" fieldName="if(mi is NULL, mi, 'MIR-' +mi)" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <text-buffer bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128" bufferOpacity="1" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskType="0" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeRadiiX="0" shapeSizeX="0" shapeRadiiUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeJoinStyle="64" shapeSizeType="0" shapeSizeY="0" shapeType="0" shapeSVGFile="" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOpacity="1" shapeRotation="0" shapeBorderColor="128,128,128,255">
              <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="markerSymbol" type="marker">
                <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="232,113,141,255" k="color"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowScale="100" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowOffsetGlobal="1" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOpacity="0.7" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" autoWrapLength="0" decimals="3" addDirectionSymbol="0" multilineAlign="4294967295" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement dist="0" centroidInside="1" maxCurvedCharAngleOut="-25" centroidWhole="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" offsetUnits="MM" placementFlags="10" maxCurvedCharAngleIn="25" repeatDistanceUnits="MM" geometryGenerator="" distUnits="MM" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" xOffset="0" repeatDistance="0" layerType="PolygonGeometry" geometryGeneratorEnabled="0" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" priority="5" geometryGeneratorType="PointGeometry" rotationAngle="0" yOffset="0" overrunDistance="0" preserveRotation="1" placement="1" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering obstacle="0" scaleMax="0" obstacleType="0" minFeatureSize="0" upsidedownLabels="0" maxNumLabels="2000" scaleVisibility="0" fontMinPixelSize="3" obstacleFactor="1" zIndex="0" labelPerPart="0" limitNumLabels="0" drawLabels="1" displayAll="1" fontLimitPixelSize="0" scaleMin="0" mergeLines="0" fontMaxPixelSize="10000"/>
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
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{8f5047c2-0196-4e80-ab57-8e17f09a768a}">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" namedStyle="Normal" useSubstitutions="0" fontUnderline="0" fontFamily="Arial" fontStrikeout="0" textOrientation="horizontal" fontCapitals="0" textOpacity="1" fontWordSpacing="0" blendMode="0" fontSize="6" fontSizeUnit="Point" fontKerning="1" multilineHeight="1" fontLetterSpacing="0" fontItalic="0" isExpression="0" textColor="0,0,0,255" fieldName="inom" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <text-buffer bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128" bufferOpacity="1" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskType="0" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeRadiiX="0" shapeSizeX="0" shapeRadiiUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeJoinStyle="64" shapeSizeType="0" shapeSizeY="0" shapeType="0" shapeSVGFile="" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOpacity="1" shapeRotation="0" shapeBorderColor="128,128,128,255">
              <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="markerSymbol" type="marker">
                <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="225,89,137,255" k="color"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowScale="100" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowOffsetGlobal="1" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOpacity="0.7" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" autoWrapLength="0" decimals="3" addDirectionSymbol="0" multilineAlign="4294967295" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement dist="0" centroidInside="1" maxCurvedCharAngleOut="-25" centroidWhole="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" offsetUnits="MM" placementFlags="10" maxCurvedCharAngleIn="25" repeatDistanceUnits="MM" geometryGenerator="" distUnits="MM" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" xOffset="0" repeatDistance="0" layerType="PolygonGeometry" geometryGeneratorEnabled="0" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" priority="5" geometryGeneratorType="PointGeometry" rotationAngle="0" yOffset="6" overrunDistance="0" preserveRotation="1" placement="1" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering obstacle="0" scaleMax="0" obstacleType="0" minFeatureSize="0" upsidedownLabels="0" maxNumLabels="2000" scaleVisibility="0" fontMinPixelSize="3" obstacleFactor="1" zIndex="0" labelPerPart="0" limitNumLabels="0" drawLabels="1" displayAll="1" fontLimitPixelSize="0" scaleMin="0" mergeLines="0" fontMaxPixelSize="10000"/>
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
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule active="0" key="{6360441c-d006-4720-b9bb-e9fbe8123dda}" description="nome">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" namedStyle="Normal" useSubstitutions="0" fontUnderline="0" fontFamily="Arial" fontStrikeout="0" textOrientation="horizontal" fontCapitals="0" textOpacity="1" fontWordSpacing="0" blendMode="0" fontSize="6" fontSizeUnit="Point" fontKerning="1" multilineHeight="1" fontLetterSpacing="0" fontItalic="0" isExpression="0" textColor="0,0,0,255" fieldName="nome" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <text-buffer bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128" bufferOpacity="1" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskType="0" maskSize="0" maskSizeUnits="MM" maskJoinStyle="128" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeRadiiX="0" shapeSizeX="0" shapeRadiiUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeJoinStyle="64" shapeSizeType="0" shapeSizeY="0" shapeType="0" shapeSVGFile="" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOpacity="1" shapeRotation="0" shapeBorderColor="128,128,128,255">
              <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="markerSymbol" type="marker">
                <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="114,155,111,255" k="color"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowScale="100" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowOffsetGlobal="1" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOpacity="0.7" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" autoWrapLength="15" decimals="3" addDirectionSymbol="0" multilineAlign="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement dist="0" centroidInside="1" maxCurvedCharAngleOut="-25" centroidWhole="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" offsetUnits="MM" placementFlags="10" maxCurvedCharAngleIn="25" repeatDistanceUnits="MM" geometryGenerator="" distUnits="MM" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" xOffset="0" repeatDistance="0" layerType="PolygonGeometry" geometryGeneratorEnabled="0" fitInPolygonOnly="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" priority="5" geometryGeneratorType="PointGeometry" rotationAngle="0" yOffset="-6" overrunDistance="0" preserveRotation="1" placement="1" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering obstacle="0" scaleMax="0" obstacleType="0" minFeatureSize="0" upsidedownLabels="0" maxNumLabels="2000" scaleVisibility="0" fontMinPixelSize="3" obstacleFactor="1" zIndex="0" labelPerPart="0" limitNumLabels="0" drawLabels="1" displayAll="0" fontLimitPixelSize="0" scaleMin="0" mergeLines="0" fontMaxPixelSize="10000"/>
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
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mi">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="inom">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="escala">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="area_supri">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nome">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="id" name=""/>
    <alias index="1" field="mi" name=""/>
    <alias index="2" field="inom" name=""/>
    <alias index="3" field="escala" name=""/>
    <alias index="4" field="area_supri" name=""/>
    <alias index="5" field="nome" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="mi"/>
    <default expression="" applyOnUpdate="0" field="inom"/>
    <default expression="" applyOnUpdate="0" field="escala"/>
    <default expression="" applyOnUpdate="0" field="area_supri"/>
    <default expression="" applyOnUpdate="0" field="nome"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" unique_strength="0" field="id" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="mi" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="inom" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="escala" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="area_supri" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" field="nome" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="mi" desc=""/>
    <constraint exp="" field="inom" desc=""/>
    <constraint exp="" field="escala" desc=""/>
    <constraint exp="" field="area_supri" desc=""/>
    <constraint exp="" field="nome" desc=""/>
  </constraintExpressions>
  <expressionfields/>
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
    <field name="area_supri" editable="1"/>
    <field name="escala" editable="1"/>
    <field name="id" editable="1"/>
    <field name="inom" editable="1"/>
    <field name="mi" editable="1"/>
    <field name="nome" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="area_supri"/>
    <field labelOnTop="0" name="escala"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="inom"/>
    <field labelOnTop="0" name="mi"/>
    <field labelOnTop="0" name="nome"/>
  </labelOnTop>
  <widgets/>
  <layerGeometryType>2</layerGeometryType>
</qgis>
