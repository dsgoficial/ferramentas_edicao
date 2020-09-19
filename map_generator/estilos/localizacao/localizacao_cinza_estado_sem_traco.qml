<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="0" styleCategories="LayerConfiguration|Symbology|Labeling|Fields|Forms" readOnly="0" version="3.12.2-București">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" type="RuleRenderer" forceraster="0" symbollevels="0">
    <rules key="{7ebe951d-96fe-46ef-ad1f-109532aa742a}">
      <rule key="{34f67a5b-fd44-494a-8205-c7c602d3221b}" symbol="0"/>
    </rules>
    <symbols>
      <symbol alpha="1" force_rhr="0" type="fill" clip_to_extent="1" name="0">
        <layer enabled="1" pass="0" locked="0" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="204,204,204,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
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
    <alias field="CD_MUN" index="0" name=""/>
    <alias field="NM_MUN" index="1" name=""/>
    <alias field="UF" index="2" name=""/>
    <alias field="AREA_KM2" index="3" name=""/>
    <alias field="REGIAO" index="4" name=""/>
    <alias field="nome" index="5" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="CD_MUN" expression="" applyOnUpdate="0"/>
    <default field="NM_MUN" expression="" applyOnUpdate="0"/>
    <default field="UF" expression="" applyOnUpdate="0"/>
    <default field="AREA_KM2" expression="" applyOnUpdate="0"/>
    <default field="REGIAO" expression="" applyOnUpdate="0"/>
    <default field="nome" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="CD_MUN" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="NM_MUN" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="UF" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="AREA_KM2" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="REGIAO" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="nome" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
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
    <field editable="1" name="AREA_KM2"/>
    <field editable="1" name="CD_MUN"/>
    <field editable="1" name="NM_MUN"/>
    <field editable="1" name="REGIAO"/>
    <field editable="1" name="UF"/>
    <field editable="1" name="nome"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="AREA_KM2"/>
    <field labelOnTop="0" name="CD_MUN"/>
    <field labelOnTop="0" name="NM_MUN"/>
    <field labelOnTop="0" name="REGIAO"/>
    <field labelOnTop="0" name="UF"/>
    <field labelOnTop="0" name="nome"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>nome</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
