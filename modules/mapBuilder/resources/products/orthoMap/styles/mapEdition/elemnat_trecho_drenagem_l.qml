<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.24.3-Tisler" styleCategories="Symbology|Labeling">
  <renderer-v2 enableorderby="0" forceraster="0" referencescale="-1" type="mergedFeatureRenderer" symbollevels="0">
    <renderer-v2 enableorderby="0" forceraster="0" referencescale="-1" type="RuleRenderer" symbollevels="1">
      <rules key="{8e201c66-7086-4414-be5d-65a1376e7ddf}">
        <rule filter="&quot;visivel&quot; = 1 and situacao_em_poligono = 1" key="{7fe1c635-bbbd-49e9-9405-2d2e954b0aa0}" description="Fora de polígono" symbol="0"/>
      </rules>
      <symbols>
        <symbol force_rhr="0" clip_to_extent="1" name="0" alpha="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" pass="1" locked="0" class="SimpleLine">
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
              <Option value="0,160,223,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.2" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="trim_distance_end" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_end_unit" type="QString"/>
              <Option value="0" name="trim_distance_start" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
              <Option value="MM" name="trim_distance_start_unit" type="QString"/>
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
            <prop k="line_color" v="0,160,223,255"/>
            <prop k="line_style" v="solid"/>
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
      </symbols>
    </renderer-v2>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{0fd924a8-4d57-4156-a567-62f854d99eed}">
      <rule filter=" &quot;situacao_em_poligono&quot; in (1) and &quot;visivel&quot; = 1" key="{2ca19f4d-9141-4d2e-a38c-0cf7c606d23f}" description="Trecho de drenagem">
        <settings calloutType="simple">
          <text-style isExpression="0" fontFamily="Noto Sans" fontLetterSpacing="0" fontWordSpacing="0" capitalization="0" multilineHeight="1" fontItalic="1" textColor="255,255,255,255" fieldName="texto_edicao" fontKerning="1" useSubstitutions="0" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontUnderline="0" namedStyle="Condensed Italic" textOrientation="horizontal" blendMode="0" fontWeight="50" fontStrikeout="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" legendString="Aa" allowHtml="0" fontSize="6" textOpacity="1">
            <families/>
            <text-buffer bufferSizeUnits="Point" bufferBlendMode="0" bufferSize="1" bufferOpacity="1" bufferColor="0,160,223,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferNoFill="0" bufferDraw="1">
              <effect enabled="0" type="effectStack">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option value="13" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,0,255" name="color" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="135" name="offset_angle" type="QString"/>
                    <Option value="2" name="offset_distance" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_unit_scale" type="QString"/>
                    <Option value="1" name="opacity" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option value="0" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,255,255" name="color1" type="QString"/>
                    <Option value="0,255,0,255" name="color2" type="QString"/>
                    <Option value="0" name="color_type" type="QString"/>
                    <Option value="ccw" name="direction" type="QString"/>
                    <Option value="0" name="discrete" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="0.5" name="opacity" type="QString"/>
                    <Option value="gradient" name="rampType" type="QString"/>
                    <Option value="255,255,255,255" name="single_color" type="QString"/>
                    <Option value="rgb" name="spec" type="QString"/>
                    <Option value="2" name="spread" type="QString"/>
                    <Option value="MM" name="spread_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="spread_unit_scale" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="direction" v="ccw"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spec" v="rgb"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
                <effect type="blur">
                  <Option type="Map">
                    <Option value="0" name="blend_mode" type="QString"/>
                    <Option value="10" name="blur_level" type="QString"/>
                    <Option value="1" name="blur_method" type="QString"/>
                    <Option value="Pixel" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="1" name="enabled" type="QString"/>
                    <Option value="1" name="opacity" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="10"/>
                  <prop k="blur_method" v="1"/>
                  <prop k="blur_unit" v="Pixel"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="1"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option value="13" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,0,255" name="color" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="135" name="offset_angle" type="QString"/>
                    <Option value="2" name="offset_distance" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_unit_scale" type="QString"/>
                    <Option value="1" name="opacity" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option value="0" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,255,255" name="color1" type="QString"/>
                    <Option value="0,255,0,255" name="color2" type="QString"/>
                    <Option value="0" name="color_type" type="QString"/>
                    <Option value="ccw" name="direction" type="QString"/>
                    <Option value="0" name="discrete" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="0.5" name="opacity" type="QString"/>
                    <Option value="gradient" name="rampType" type="QString"/>
                    <Option value="255,255,255,255" name="single_color" type="QString"/>
                    <Option value="rgb" name="spec" type="QString"/>
                    <Option value="2" name="spread" type="QString"/>
                    <Option value="MM" name="spread_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="spread_unit_scale" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="direction" v="ccw"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spec" v="rgb"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskedSymbolLayers="" maskOpacity="1" maskSize="0.20000000000000001" maskEnabled="1" maskJoinStyle="128" maskSizeUnits="MM" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeJoinStyle="64" shapeRotation="0" shapeOpacity="1" shapeBorderColor="128,128,128,255" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeSVGFile="" shapeSizeType="0" shapeBlendMode="0" shapeRadiiY="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeType="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeSizeY="0">
              <symbol force_rhr="0" clip_to_extent="1" name="markerSymbol" alpha="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="114,155,111,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="0,0,0,255" name="outline_color" type="QString"/>
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
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="114,155,111,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="0,0,0,255"/>
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
              <symbol force_rhr="0" clip_to_extent="1" name="fillSymbol" alpha="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
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
            <shadow shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowBlendMode="6" shadowUnder="0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowScale="100" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format wrapChar="" decimals="3" rightDirectionSymbol=">" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" autoWrapLength="0" multilineAlign="0" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" plussign="0"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" maxCurvedCharAngleOut="-30" geometryGeneratorEnabled="1" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" polygonPlacementFlags="2" distUnits="MM" maxCurvedCharAngleIn="30" geometryGeneratorType="LineGeometry" fitInPolygonOnly="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" placement="3" preserveRotation="0" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="LineGeometry" yOffset="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" overrunDistance="0" rotationAngle="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidWhole="0" lineAnchorPercent="0.5" lineAnchorType="0" repeatDistance="300" offsetUnits="MM" dist="0.5" priority="6" rotationUnit="AngleDegrees" offsetType="0" placementFlags="10"/>
          <rendering scaleMax="0" drawLabels="1" fontMinPixelSize="3" fontLimitPixelSize="0" labelPerPart="0" displayAll="0" unplacedVisibility="0" obstacleFactor="2" limitNumLabels="0" fontMaxPixelSize="10000" scaleMin="0" obstacle="0" upsidedownLabels="0" mergeLines="1" scaleVisibility="0" maxNumLabels="2" zIndex="0" minFeatureSize="20" obstacleType="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="coalesce(&quot;tamanho_txt&quot;, 6)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule filter=" &quot;situacao_em_poligono&quot; in (2) and &quot;visivel&quot; = 1" key="{3c17d2fe-c8ef-4e36-a577-360221b96edd}" description="Massa Dagua">
        <settings calloutType="simple">
          <text-style isExpression="0" fontFamily="Noto Sans" fontLetterSpacing="0" fontWordSpacing="0" capitalization="1" multilineHeight="1" fontItalic="1" textColor="255,255,255,255" fieldName="texto_edicao" fontKerning="1" useSubstitutions="0" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontUnderline="0" namedStyle="Condensed Italic" textOrientation="horizontal" blendMode="0" fontWeight="50" fontStrikeout="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" legendString="Aa" allowHtml="0" fontSize="7" textOpacity="1">
            <families/>
            <text-buffer bufferSizeUnits="Point" bufferBlendMode="0" bufferSize="1" bufferOpacity="1" bufferColor="0,160,223,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferNoFill="0" bufferDraw="1">
              <effect enabled="0" type="effectStack">
                <effect type="dropShadow">
                  <Option type="Map">
                    <Option value="13" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,0,255" name="color" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="135" name="offset_angle" type="QString"/>
                    <Option value="2" name="offset_distance" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_unit_scale" type="QString"/>
                    <Option value="1" name="opacity" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="outerGlow">
                  <Option type="Map">
                    <Option value="0" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,255,255" name="color1" type="QString"/>
                    <Option value="0,255,0,255" name="color2" type="QString"/>
                    <Option value="0" name="color_type" type="QString"/>
                    <Option value="ccw" name="direction" type="QString"/>
                    <Option value="0" name="discrete" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="0.5" name="opacity" type="QString"/>
                    <Option value="gradient" name="rampType" type="QString"/>
                    <Option value="255,255,255,255" name="single_color" type="QString"/>
                    <Option value="rgb" name="spec" type="QString"/>
                    <Option value="2" name="spread" type="QString"/>
                    <Option value="MM" name="spread_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="spread_unit_scale" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="direction" v="ccw"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spec" v="rgb"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
                <effect type="blur">
                  <Option type="Map">
                    <Option value="0" name="blend_mode" type="QString"/>
                    <Option value="10" name="blur_level" type="QString"/>
                    <Option value="1" name="blur_method" type="QString"/>
                    <Option value="Pixel" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="1" name="enabled" type="QString"/>
                    <Option value="1" name="opacity" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="10"/>
                  <prop k="blur_method" v="1"/>
                  <prop k="blur_unit" v="Pixel"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="1"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerShadow">
                  <Option type="Map">
                    <Option value="13" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,0,255" name="color" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="135" name="offset_angle" type="QString"/>
                    <Option value="2" name="offset_distance" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_unit_scale" type="QString"/>
                    <Option value="1" name="opacity" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="13"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="0,0,0,255"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="offset_angle" v="135"/>
                  <prop k="offset_distance" v="2"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="opacity" v="1"/>
                </effect>
                <effect type="innerGlow">
                  <Option type="Map">
                    <Option value="0" name="blend_mode" type="QString"/>
                    <Option value="2.645" name="blur_level" type="QString"/>
                    <Option value="MM" name="blur_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="blur_unit_scale" type="QString"/>
                    <Option value="0,0,255,255" name="color1" type="QString"/>
                    <Option value="0,255,0,255" name="color2" type="QString"/>
                    <Option value="0" name="color_type" type="QString"/>
                    <Option value="ccw" name="direction" type="QString"/>
                    <Option value="0" name="discrete" type="QString"/>
                    <Option value="2" name="draw_mode" type="QString"/>
                    <Option value="0" name="enabled" type="QString"/>
                    <Option value="0.5" name="opacity" type="QString"/>
                    <Option value="gradient" name="rampType" type="QString"/>
                    <Option value="255,255,255,255" name="single_color" type="QString"/>
                    <Option value="rgb" name="spec" type="QString"/>
                    <Option value="2" name="spread" type="QString"/>
                    <Option value="MM" name="spread_unit" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="spread_unit_scale" type="QString"/>
                  </Option>
                  <prop k="blend_mode" v="0"/>
                  <prop k="blur_level" v="2.645"/>
                  <prop k="blur_unit" v="MM"/>
                  <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color1" v="0,0,255,255"/>
                  <prop k="color2" v="0,255,0,255"/>
                  <prop k="color_type" v="0"/>
                  <prop k="direction" v="ccw"/>
                  <prop k="discrete" v="0"/>
                  <prop k="draw_mode" v="2"/>
                  <prop k="enabled" v="0"/>
                  <prop k="opacity" v="0.5"/>
                  <prop k="rampType" v="gradient"/>
                  <prop k="single_color" v="255,255,255,255"/>
                  <prop k="spec" v="rgb"/>
                  <prop k="spread" v="2"/>
                  <prop k="spread_unit" v="MM"/>
                  <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
                </effect>
              </effect>
            </text-buffer>
            <text-mask maskedSymbolLayers="" maskOpacity="1" maskSize="0.20000000000000001" maskEnabled="1" maskJoinStyle="128" maskSizeUnits="MM" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeJoinStyle="64" shapeRotation="0" shapeOpacity="1" shapeBorderColor="128,128,128,255" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeSVGFile="" shapeSizeType="0" shapeBlendMode="0" shapeRadiiY="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeType="0" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeSizeY="0">
              <symbol force_rhr="0" clip_to_extent="1" name="markerSymbol" alpha="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="114,155,111,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="0,0,0,255" name="outline_color" type="QString"/>
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
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="114,155,111,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="0,0,0,255"/>
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
              <symbol force_rhr="0" clip_to_extent="1" name="fillSymbol" alpha="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
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
            <shadow shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowBlendMode="6" shadowUnder="0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowScale="100" shadowOffsetDist="1"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format wrapChar="" decimals="3" rightDirectionSymbol=">" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" autoWrapLength="0" multilineAlign="0" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" plussign="0"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" maxCurvedCharAngleOut="-30" geometryGeneratorEnabled="1" distMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" polygonPlacementFlags="2" distUnits="MM" maxCurvedCharAngleIn="30" geometryGeneratorType="LineGeometry" fitInPolygonOnly="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" placement="3" preserveRotation="0" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="LineGeometry" yOffset="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" overrunDistance="0" rotationAngle="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidWhole="0" lineAnchorPercent="0.5" lineAnchorType="0" repeatDistance="300" offsetUnits="MM" dist="0.5" priority="6" rotationUnit="AngleDegrees" offsetType="0" placementFlags="10"/>
          <rendering scaleMax="0" drawLabels="1" fontMinPixelSize="3" fontLimitPixelSize="0" labelPerPart="0" displayAll="0" unplacedVisibility="0" obstacleFactor="2" limitNumLabels="0" fontMaxPixelSize="10000" scaleMin="0" obstacle="0" upsidedownLabels="0" mergeLines="1" scaleVisibility="0" maxNumLabels="2" zIndex="0" minFeatureSize="20" obstacleType="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Show" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(  $geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="coalesce(&quot;tamanho_txt&quot;, 7)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
  <layerGeometryType>1</layerGeometryType>
</qgis>
