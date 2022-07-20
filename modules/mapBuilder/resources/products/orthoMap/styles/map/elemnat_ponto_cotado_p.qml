<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" labelsEnabled="1" version="3.24.3-Tisler">
  <renderer-v2 enableorderby="0" type="RuleRenderer" referencescale="-1" symbollevels="0" forceraster="0">
    <rules key="{7bb1213f-2bd9-4545-9fdd-2d50509a5138}">
      <rule key="{5f961e1c-08ef-49bb-b5cb-8e1ff71a6076}" label="Cota" symbol="0" filter=" &quot;visivel&quot; = 1"/>
    </rules>
    <symbols>
      <symbol name="0" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
          <Option type="Map">
            <Option name="angle" value="0" type="QString"/>
            <Option name="cap_style" value="square" type="QString"/>
            <Option name="color" value="255,255,255,255" type="QString"/>
            <Option name="horizontal_anchor_point" value="1" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="name" value="circle" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="0,0,0,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.15" type="QString"/>
            <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="scale_method" value="diameter" type="QString"/>
            <Option name="size" value="0.74" type="QString"/>
            <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="size_unit" value="MM" type="QString"/>
            <Option name="vertical_anchor_point" value="1" type="QString"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.74"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('branco_255-255-255_#FFFFFF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{39c28c80-3859-4bf6-b117-885a1ccd4856}">
      <rule key="{822ec79a-5a9a-4233-9332-8bba9d03f65d}" description="Cota mais alta" filter="&quot;cota_mais_alta&quot; = 1 and  &quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style legendString="Aa" isExpression="1" fieldName=" round( &quot;cota&quot;)" fontSizeUnit="Point" fontSize="10" textOrientation="horizontal" capitalization="0" useSubstitutions="0" fontStrikeout="0" textColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" allowHtml="0" multilineHeight="1" fontFamily="Noto Sans" blendMode="0" namedStyle="Condensed" fontWeight="50" fontUnderline="0" textOpacity="1" fontKerning="1" fontItalic="0" fontWordSpacing="0" fontLetterSpacing="0" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferColor="75,75,75,255" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="Point" bufferJoinStyle="128" bufferSize="0.5" bufferNoFill="1" bufferBlendMode="0" bufferDraw="1"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskSize="0.40000000000000002" maskJoinStyle="128" maskedSymbolLayers="elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{25710cad-1fb3-44d5-9456-1335a0349db3},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{726ee8af-3df0-44d0-90db-829b9792358b},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskEnabled="1" maskSizeUnits="MM" maskType="0"/>
            <background shapeSizeY="0" shapeOffsetY="0" shapeBorderWidth="0" shapeFillColor="255,255,255,255" shapeRadiiY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeRotation="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeType="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeJoinStyle="64" shapeRadiiX="0" shapeOpacity="1" shapeBorderWidthUnit="MM">
              <symbol name="markerSymbol" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="125,139,143,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="0,0,0,255" type="QString"/>
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
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,139,143,255"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" alpha="1" type="fill" clip_to_extent="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleFill" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowRadius="1.5" shadowOffsetGlobal="1" shadowOpacity="0.69999999999999996" shadowScale="100" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowUnder="0" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format useMaxLineLengthForAutoWrap="1" multilineAlign="3" autoWrapLength="0" decimals="3" addDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" rightDirectionSymbol=">" wrapChar="" formatNumbers="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
          <placement lineAnchorPercent="0.5" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" quadOffset="2" offsetUnits="MM" overrunDistanceUnit="MM" dist="0.40000000000000002" repeatDistance="0" rotationUnit="AngleDegrees" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" layerType="PointGeometry" distUnits="MM" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" priority="5" rotationAngle="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" placementFlags="10" offsetType="0" overrunDistance="0" xOffset="0" geometryGeneratorEnabled="1" placement="0" preserveRotation="1" geometryGeneratorType="PointGeometry" maxCurvedCharAngleIn="25" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering maxNumLabels="2000" unplacedVisibility="0" fontMinPixelSize="3" limitNumLabels="0" mergeLines="0" drawLabels="1" upsidedownLabels="0" minFeatureSize="0" scaleMin="0" obstacle="1" obstacleFactor="1" fontLimitPixelSize="0" zIndex="0" displayAll="0" labelPerPart="0" scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('branco_255-255-255_#FFFFFF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Hali" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="field" value="label_x" type="QString"/>
                  <Option name="type" value="2" type="int"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="field" value="label_y" type="QString"/>
                  <Option name="type" value="2" type="int"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Vali" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
      </rule>
      <rule key="{eff263cc-afa7-4da2-9949-930eeb257f11}" description="Outras" filter="&quot;cota_mais_alta&quot; != 1 and  &quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style legendString="Aa" isExpression="1" fieldName=" round( &quot;cota&quot;)" fontSizeUnit="Point" fontSize="6" textOrientation="horizontal" capitalization="0" useSubstitutions="0" fontStrikeout="0" textColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" allowHtml="0" multilineHeight="1" fontFamily="Noto Sans" blendMode="0" namedStyle="Condensed" fontWeight="50" fontUnderline="0" textOpacity="1" fontKerning="1" fontItalic="0" fontWordSpacing="0" fontLetterSpacing="0" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferColor="75,75,75,255" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="Point" bufferJoinStyle="128" bufferSize="0.5" bufferNoFill="1" bufferBlendMode="0" bufferDraw="1"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskSize="0.40000000000000002" maskJoinStyle="128" maskedSymbolLayers="elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{25710cad-1fb3-44d5-9456-1335a0349db3},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{726ee8af-3df0-44d0-90db-829b9792358b},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{d41ad47a-a033-4a0d-a10b-3d58f7524766},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{d41ad47a-a033-4a0d-a10b-3d58f7524766},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},2;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{09a89a5b-750d-466c-9afa-3d25e0e04939},0,1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},0,1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},0,0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{17464ca4-4fc1-4fb8-a046-8ab1bf1be117},1;elemnat_curva_nivel_l_d6c483b3_0724_4613_aaf7_14b47e3a09a5,{9379a06a-1941-48d0-9f50-c56915435c2e},2" maskEnabled="1" maskSizeUnits="MM" maskType="0"/>
            <background shapeSizeY="0" shapeOffsetY="0" shapeBorderWidth="0" shapeFillColor="255,255,255,255" shapeRadiiY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeRotation="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeType="0" shapeRotationType="0" shapeOffsetUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeJoinStyle="64" shapeRadiiX="0" shapeOpacity="1" shapeBorderWidthUnit="MM">
              <symbol name="markerSymbol" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleMarker" pass="0">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="125,139,143,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="0,0,0,255" type="QString"/>
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
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,139,143,255"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" alpha="1" type="fill" clip_to_extent="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" class="SimpleFill" pass="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowRadius="1.5" shadowOffsetGlobal="1" shadowOpacity="0.69999999999999996" shadowScale="100" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowUnder="0" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format useMaxLineLengthForAutoWrap="1" multilineAlign="3" autoWrapLength="0" decimals="3" addDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" rightDirectionSymbol=">" wrapChar="" formatNumbers="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
          <placement lineAnchorPercent="0.5" centroidInside="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" quadOffset="2" offsetUnits="MM" overrunDistanceUnit="MM" dist="0.40000000000000002" repeatDistance="0" rotationUnit="AngleDegrees" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" layerType="PointGeometry" distUnits="MM" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" priority="5" rotationAngle="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" placementFlags="10" offsetType="0" overrunDistance="0" xOffset="0" geometryGeneratorEnabled="1" placement="0" preserveRotation="1" geometryGeneratorType="PointGeometry" maxCurvedCharAngleIn="25" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering maxNumLabels="2000" unplacedVisibility="0" fontMinPixelSize="3" limitNumLabels="0" mergeLines="0" drawLabels="1" upsidedownLabels="0" minFeatureSize="0" scaleMin="0" obstacle="1" obstacleFactor="1" fontLimitPixelSize="0" zIndex="0" displayAll="0" labelPerPart="0" scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('preto_75-75-75_#4B4B4B')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="project_color('branco_255-255-255_#FFFFFF')" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Hali" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="CASE &#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;ancora_horizontal&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="field" value="label_x" type="QString"/>
                  <Option name="type" value="2" type="int"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="field" value="label_y" type="QString"/>
                  <Option name="type" value="2" type="int"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Vali" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="CASE &#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 1 THEN 'Bottom'&#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 2 THEN 'Half'&#xd;&#xa;WHEN &quot;ancora_vertical&quot; = 3 THEN 'Top'&#xd;&#xa;ELSE 'Bottom' END" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
