<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" readOnly="0" version="3.12.2-București" styleCategories="LayerConfiguration|Symbology|Labeling|Fields|Forms">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" enableorderby="0" forceraster="0" symbollevels="0">
    <symbols>
      <symbol type="fill" alpha="1" clip_to_extent="1" name="0" force_rhr="0">
        <layer class="GeometryGenerator" locked="0" enabled="1" pass="0">
          <prop k="SymbolType" v="Fill"/>
          <prop k="geometryModifier" v="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura_carta', 'mi', @mi)),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )&#xd;&#xa;"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="fill" alpha="1" clip_to_extent="1" name="@0@0" force_rhr="0">
            <layer class="SimpleFill" locked="0" enabled="1" pass="0">
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="255,255,255,255"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_style" v="no"/>
              <prop k="outline_width" v="0.26"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="style" v="solid"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontWordSpacing="0" fontUnderline="0" fontKerning="1" namedStyle="Normal" fontCapitals="1" isExpression="0" multilineHeight="1" fontSize="4" textOrientation="horizontal" fieldName="nome" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="0,0,0,255" fontLetterSpacing="0" textOpacity="1" fontItalic="0" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontStrikeout="0" fontFamily="Arial" blendMode="0" fontWeight="50" fontSizeUnit="MM">
        <text-buffer bufferJoinStyle="128" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
        <text-mask maskEnabled="0" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskedSymbolLayers="" maskSize="1.5" maskSizeUnits="MM" maskOpacity="1"/>
        <background shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeType="0" shapeRotation="0" shapeOffsetUnit="MM" shapeJoinStyle="64" shapeBorderWidth="0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBlendMode="0" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeType="0" shapeRotationType="0" shapeSVGFile="" shapeOffsetY="0" shapeSizeX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeRadiiY="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
          <symbol type="marker" alpha="1" clip_to_extent="1" name="markerSymbol" force_rhr="0">
            <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
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
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100" shadowBlendMode="6" shadowOpacity="0.7" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowOffsetDist="1"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" autoWrapLength="18" addDirectionSymbol="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" wrapChar="" rightDirectionSymbol=">" formatNumbers="0" multilineAlign="1" plussign="0"/>
      <placement dist="0" overrunDistance="0" preserveRotation="1" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" priority="9" repeatDistance="0" distUnits="MM" xOffset="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="1" geometryGeneratorType="PolygonGeometry" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa; )&#xd;&#xa;" offsetUnits="MM" offsetType="0" rotationAngle="0" placementFlags="10" quadOffset="4" layerType="PolygonGeometry" centroidWhole="0" repeatDistanceUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" placement="0" fitInPolygonOnly="1" geometryGeneratorEnabled="1"/>
      <rendering fontMinPixelSize="3" fontMaxPixelSize="10000" scaleVisibility="0" zIndex="0" labelPerPart="0" scaleMax="0" drawLabels="1" fontLimitPixelSize="0" obstacle="0" obstacleType="1" limitNumLabels="0" minFeatureSize="0" obstacleFactor="1" displayAll="0" upsidedownLabels="0" mergeLines="0" maxNumLabels="2000" scaleMin="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option type="Map" name="properties">
            <Option type="Map" name="Show">
              <Option type="bool" value="true" name="active"/>
              <Option type="QString" value="intersects($geometry,  geometry(get_feature('auxiliar_moldura', 'id', '1')))" name="expression"/>
              <Option type="int" value="3" name="type"/>
            </Option>
          </Option>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
          <Option type="bool" value="false" name="drawToAllParts"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="&lt;symbol type=&quot;line&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
    <field name="tipo">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="7" name="Distrito (7)"/>
              <Option type="QString" value="2" name="Limite Estadual (2)"/>
              <Option type="QString" value="1" name="Limite Internacional (1)"/>
              <Option type="QString" value="3" name="Limite Municipal (3)"/>
              <Option type="QString" value="6" name="Municipio (6)"/>
              <Option type="QString" value="4" name="País (4)"/>
              <Option type="QString" value="9" name="Região administrativa (9)"/>
              <Option type="QString" value="8" name="Sub distrito (8)"/>
              <Option type="QString" value="5" name="Unidade federacao (5)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="tipo_delimitacao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="2" name="Contorno massa dágua (2)"/>
              <Option type="QString" value="5" name="Costa visível da carta (5)"/>
              <Option type="QString" value="3" name="Cumeada (3)"/>
              <Option type="QString" value="7" name="Ferrovia (7)"/>
              <Option type="QString" value="4" name="Linha seca (4)"/>
              <Option type="QString" value="9" name="Massa dágua (9)"/>
              <Option type="QString" value="97" name="Não aplicável (97)"/>
              <Option type="QString" value="96" name="Não identificado (96)"/>
              <Option type="QString" value="6" name="Rodovia (6)"/>
              <Option type="QString" value="8" name="Trecho de drenagem (8)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="geometria_aproximada">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="2" name="Não (2)"/>
              <Option type="QString" value="1" name="Sim (1)"/>
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
    <field name="area_otf">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="nome" index="1" name=""/>
    <alias field="tipo" index="2" name=""/>
    <alias field="tipo_delimitacao" index="3" name=""/>
    <alias field="geometria_aproximada" index="4" name=""/>
    <alias field="observacao" index="5" name=""/>
    <alias field="data_modificacao" index="6" name=""/>
    <alias field="controle_uuid" index="7" name=""/>
    <alias field="usuario_criacao" index="8" name=""/>
    <alias field="usuario_atualizacao" index="9" name=""/>
    <alias field="insumo" index="10" name=""/>
    <alias field="data_insumo" index="11" name=""/>
    <alias field="area_otf" index="12" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="nome" applyOnUpdate="0" expression=""/>
    <default field="tipo" applyOnUpdate="0" expression=""/>
    <default field="tipo_delimitacao" applyOnUpdate="0" expression=""/>
    <default field="geometria_aproximada" applyOnUpdate="0" expression=""/>
    <default field="observacao" applyOnUpdate="0" expression=""/>
    <default field="data_modificacao" applyOnUpdate="0" expression=""/>
    <default field="controle_uuid" applyOnUpdate="0" expression=""/>
    <default field="usuario_criacao" applyOnUpdate="0" expression=""/>
    <default field="usuario_atualizacao" applyOnUpdate="0" expression=""/>
    <default field="insumo" applyOnUpdate="0" expression=""/>
    <default field="data_insumo" applyOnUpdate="0" expression=""/>
    <default field="area_otf" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint constraints="3" field="id" unique_strength="1" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" field="nome" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="1" field="tipo" unique_strength="0" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="1" field="tipo_delimitacao" unique_strength="0" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="1" field="geometria_aproximada" unique_strength="0" exp_strength="0" notnull_strength="1"/>
    <constraint constraints="0" field="observacao" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="data_modificacao" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="controle_uuid" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="usuario_criacao" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="usuario_atualizacao" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="insumo" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="data_insumo" unique_strength="0" exp_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="area_otf" unique_strength="0" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="nome" exp=""/>
    <constraint desc="" field="tipo" exp=""/>
    <constraint desc="" field="tipo_delimitacao" exp=""/>
    <constraint desc="" field="geometria_aproximada" exp=""/>
    <constraint desc="" field="observacao" exp=""/>
    <constraint desc="" field="data_modificacao" exp=""/>
    <constraint desc="" field="controle_uuid" exp=""/>
    <constraint desc="" field="usuario_criacao" exp=""/>
    <constraint desc="" field="usuario_atualizacao" exp=""/>
    <constraint desc="" field="insumo" exp=""/>
    <constraint desc="" field="data_insumo" exp=""/>
    <constraint desc="" field="area_otf" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field type="6" precision="0" length="0" comment="" subType="0" typeName="" expression="$area" name="area_otf"/>
  </expressionfields>
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
    <field editable="0" name="area_otf"/>
    <field editable="1" name="controle_uuid"/>
    <field editable="1" name="data_insumo"/>
    <field editable="1" name="data_modificacao"/>
    <field editable="1" name="geometria_aproximada"/>
    <field editable="1" name="id"/>
    <field editable="1" name="insumo"/>
    <field editable="1" name="nome"/>
    <field editable="1" name="observacao"/>
    <field editable="1" name="tipo"/>
    <field editable="1" name="tipo_delimitacao"/>
    <field editable="1" name="usuario_atualizacao"/>
    <field editable="1" name="usuario_criacao"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="area_otf"/>
    <field labelOnTop="0" name="controle_uuid"/>
    <field labelOnTop="0" name="data_insumo"/>
    <field labelOnTop="0" name="data_modificacao"/>
    <field labelOnTop="0" name="geometria_aproximada"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="insumo"/>
    <field labelOnTop="0" name="nome"/>
    <field labelOnTop="0" name="observacao"/>
    <field labelOnTop="0" name="tipo"/>
    <field labelOnTop="0" name="tipo_delimitacao"/>
    <field labelOnTop="0" name="usuario_atualizacao"/>
    <field labelOnTop="0" name="usuario_criacao"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>nome</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
