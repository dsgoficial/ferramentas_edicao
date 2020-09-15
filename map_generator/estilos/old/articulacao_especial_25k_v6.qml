<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling|Fields|Forms" version="3.12.2-București" labelsEnabled="1">
  <renderer-v2 enableorderby="0" type="singleSymbol" forceraster="0" symbollevels="0">
    <symbols>
      <symbol name="0" alpha="1" type="fill" clip_to_extent="1" force_rhr="0">
        <layer class="SimpleLine" locked="0" pass="0" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
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
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{bdad780b-c6b9-4aba-b8cd-7f422fb6035e}">
      <rule key="{456b64c1-edf0-413b-99a9-694e2ca7810f}">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" fontFamily="Arial" fontItalic="0" blendMode="0" fontWordSpacing="0" isExpression="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOpacity="1" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontCapitals="0" fontLetterSpacing="0" fontStrikeout="0" fontUnderline="0" multilineHeight="1" textColor="0,0,0,255" fontKerning="1" textOrientation="horizontal" fontSize="6" namedStyle="Normal" fontWeight="50" fieldName="if(mi is NULL, mi, 'MI-' +mi)">
            <text-buffer bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferNoFill="1" bufferJoinStyle="128" bufferSize="1"/>
            <text-mask maskEnabled="0" maskOpacity="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSize="0"/>
            <background shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeRotation="0" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeType="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSVGFile="" shapeOpacity="1" shapeBorderWidth="0" shapeSizeY="0" shapeJoinStyle="64" shapeSizeX="0" shapeOffsetX="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255">
              <symbol name="markerSymbol" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
                <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="232,113,141,255"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowUnder="0" shadowDraw="0" shadowColor="0,0,0,255" shadowOpacity="0.7" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowScale="100" shadowBlendMode="6" shadowRadius="1.5" shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format useMaxLineLengthForAutoWrap="1" autoWrapLength="0" multilineAlign="4294967295" plussign="0" wrapChar="" formatNumbers="0" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" addDirectionSymbol="0" rightDirectionSymbol=">"/>
          <placement placementFlags="10" offsetType="0" xOffset="0" geometryGeneratorType="PointGeometry" dist="0" repeatDistanceUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" distUnits="MM" quadOffset="4" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" layerType="PolygonGeometry" overrunDistance="0" geometryGeneratorEnabled="0" offsetUnits="MM" centroidInside="1" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" placement="1" yOffset="-3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="1" distMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" maxCurvedCharAngleIn="25" geometryGenerator=""/>
          <rendering obstacle="0" mergeLines="0" maxNumLabels="2000" drawLabels="1" fontMinPixelSize="3" fontLimitPixelSize="0" upsidedownLabels="0" zIndex="0" fontMaxPixelSize="10000" displayAll="1" obstacleFactor="1" scaleMin="0" minFeatureSize="0" obstacleType="0" scaleVisibility="0" scaleMax="0" labelPerPart="0" limitNumLabels="0"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{f2008266-b5fa-4f71-9dde-f5447580c32e}">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" fontFamily="Arial" fontItalic="0" blendMode="0" fontWordSpacing="0" isExpression="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOpacity="1" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontCapitals="0" fontLetterSpacing="0" fontStrikeout="0" fontUnderline="0" multilineHeight="1" textColor="0,0,0,255" fontKerning="1" textOrientation="horizontal" fontSize="6" namedStyle="Normal" fontWeight="50" fieldName="inom">
            <text-buffer bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferNoFill="1" bufferJoinStyle="128" bufferSize="1"/>
            <text-mask maskEnabled="0" maskOpacity="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSize="0"/>
            <background shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeRotation="0" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeType="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSVGFile="" shapeOpacity="1" shapeBorderWidth="0" shapeSizeY="0" shapeJoinStyle="64" shapeSizeX="0" shapeOffsetX="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255">
              <symbol name="markerSymbol" alpha="1" type="marker" clip_to_extent="1" force_rhr="0">
                <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="225,89,137,255"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowUnder="0" shadowDraw="0" shadowColor="0,0,0,255" shadowOpacity="0.7" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowScale="100" shadowBlendMode="6" shadowRadius="1.5" shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format useMaxLineLengthForAutoWrap="1" autoWrapLength="0" multilineAlign="4294967295" plussign="0" wrapChar="" formatNumbers="0" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" addDirectionSymbol="0" rightDirectionSymbol=">"/>
          <placement placementFlags="10" offsetType="0" xOffset="0" geometryGeneratorType="PointGeometry" dist="0" repeatDistanceUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" distUnits="MM" quadOffset="4" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" layerType="PolygonGeometry" overrunDistance="0" geometryGeneratorEnabled="0" offsetUnits="MM" centroidInside="1" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" placement="1" yOffset="3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="1" distMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" maxCurvedCharAngleIn="25" geometryGenerator=""/>
          <rendering obstacle="0" mergeLines="0" maxNumLabels="2000" drawLabels="1" fontMinPixelSize="3" fontLimitPixelSize="0" upsidedownLabels="0" zIndex="0" fontMaxPixelSize="10000" displayAll="1" obstacleFactor="1" scaleMin="0" minFeatureSize="0" obstacleType="0" scaleVisibility="0" scaleMax="0" labelPerPart="0" limitNumLabels="0"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
    <field name="nome">
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
    <field name="denominador_escala">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="epsg">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="id"/>
    <alias index="1" name="" field="nome"/>
    <alias index="2" name="" field="mi"/>
    <alias index="3" name="" field="inom"/>
    <alias index="4" name="" field="denominador_escala"/>
    <alias index="5" name="" field="epsg"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="nome" expression=""/>
    <default applyOnUpdate="0" field="mi" expression=""/>
    <default applyOnUpdate="0" field="inom" expression=""/>
    <default applyOnUpdate="0" field="denominador_escala" expression=""/>
    <default applyOnUpdate="0" field="epsg" expression=""/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" notnull_strength="1" field="id" unique_strength="1" constraints="3"/>
    <constraint exp_strength="0" notnull_strength="0" field="nome" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="mi" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="inom" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="1" field="denominador_escala" unique_strength="0" constraints="1"/>
    <constraint exp_strength="0" notnull_strength="1" field="epsg" unique_strength="0" constraints="1"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="nome" exp="" desc=""/>
    <constraint field="mi" exp="" desc=""/>
    <constraint field="inom" exp="" desc=""/>
    <constraint field="denominador_escala" exp="" desc=""/>
    <constraint field="epsg" exp="" desc=""/>
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
    <field name="denominador_escala" editable="1"/>
    <field name="epsg" editable="1"/>
    <field name="escala" editable="1"/>
    <field name="id" editable="1"/>
    <field name="inom" editable="1"/>
    <field name="mi" editable="1"/>
    <field name="nome" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="area_supri" labelOnTop="0"/>
    <field name="denominador_escala" labelOnTop="0"/>
    <field name="epsg" labelOnTop="0"/>
    <field name="escala" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="inom" labelOnTop="0"/>
    <field name="mi" labelOnTop="0"/>
    <field name="nome" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <layerGeometryType>2</layerGeometryType>
</qgis>
