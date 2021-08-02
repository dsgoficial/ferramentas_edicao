<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" styleCategories="LayerConfiguration|Symbology|Labeling|Fields|Forms" version="3.12.2-București" labelsEnabled="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" symbollevels="0" type="RuleRenderer">
    <rules key="{0b5260cb-68fa-44a7-9937-3b05983fbf19}">
      <rule symbol="0" filter="&quot;cota&quot;% (@escala*0.4*5)  = 0" key="{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e}" label="Curva de nível mestra"/>
      <rule symbol="1" filter="&quot;cota&quot;% (@escala*0.4)  = 0 AND &quot;cota&quot;% (@escala*0.4*5)  != 0" key="{16c7a6ca-5c34-41f4-a094-b0de23b77135}" label="Curva de nível normal"/>
      <rule symbol="2" filter="&quot;cota&quot;% (@escala*0.4)  = 0 AND &quot;cota&quot;% (@escala*0.4*5)  != 0 AND  &quot;depressao&quot;  = 1" key="{f1b98795-0d70-40d8-8bfa-7ac86d8980c8}" label="Curva de nível em depressão (normal)"/>
      <rule symbol="3" filter="&quot;cota&quot;% (@escala*0.4*5)  = 0 AND  &quot;depressao&quot;  = 1" key="{8807404b-db9d-4abe-8eb2-f606cc4624fa}" label="Curva de nível em depressão (mestra)"/>
    </rules>
    <symbols>
      <symbol alpha="1" name="0" type="line" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="GeometryGenerator">
          <prop v="Line" k="SymbolType"/>
          <prop v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection(simplify_vw($geometry, @escala/10),  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" name="@0@0" type="line" force_rhr="0" clip_to_extent="1">
            <layer enabled="1" pass="0" locked="0" class="SimpleLine">
              <prop v="flat" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="255,137,0,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.48" k="line_width"/>
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
        </layer>
      </symbol>
      <symbol alpha="1" name="1" type="line" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="GeometryGenerator">
          <prop v="Line" k="SymbolType"/>
          <prop v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection(simplify_vw($geometry, @escala/10),  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" name="@1@0" type="line" force_rhr="0" clip_to_extent="1">
            <layer enabled="1" pass="0" locked="0" class="SimpleLine">
              <prop v="flat" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="255,137,0,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.28" k="line_width"/>
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
        </layer>
      </symbol>
      <symbol alpha="1" name="2" type="line" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="GeometryGenerator">
          <prop v="Line" k="SymbolType"/>
          <prop v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection(simplify_vw($geometry, @escala/10),  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" name="@2@0" type="line" force_rhr="0" clip_to_extent="1">
            <layer enabled="1" pass="0" locked="0" class="HashLine">
              <prop v="4" k="average_angle_length"/>
              <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
              <prop v="MM" k="average_angle_unit"/>
              <prop v="0" k="hash_angle"/>
              <prop v="1.3" k="hash_length"/>
              <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
              <prop v="MM" k="hash_length_unit"/>
              <prop v="1.5" k="interval"/>
              <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
              <prop v="MM" k="interval_unit"/>
              <prop v="0.7" k="offset"/>
              <prop v="0" k="offset_along_line"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
              <prop v="MM" k="offset_along_line_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="interval" k="placement"/>
              <prop v="0" k="ring_filter"/>
              <prop v="1" k="rotate"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <symbol alpha="1" name="@@2@0@0" type="line" force_rhr="0" clip_to_extent="1">
                <layer enabled="1" pass="0" locked="0" class="SimpleLine">
                  <prop v="flat" k="capstyle"/>
                  <prop v="5;2" k="customdash"/>
                  <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
                  <prop v="MM" k="customdash_unit"/>
                  <prop v="0" k="draw_inside_polygon"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="255,137,0,255" k="line_color"/>
                  <prop v="solid" k="line_style"/>
                  <prop v="0.28" k="line_width"/>
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
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol alpha="1" name="3" type="line" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" pass="0" locked="0" class="GeometryGenerator">
          <prop v="Line" k="SymbolType"/>
          <prop v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection(simplify_vw($geometry, @escala/10),  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" name="@3@0" type="line" force_rhr="0" clip_to_extent="1">
            <layer enabled="1" pass="0" locked="0" class="HashLine">
              <prop v="4" k="average_angle_length"/>
              <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
              <prop v="MM" k="average_angle_unit"/>
              <prop v="0" k="hash_angle"/>
              <prop v="1.3" k="hash_length"/>
              <prop v="3x:0,0,0,0,0,0" k="hash_length_map_unit_scale"/>
              <prop v="MM" k="hash_length_unit"/>
              <prop v="1.5" k="interval"/>
              <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
              <prop v="MM" k="interval_unit"/>
              <prop v="0.7" k="offset"/>
              <prop v="0" k="offset_along_line"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
              <prop v="MM" k="offset_along_line_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="interval" k="placement"/>
              <prop v="0" k="ring_filter"/>
              <prop v="1" k="rotate"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
              <symbol alpha="1" name="@@3@0@0" type="line" force_rhr="0" clip_to_extent="1">
                <layer enabled="1" pass="0" locked="0" class="SimpleLine">
                  <prop v="flat" k="capstyle"/>
                  <prop v="5;2" k="customdash"/>
                  <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
                  <prop v="MM" k="customdash_unit"/>
                  <prop v="0" k="draw_inside_polygon"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="255,137,0,255" k="line_color"/>
                  <prop v="solid" k="line_style"/>
                  <prop v="0.48" k="line_width"/>
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
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontSize="2.5" isExpression="0" fontFamily="Arial" fieldName="cota" fontWordSpacing="0" blendMode="0" useSubstitutions="0" textColor="175,108,73,255" fontUnderline="0" fontSizeUnit="MM" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="50" previewBkgrdColor="255,255,255,255" textOpacity="1" multilineHeight="1" namedStyle="Normal" fontStrikeout="0" fontCapitals="0">
        <text-buffer bufferSize="0.4" bufferDraw="0" bufferColor="0,0,0,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSizeUnits="MM" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="0">
          <effect enabled="0" type="effectStack">
            <effect type="dropShadow">
              <prop v="13" k="blend_mode"/>
              <prop v="2.645" k="blur_level"/>
              <prop v="MM" k="blur_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="2" k="draw_mode"/>
              <prop v="0" k="enabled"/>
              <prop v="135" k="offset_angle"/>
              <prop v="2" k="offset_distance"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
              <prop v="1" k="opacity"/>
            </effect>
            <effect type="outerGlow">
              <prop v="0" k="blend_mode"/>
              <prop v="2.645" k="blur_level"/>
              <prop v="MM" k="blur_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
              <prop v="0,0,255,255" k="color1"/>
              <prop v="0,255,0,255" k="color2"/>
              <prop v="0" k="color_type"/>
              <prop v="0" k="discrete"/>
              <prop v="2" k="draw_mode"/>
              <prop v="0" k="enabled"/>
              <prop v="0.5" k="opacity"/>
              <prop v="gradient" k="rampType"/>
              <prop v="255,255,255,255" k="single_color"/>
              <prop v="2" k="spread"/>
              <prop v="MM" k="spread_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
            </effect>
            <effect type="blur">
              <prop v="0" k="blend_mode"/>
              <prop v="5" k="blur_level"/>
              <prop v="1" k="blur_method"/>
              <prop v="Pixel" k="blur_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
              <prop v="2" k="draw_mode"/>
              <prop v="1" k="enabled"/>
              <prop v="1" k="opacity"/>
            </effect>
            <effect type="innerShadow">
              <prop v="13" k="blend_mode"/>
              <prop v="2.645" k="blur_level"/>
              <prop v="MM" k="blur_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="2" k="draw_mode"/>
              <prop v="0" k="enabled"/>
              <prop v="135" k="offset_angle"/>
              <prop v="2" k="offset_distance"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
              <prop v="1" k="opacity"/>
            </effect>
            <effect type="innerGlow">
              <prop v="0" k="blend_mode"/>
              <prop v="2.645" k="blur_level"/>
              <prop v="MM" k="blur_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
              <prop v="0,0,255,255" k="color1"/>
              <prop v="0,255,0,255" k="color2"/>
              <prop v="0" k="color_type"/>
              <prop v="0" k="discrete"/>
              <prop v="2" k="draw_mode"/>
              <prop v="0" k="enabled"/>
              <prop v="0.5" k="opacity"/>
              <prop v="gradient" k="rampType"/>
              <prop v="255,255,255,255" k="single_color"/>
              <prop v="2" k="spread"/>
              <prop v="MM" k="spread_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
            </effect>
          </effect>
        </text-buffer>
        <text-mask maskOpacity="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="1" maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_14f1cc29_ff9b_4ba5_934e_d7c2af281aaa,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,1;elemnat_curva_nivel_l_14f1cc29_ff9b_4ba5_934e_d7c2af281aaa,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,0;elemnat_curva_nivel_l_14f1cc29_ff9b_4ba5_934e_d7c2af281aaa,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0,1;elemnat_curva_nivel_l_14f1cc29_ff9b_4ba5_934e_d7c2af281aaa,{cf0c84ff-f08d-4d3f-b1ed-19c0859dd30e},0;elemnat_curva_nivel_l_14f1cc29_ff9b_4ba5_934e_d7c2af281aaa,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0;elemnat_curva_nivel_l_14f1cc29_ff9b_4ba5_934e_d7c2af281aaa,{8807404b-db9d-4abe-8eb2-f606cc4624fa},0,0,0" maskJoinStyle="128" maskSizeUnits="MM"/>
        <background shapeRadiiY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeBorderWidth="0" shapeDraw="0" shapeSizeX="0" shapeOffsetY="0" shapeSizeUnit="MM" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeRadiiX="0" shapeRotationType="0" shapeRadiiUnit="MM" shapeSizeType="0" shapeOffsetUnit="MM" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0">
          <symbol alpha="1" name="markerSymbol" type="marker" force_rhr="0" clip_to_extent="1">
            <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
              <prop v="0" k="angle"/>
              <prop v="190,178,151,255" k="color"/>
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
        <shadow shadowScale="100" shadowRadius="1.5" shadowRadiusUnit="MM" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetDist="1" shadowBlendMode="6" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowOpacity="0.7"/>
        <dd_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format autoWrapLength="0" formatNumbers="0" reverseDirectionSymbol="0" plussign="0" wrapChar="" multilineAlign="4294967295" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" addDirectionSymbol="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
      <placement quadOffset="4" distUnits="MM" yOffset="0" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" placementFlags="9" maxCurvedCharAngleOut="-25" overrunDistance="0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection(simplify_vw($geometry, @escala/10),  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )" repeatDistance="150" repeatDistanceUnits="MM" maxCurvedCharAngleIn="25" dist="0" offsetType="0" centroidInside="0" layerType="LineGeometry" xOffset="0" overrunDistanceUnit="MM" geometryGeneratorType="LineGeometry" fitInPolygonOnly="0" geometryGeneratorEnabled="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetUnits="MM" preserveRotation="1" distMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="2" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
      <rendering labelPerPart="0" obstacleFactor="1" scaleVisibility="0" displayAll="0" mergeLines="1" fontMaxPixelSize="10000" upsidedownLabels="0" drawLabels="1" maxNumLabels="2000" limitNumLabels="0" obstacleType="0" scaleMax="0" minFeatureSize="15" scaleMin="0" zIndex="0" fontLimitPixelSize="0" obstacle="0" fontMinPixelSize="3"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" name="name" type="QString"/>
          <Option name="properties" type="Map">
            <Option name="Show" type="Map">
              <Option value="true" name="active" type="bool"/>
              <Option value="&quot;cota&quot;% (@escala*0.4*5) = 0" name="expression" type="QString"/>
              <Option value="3" name="type" type="int"/>
            </Option>
          </Option>
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
          <Option value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot;>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
    <field name="cota">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="indice">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="Map">
              <Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
              <Option value="3" name="Auxiliar (3)" type="QString"/>
              <Option value="1" name="Mestra (1)" type="QString"/>
              <Option value="2" name="Normal (2)" type="QString"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="depressao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option value="9999" name="A SER PREENCHIDO (9999)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="2" name="Não (2)" type="QString"/>
              </Option>
              <Option type="Map">
                <Option value="1" name="Sim (1)" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="observacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="data_modificacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="controle_uuid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="usuario_criacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="usuario_atualizacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="insumo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="data_insumo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="cota" index="1" name=""/>
    <alias field="indice" index="2" name=""/>
    <alias field="depressao" index="3" name=""/>
    <alias field="observacao" index="4" name=""/>
    <alias field="data_modificacao" index="5" name=""/>
    <alias field="controle_uuid" index="6" name=""/>
    <alias field="usuario_criacao" index="7" name=""/>
    <alias field="usuario_atualizacao" index="8" name=""/>
    <alias field="insumo" index="9" name=""/>
    <alias field="data_insumo" index="10" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="cota" expression=""/>
    <default applyOnUpdate="0" field="indice" expression=""/>
    <default applyOnUpdate="0" field="depressao" expression=""/>
    <default applyOnUpdate="0" field="observacao" expression=""/>
    <default applyOnUpdate="0" field="data_modificacao" expression=""/>
    <default applyOnUpdate="0" field="controle_uuid" expression=""/>
    <default applyOnUpdate="0" field="usuario_criacao" expression=""/>
    <default applyOnUpdate="0" field="usuario_atualizacao" expression=""/>
    <default applyOnUpdate="0" field="insumo" expression=""/>
    <default applyOnUpdate="0" field="data_insumo" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" field="id" notnull_strength="1" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" field="cota" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" field="indice" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" field="depressao" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" field="observacao" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" field="data_modificacao" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" field="controle_uuid" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" field="usuario_criacao" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" field="usuario_atualizacao" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" field="insumo" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" field="data_insumo" notnull_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="cota" exp=""/>
    <constraint desc="" field="indice" exp=""/>
    <constraint desc="" field="depressao" exp=""/>
    <constraint desc="" field="observacao" exp=""/>
    <constraint desc="" field="data_modificacao" exp=""/>
    <constraint desc="" field="controle_uuid" exp=""/>
    <constraint desc="" field="usuario_criacao" exp=""/>
    <constraint desc="" field="usuario_atualizacao" exp=""/>
    <constraint desc="" field="insumo" exp=""/>
    <constraint desc="" field="data_insumo" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="controle_id" editable="1"/>
    <field name="controle_uuid" editable="1"/>
    <field name="cota" editable="1"/>
    <field name="data_insumo" editable="1"/>
    <field name="data_modificacao" editable="1"/>
    <field name="depressao" editable="1"/>
    <field name="id" editable="1"/>
    <field name="indice" editable="1"/>
    <field name="insumo" editable="1"/>
    <field name="lenght_otf" editable="0"/>
    <field name="observacao" editable="1"/>
    <field name="usuario_atualizacao" editable="1"/>
    <field name="usuario_criacao" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="controle_id"/>
    <field labelOnTop="0" name="controle_uuid"/>
    <field labelOnTop="0" name="cota"/>
    <field labelOnTop="0" name="data_insumo"/>
    <field labelOnTop="0" name="data_modificacao"/>
    <field labelOnTop="0" name="depressao"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="indice"/>
    <field labelOnTop="0" name="insumo"/>
    <field labelOnTop="0" name="lenght_otf"/>
    <field labelOnTop="0" name="observacao"/>
    <field labelOnTop="0" name="usuario_atualizacao"/>
    <field labelOnTop="0" name="usuario_criacao"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id</previewExpression>
  <layerGeometryType>1</layerGeometryType>
</qgis>
