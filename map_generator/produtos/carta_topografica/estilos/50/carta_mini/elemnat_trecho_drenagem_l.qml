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
<renderer-v2 type="RuleRenderer" symbollevels="1" forceraster="0" enableorderby="0">
<rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
<rule filter=" &quot;nome&quot; is not null" key="{8d7cff9b-b82c-4486-8ec6-346d21085778}">
<rule filter="&quot;regime&quot; = 1 and &quot;situacao_em_poligono&quot; not in (2,3,4)" description="Regime permanente" symbol="0" label="L10319A" key="{d438350f-e5f2-43a3-ad37-e723d23c9c9f}"/>
<rule filter="&quot;regime&quot; in (3,5) and &quot;situacao_em_poligono&quot; not in (2,3,4)" symbol="1" label="L10319B" key="{f0189ecb-eb6c-48bb-9111-9d4f5639f30f}"/>
<rule filter="&quot;situacao_em_poligono&quot;  in (2,3,4)" symbol="2" label="Dentro de polígono" key="{3dce10d2-e579-4f44-9d80-065fdb67090d}"/>
<rule filter="ELSE" symbol="3" label="Outro" key="{2938db61-0f85-41a0-9628-824d8ded424c}"/>
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
<Option type="QString" name="line_color" value="0,160,223,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="0.2"/>
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
<prop k="line_color" v="0,160,223,255"/>
<prop k="line_style" v="solid"/>
<prop k="line_width" v="0.2"/>
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
<Option type="QString" name="customdash" value="2;0.5"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="0,160,223,255"/>
<Option type="QString" name="line_style" value="dot"/>
<Option type="QString" name="line_width" value="0.2"/>
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
<prop k="customdash" v="2;0.5"/>
<prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="customdash_unit" v="MM"/>
<prop k="dash_pattern_offset" v="0"/>
<prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
<prop k="dash_pattern_offset_unit" v="MM"/>
<prop k="draw_inside_polygon" v="0"/>
<prop k="joinstyle" v="bevel"/>
<prop k="line_color" v="0,160,223,255"/>
<prop k="line_style" v="dot"/>
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
<Option type="QString" name="capstyle" value="square"/>
<Option type="QString" name="customdash" value="5;2"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="255,158,23,255"/>
<Option type="QString" name="line_style" value="no"/>
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
<prop k="line_color" v="255,158,23,255"/>
<prop k="line_style" v="no"/>
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
<Option type="QString" name="capstyle" value="square"/>
<Option type="QString" name="customdash" value="5;2"/>
<Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="customdash_unit" value="MM"/>
<Option type="QString" name="dash_pattern_offset" value="0"/>
<Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
<Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
<Option type="QString" name="draw_inside_polygon" value="0"/>
<Option type="QString" name="joinstyle" value="bevel"/>
<Option type="QString" name="line_color" value="255,0,0,255"/>
<Option type="QString" name="line_style" value="solid"/>
<Option type="QString" name="line_width" value="1"/>
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
<Option type="QString" name="name" value=""/>
<Option name="properties"/>
<Option type="QString" name="type" value="collection"/>
</Option>
</data_defined_properties>
</layer>
</symbol>
</symbols>
</renderer-v2>
<labeling type="simple">
<settings calloutType="simple">
<text-style fontFamily="Arial" fontStrikeout="0" fontSizeUnit="Point" fontSize="6" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" fontLetterSpacing="0" textColor="0,160,223,255" multilineHeight="1" blendMode="0" fontWordSpacing="0" textOpacity="1" isExpression="0" fontWeight="50" textOrientation="horizontal" fieldName="nome" namedStyle="Normal" fontItalic="0" previewBkgrdColor="255,255,255,255" allowHtml="0" fontKerning="1" useSubstitutions="0">
<text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSizeUnits="MM" bufferSize="1" bufferColor="75,105,255,255" bufferDraw="0" bufferNoFill="1"/>
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
<Option type="QString" name="color" value="213,180,60,255"/>
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
<prop k="color" v="213,180,60,255"/>
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
<placement rotationAngle="0" maxCurvedCharAngleIn="25" repeatDistance="0" lineAnchorType="0" xOffset="0" polygonPlacementFlags="2" quadOffset="4" yOffset="0" offsetType="0" placement="3" dist="0" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorType="PointGeometry" fitInPolygonOnly="0" geometryGenerator="" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" layerType="LineGeometry" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="100"/>
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
<Option type="Map" name="map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
<Option type="QString" name="Canal (2)" value="2"/>
<Option type="QString" name="Canal encoberto (4)" value="4"/>
<Option type="QString" name="Rio (1)" value="1"/>
<Option type="QString" name="Trecho pluvial (3)" value="3"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="situacao_em_poligono" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option type="Map" name="map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
<Option type="QString" name="Fora de polígono (1)" value="1"/>
<Option type="QString" name="Trecho compartilhado (4)" value="4"/>
<Option type="QString" name="Trecho principal (2)" value="2"/>
<Option type="QString" name="Trecho secundário (3)" value="3"/>
</Option>
</Option>
</config>
</editWidget>
</field>
<field name="regime" configurationFlags="None">
<editWidget type="ValueMap">
<config>
<Option type="Map">
<Option type="Map" name="map">
<Option type="QString" name="A SER PREENCHIDO (9999)" value="9999"/>
<Option type="QString" name="Permanente (1)" value="1"/>
<Option type="QString" name="Seco (5)" value="5"/>
<Option type="QString" name="Temporário (3)" value="3"/>
</Option>
</Option>
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
<alias name="" field="id" index="0"/>
<alias name="" field="nome" index="1"/>
<alias name="" field="tipo" index="2"/>
<alias name="" field="situacao_em_poligono" index="3"/>
<alias name="" field="regime" index="4"/>
<alias name="" field="observacao" index="5"/>
<alias name="" field="data_modificacao" index="6"/>
<alias name="" field="controle_uuid" index="7"/>
<alias name="" field="usuario_criacao" index="8"/>
<alias name="" field="usuario_atualizacao" index="9"/>
<alias name="" field="insumo" index="10"/>
<alias name="" field="data_insumo" index="11"/>
<alias name="" field="visivel" index="12"/>
<alias name="" field="texto_edicao" index="13"/>
<alias name="" field="carta_mini" index="14"/>
<alias name="" field="label_x" index="15"/>
<alias name="" field="label_y" index="16"/>
<alias name="" field="justificativa_txt" index="17"/>
<alias name="" field="lenght_otf" index="18"/>
</aliases>
<defaults>
<default applyOnUpdate="0" field="id" expression=""/>
<default applyOnUpdate="0" field="nome" expression=""/>
<default applyOnUpdate="0" field="tipo" expression=""/>
<default applyOnUpdate="0" field="situacao_em_poligono" expression=""/>
<default applyOnUpdate="0" field="regime" expression=""/>
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
<constraint notnull_strength="1" field="situacao_em_poligono" exp_strength="0" unique_strength="0" constraints="1"/>
<constraint notnull_strength="1" field="regime" exp_strength="0" unique_strength="0" constraints="1"/>
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
<constraint exp="" field="situacao_em_poligono" desc=""/>
<constraint exp="" field="regime" desc=""/>
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
<field subType="0" type="6" name="lenght_otf" length="0" typeName="" comment="" precision="0" expression="$length"/>
</expressionfields>
<attributeactions>
<defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
</attributeactions>
<attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;situacao_em_poligono&quot;">
<columns>
<column hidden="0" width="-1" type="field" name="id"/>
<column hidden="0" width="189" type="field" name="nome"/>
<column hidden="0" width="144" type="field" name="tipo"/>
<column hidden="0" width="145" type="field" name="situacao_em_poligono"/>
<column hidden="0" width="-1" type="field" name="regime"/>
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
<field name="carta_mini" editable="1"/>
<field name="controle_uuid" editable="1"/>
<field name="data_insumo" editable="1"/>
<field name="data_modificacao" editable="1"/>
<field name="id" editable="1"/>
<field name="insumo" editable="1"/>
<field name="justificativa_txt" editable="1"/>
<field name="label_x" editable="1"/>
<field name="label_y" editable="1"/>
<field name="lenght_otf" editable="0"/>
<field name="nome" editable="1"/>
<field name="observacao" editable="1"/>
<field name="regime" editable="1"/>
<field name="situacao_em_poligono" editable="1"/>
<field name="texto_edicao" editable="1"/>
<field name="tipo" editable="1"/>
<field name="usuario_atualizacao" editable="1"/>
<field name="usuario_criacao" editable="1"/>
<field name="visivel" editable="1"/>
</editable>
<labelOnTop>
<field name="carta_mini" labelOnTop="0"/>
<field name="controle_uuid" labelOnTop="0"/>
<field name="data_insumo" labelOnTop="0"/>
<field name="data_modificacao" labelOnTop="0"/>
<field name="id" labelOnTop="0"/>
<field name="insumo" labelOnTop="0"/>
<field name="justificativa_txt" labelOnTop="0"/>
<field name="label_x" labelOnTop="0"/>
<field name="label_y" labelOnTop="0"/>
<field name="lenght_otf" labelOnTop="0"/>
<field name="nome" labelOnTop="0"/>
<field name="observacao" labelOnTop="0"/>
<field name="regime" labelOnTop="0"/>
<field name="situacao_em_poligono" labelOnTop="0"/>
<field name="texto_edicao" labelOnTop="0"/>
<field name="tipo" labelOnTop="0"/>
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
