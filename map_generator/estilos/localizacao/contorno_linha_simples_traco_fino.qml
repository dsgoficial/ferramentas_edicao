<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="LayerConfiguration|Symbology|Labeling|Fields|Forms" labelsEnabled="0" version="3.12.2-București" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" type="RuleRenderer" symbollevels="0">
    <rules key="{874d5e0f-f9f5-4326-ac86-1ce2f4199009}">
      <rule symbol="0" key="{12f86422-9e1c-4f1b-8742-fc06b33ed4d3}"/>
    </rules>
    <symbols>
      <symbol name="0" type="fill" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer class="SimpleLine" locked="0" enabled="1" pass="0">
          <prop v="square" k="capstyle"/>
          <prop v="6;0.8;1.6;0.8" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="35,35,35,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <fieldConfiguration>
    <field name="CD_MUN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NM_MUN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="UF">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AREA_KM2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="REGIAO">
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
    <alias name="" field="CD_MUN" index="0"/>
    <alias name="" field="NM_MUN" index="1"/>
    <alias name="" field="UF" index="2"/>
    <alias name="" field="AREA_KM2" index="3"/>
    <alias name="" field="REGIAO" index="4"/>
    <alias name="" field="nome" index="5"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="CD_MUN" applyOnUpdate="0" expression=""/>
    <default field="NM_MUN" applyOnUpdate="0" expression=""/>
    <default field="UF" applyOnUpdate="0" expression=""/>
    <default field="AREA_KM2" applyOnUpdate="0" expression=""/>
    <default field="REGIAO" applyOnUpdate="0" expression=""/>
    <default field="nome" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="CD_MUN"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="NM_MUN"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="UF"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="AREA_KM2"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="REGIAO"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="nome"/>
  </constraints>
  <constraintExpressions>
    <constraint field="CD_MUN" exp="" desc=""/>
    <constraint field="NM_MUN" exp="" desc=""/>
    <constraint field="UF" exp="" desc=""/>
    <constraint field="AREA_KM2" exp="" desc=""/>
    <constraint field="REGIAO" exp="" desc=""/>
    <constraint field="nome" exp="" desc=""/>
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
    <field name="AREA_KM2" editable="1"/>
    <field name="CD_MUN" editable="1"/>
    <field name="NM_MUN" editable="1"/>
    <field name="REGIAO" editable="1"/>
    <field name="UF" editable="1"/>
    <field name="nome" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="AREA_KM2" labelOnTop="0"/>
    <field name="CD_MUN" labelOnTop="0"/>
    <field name="NM_MUN" labelOnTop="0"/>
    <field name="REGIAO" labelOnTop="0"/>
    <field name="UF" labelOnTop="0"/>
    <field name="nome" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>nome</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
