<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.38.2-Grenoble" labelsEnabled="1">
  <renderer-v2 symbollevels="0" type="RuleRenderer" referencescale="-1" enableorderby="0" forceraster="0">
    <rules key="{0aad622c-8f19-43fb-8e83-3e6f52a52085}">
      <rule filter="visivel = 1" key="{aa90cfb3-a688-4aea-ade8-b3113e6d38de}">
        <rule filter=" &quot;tipo&quot; =  9 and situacao_fisica in (0,3)" label="A10902A" key="{0f1a01a9-abe4-4642-87a2-242e2f82ee33}" symbol="0"/>
        <rule filter=" &quot;tipo&quot; =  9 and situacao_fisica not in (0,3)" label="A10902B" key="{4c26b102-89b4-4d4d-9e40-b2a22b7b1a2b}" symbol="1"/>
        <rule filter=" &quot;tipo&quot; = 10" label="A10902C" key="{558c4ca1-6b5a-47c0-a05d-c757dfd243ed}" symbol="2"/>
        <rule filter="ELSE" key="{4959dadb-cdbe-4096-949e-b6494b276982}" symbol="3"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{c6c1b205-1c96-4b01-912c-8d5899dc1cec}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="56,70,157,255,rgb:0.2196078431372549,0.27450980392156865,0.61568627450980395,1" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="56,70,157,255,rgb:0.2196078431372549,0.27450980392156865,0.61568627450980395,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.1" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-100_56-70-157_#38469D')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-100_56-70-157_#38469D')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{146deb57-afa9-4e20-91f0-6816fb9af399}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="121,135,200,255,rgb:0.47450980392156861,0.52941176470588236,0.78431372549019607,1" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="56,70,157,255,rgb:0.2196078431372549,0.27450980392156865,0.61568627450980395,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.1" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-42_121-135-200_#7987C8')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-100_56-70-157_#38469D')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="2" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{bacdf694-4b0d-4fe5-b47c-e251cdb80d35}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="192,199,233,255,rgb:0.75294117647058822,0.7803921568627451,0.9137254901960784,1" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="56,70,157,255,rgb:0.2196078431372549,0.27450980392156865,0.61568627450980395,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.1" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="fillColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-12_192-199-233_#C0C7E9')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="outlineColor">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-100_56-70-157_#38469D')" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="3" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{d076867c-beb5-4b28-886f-ac7c5c50f835}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="255,5,1,255,rgb:1,0.0196078431372549,0.00392156862745098,1" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="82,82,82,255,rgb:0.32156862745098042,0.32156862745098042,0.32156862745098042,1" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
  </selection>
  <labeling type="rule-based">
    <rules key="{f87d731d-67f3-470d-b1de-415c5632cece}">
      <rule filter="visivel = 1" key="{713e7554-b0bf-43b3-aa5a-9b82b2e67a0c}" description="Pista de Pouso">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" fontKerning="1" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedBold="0" multilineHeightUnit="Percentage" tabStopDistance="80" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontItalic="0" namedStyle="Condensed" fontStrikeout="0" isExpression="0" useSubstitutions="0" textOrientation="horizontal" blendMode="0" textOpacity="1" legendString="Aa" tabStopDistanceUnit="Point" textColor="89,94,168,255,rgb:0.34901960784313724,0.36862745098039218,0.6588235294117647,1" fontSize="7" fontFamily="Noto Sans" fieldName="texto_edicao" fontWordSpacing="0" fontSizeUnit="Point" fontWeight="50" multilineHeight="0.80000000000000004" capitalization="0" forcedItalic="0" allowHtml="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferBlendMode="0" bufferDraw="0"/>
            <text-mask maskEnabled="1" maskedSymbolLayers="elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;elemnat_curva_nivel_l_820c502f_2e30_423a_aecb_beaef790f427;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;infra_ferrovia_l_c9275380_69e9_488a_937a_0724e3c72e2f;;elemnat_terreno_sujeito_inundacao_a_26e4a12e_ef3d_4838_9f8c_d8e991278f7a;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;infra_via_deslocamento_l_ee3c8486_e8d3_448a_a7f8_a25293a256bf;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;llp_delimitacao_fisica_l_177c8fc9_d8bf_4be7_a674_db951e78749a;;infra_vala_l_7ede732b_2965_4761_bea9_f09bf9259c66;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;elemnat_trecho_drenagem_l_63b3ff30_45c6_401e_a25a_04acc4670057;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;cobter_vegetacao_a_e45a0d0b_0664_46c9_a89b_8978221334a0;;infra_elemento_energia_l_4368b0e4_d9fd_4646_a037_ce18e441e1cc;" maskSize="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskSizeUnits="MM" maskSize2="0.20000000000000001"/>
            <background shapeSizeUnit="MM" shapeBorderWidth="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeRadiiY="0" shapeRadiiX="0" shapeRotation="0" shapeOpacity="1" shapeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeSVGFile="">
              <symbol force_rhr="0" frame_rate="10" type="marker" is_animated="0" clip_to_extent="1" name="markerSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="231,113,72,255,rgb:0.90588235294117647,0.44313725490196076,0.28235294117647058,1" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="0,0,0,255,rgb:0,0,0,1" name="outline_color"/>
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
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" frame_rate="10" type="fill" is_animated="0" clip_to_extent="1" name="fillSymbol" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" id="" locked="0" class="SimpleFill">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255,rgb:1,1,1,1" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
                  </Option>
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
            <shadow shadowOffsetAngle="135" shadowBlendMode="6" shadowOffsetGlobal="1" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowUnder="0" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="|" useMaxLineLengthForAutoWrap="1" multilineAlign="3" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" rightDirectionSymbol=">" plussign="0"/>
          <placement geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" lineAnchorPercent="0.5" centroidWhole="0" geometryGeneratorType="PolygonGeometry" offsetUnits="MM" lineAnchorClipping="0" maxCurvedCharAngleIn="25" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" repeatDistanceUnits="MM" offsetType="0" allowDegraded="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" distUnits="MM" overlapHandling="PreventOverlap" maximumDistanceUnit="MM" xOffset="0.5" dist="0" rotationAngle="0" layerType="PolygonGeometry" maximumDistance="0" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" repeatDistance="0" quadOffset="2" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" prioritization="PreferCloser" fitInPolygonOnly="0" polygonPlacementFlags="3" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" geometryGeneratorEnabled="1" lineAnchorTextPoint="CenterOfText" placementFlags="10" centroidInside="0" placement="4" overrunDistance="0" yOffset="-0.5" overrunDistanceUnit="MM" distMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering scaleVisibility="0" fontMaxPixelSize="10000" scaleMax="0" labelPerPart="0" zIndex="0" unplacedVisibility="0" obstacleFactor="1" fontMinPixelSize="3" minFeatureSize="0" obstacleType="1" scaleMin="0" obstacle="1" upsidedownLabels="0" fontLimitPixelSize="0" maxNumLabels="2000" drawLabels="1" mergeLines="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="AlwaysShow">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="project_color('azul72-100_56-70-157_#38469D')" name="expression"/>
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
                  <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects(centroid($geometry),  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
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
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; type=&quot;line&quot; is_animated=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; id=&quot;{f46eef7c-a03f-4bed-afdb-3993d14f6b62}&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
  <layerGeometryType>2</layerGeometryType>
</qgis>
