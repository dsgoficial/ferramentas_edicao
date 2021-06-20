<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.18.3-Zürich" simplifyAlgorithm="0" styleCategories="AllStyleCategories" simplifyMaxScale="1" simplifyDrawingHints="0" readOnly="0" maxScale="0" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="1" simplifyLocal="1" minScale="100000000">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal durationUnit="min" startField="" endExpression="" endField="" startExpression="" fixedDuration="0" enabled="0" durationField="" accumulate="0" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" type="RuleRenderer" symbollevels="0" forceraster="0">
    <rules key="{15e09ec0-9841-4520-b07a-26e1ce1469e9}">
      <rule key="{dd502e66-043d-4cdc-b98a-e7b7d0ffe2eb}" filter=" &quot;visivel&quot; is true" label="Visível">
        <rule key="{e6cf65e7-25bb-4109-82d4-dd0343b1905c}" filter="&quot;tipo&quot; = 113" label="P20214B" symbol="0"/>
        <rule key="{b43d8b5b-f815-4724-aa2d-8bebaee72e1c}" filter="&quot;tipo&quot; = 109" label="P20214A" symbol="1"/>
        <rule description="Cisterna" key="{c4af3190-7d31-42d3-b752-8ac68caf7e14}" filter="&quot;tipo&quot; = 203" label="P10704B" symbol="2"/>
        <rule description="Galpão, armazém" key="{e43c7706-abe6-4a34-90d6-c55e68af051f}" filter="&quot;tipo&quot; in (108, 132)" label="P20214E" symbol="3"/>
        <rule key="{7b37d8b7-b32d-4d03-ad91-3bdc0762a7c7}" filter="ELSE" symbol="4"/>
      </rule>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="0,0,4,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.8" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,4,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.8"/>
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
      <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="0,0,4,0" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.15" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="1.25" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,4,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.15"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.25"/>
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
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="0,0,0,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.3" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.3"/>
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
      <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="2">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="0,160,223,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="square" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.8" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,160,223,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.8"/>
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
      <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="3">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="0,0,0,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="square" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.8" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.8"/>
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
      <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="4">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="219,30,42,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="diamond" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="128,17,25,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.4" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="4.4" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="219,30,42,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="128,17,25,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.4"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4.4"/>
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
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{1cdef49a-da00-4030-92b3-fed912fbf71c}">
      <rule description="Depósito" key="{7233554b-57b8-4e53-8803-2f3f0a0d75ea}" filter=" &quot;visivel&quot; is true">
        <settings calloutType="simple">
          <text-style fontStrikeout="0" textColor="0,0,0,255" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" fieldName="texto_edicao" capitalization="0" fontItalic="0" fontWordSpacing="0" fontFamily="Noto Sans" fontKerning="1" fontLetterSpacing="0" multilineHeight="0.8" textOpacity="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" namedStyle="Condensed" allowHtml="0" fontSize="6" textOrientation="horizontal" isExpression="0" fontSizeUnit="Point" fontWeight="50" blendMode="0">
            <text-buffer bufferJoinStyle="128" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferDraw="0" bufferSizeUnits="MM" bufferNoFill="1" bufferSize="1" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskSize="0.2" maskEnabled="1" maskedSymbolLayers="" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSizeUnits="MM"/>
            <background shapeRotationType="0" shapeBorderWidthUnit="MM" shapeOffsetY="0" shapeRotation="0" shapeRadiiUnit="MM" shapeDraw="0" shapeOffsetX="0" shapeRadiiX="0" shapeBorderWidth="0" shapeSizeX="0" shapeSizeType="0" shapeJoinStyle="64" shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeBlendMode="0" shapeSizeY="0" shapeType="0" shapeSVGFile="" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255">
              <symbol force_rhr="0" type="marker" alpha="1" clip_to_extent="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="231,113,72,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
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
                  <prop k="angle" v="0"/>
                  <prop k="color" v="231,113,72,255"/>
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
            <shadow shadowBlendMode="6" shadowOffsetUnit="MM" shadowDraw="0" shadowRadiusUnit="MM" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOpacity="0.7" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" reverseDirectionSymbol="0" plussign="0" formatNumbers="0" autoWrapLength="0" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" leftDirectionSymbol="&lt;" addDirectionSymbol="0" wrapChar="|"/>
          <placement placement="6" yOffset="-0.5" polygonPlacementFlags="2" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.5" layerType="PointGeometry" quadOffset="2" fitInPolygonOnly="0" placementFlags="10" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" centroidInside="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="with_variable(&#xd;&#xa; 'moldura',&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;THEN &#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xa;ELSE&#xd;&#xa;$geometry&#xd;&#xa;END&#xd;&#xa;)" dist="0" maxCurvedCharAngleOut="-25" repeatDistance="0" rotationAngle="0" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" offsetType="0" offsetUnits="MM" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceUnit="MM" lineAnchorType="0" geometryGeneratorEnabled="1" centroidWhole="0" lineAnchorPercent="0.5" geometryGeneratorType="PointGeometry" priority="5"/>
          <rendering labelPerPart="0" limitNumLabels="0" scaleVisibility="0" zIndex="0" obstacle="1" fontLimitPixelSize="0" upsidedownLabels="0" fontMinPixelSize="3" obstacleType="1" displayAll="1" drawLabels="1" fontMaxPixelSize="10000" scaleMin="0" scaleMax="0" minFeatureSize="0" obstacleFactor="1" maxNumLabels="2000" mergeLines="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
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
                  <Option type="QString" value="with_variable(&#xd;&#xa;&#xd;&#xa; 'moldura',&#xd;&#xa;&#xd;&#xa; geometry(get_feature('auxiliar_moldura', 'id', '1')),&#xd;&#xa;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xa;&#xd;&#xa;THEN &#xd;&#xa;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xa;&#xd;&#xa;ELSE&#xd;&#xa;&#xd;&#xa;true&#xd;&#xa;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;)" name="expression"/>
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
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;nome&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory height="15" diagramOrientation="Up" lineSizeScale="3x:0,0,0,0,0,0" enabled="0" labelPlacementMethod="XHeight" spacingUnit="MM" opacity="1" direction="0" barWidth="5" scaleBasedVisibility="0" lineSizeType="MM" sizeType="MM" spacing="5" penWidth="0" minScaleDenominator="0" width="15" minimumSize="0" penColor="#000000" penAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" showAxis="1" backgroundAlpha="255" maxScaleDenominator="1e+08" sizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" rotationOffset="270">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol force_rhr="0" type="line" alpha="1" clip_to_extent="1" name="">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
            <Option type="Map">
              <Option type="QString" value="0" name="align_dash_pattern"/>
              <Option type="QString" value="square" name="capstyle"/>
              <Option type="QString" value="5;2" name="customdash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
              <Option type="QString" value="MM" name="customdash_unit"/>
              <Option type="QString" value="0" name="dash_pattern_offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
              <Option type="QString" value="0" name="draw_inside_polygon"/>
              <Option type="QString" value="bevel" name="joinstyle"/>
              <Option type="QString" value="35,35,35,255" name="line_color"/>
              <Option type="QString" value="solid" name="line_style"/>
              <Option type="QString" value="0.26" name="line_width"/>
              <Option type="QString" value="MM" name="line_width_unit"/>
              <Option type="QString" value="0" name="offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="offset_unit"/>
              <Option type="QString" value="0" name="ring_filter"/>
              <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
              <Option type="QString" value="0" name="use_custom_dash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
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
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" obstacle="0" dist="0" priority="0" linePlacementFlags="18" zIndex="0" placement="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="nome">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tipo">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="202" name="Abast água - Caixa de água (202)"/>
              <Option type="QString" value="203" name="Abast água - Cisterna (203)"/>
              <Option type="QString" value="298" name="Abast água - Outros (298)"/>
              <Option type="QString" value="204" name="Abast água - Reservatório (204)"/>
              <Option type="QString" value="201" name="Abast água - Tanque de água (201)"/>
              <Option type="QString" value="132" name="Geral - Armazém (132)"/>
              <Option type="QString" value="112" name="Geral - Barracão industrial (112)"/>
              <Option type="QString" value="110" name="Geral - Composteira (110)"/>
              <Option type="QString" value="111" name="Geral - Depósito frigorífico (111)"/>
              <Option type="QString" value="108" name="Geral - Galpão (108)"/>
              <Option type="QString" value="198" name="Geral - Outros (198)"/>
              <Option type="QString" value="113" name="Geral - Reservatório (113)"/>
              <Option type="QString" value="109" name="Geral - Silo (109)"/>
              <Option type="QString" value="306" name="San - Aterro controlado (306)"/>
              <Option type="QString" value="305" name="San - Aterro sanitário (305)"/>
              <Option type="QString" value="304" name="San - Depósito de lixo (304)"/>
              <Option type="QString" value="398" name="San - Outros (398)"/>
              <Option type="QString" value="301" name="San - Tanque de saneamento (301)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tipo_exposicao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="4" name="Coberto (4)"/>
              <Option type="QString" value="5" name="Céu aberto (5)"/>
              <Option type="QString" value="0" name="Desconhecido (0)"/>
              <Option type="QString" value="3" name="Fechado (3)"/>
              <Option type="QString" value="97" name="Não aplicável (97)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="situacao_fisica">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="1" name="Abandonada (1)"/>
              <Option type="QString" value="3" name="Construída (3)"/>
              <Option type="QString" value="0" name="Desconhecida (0)"/>
              <Option type="QString" value="2" name="Destruída (2)"/>
              <Option type="QString" value="4" name="Em construção (4)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="material_construcao">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="1" name="Alvenaria (1)"/>
              <Option type="QString" value="2" name="Concreto (2)"/>
              <Option type="QString" value="0" name="Desconhecido (0)"/>
              <Option type="QString" value="5" name="Madeira (5)"/>
              <Option type="QString" value="3" name="Metal (3)"/>
              <Option type="QString" value="97" name="Não aplicável (97)"/>
              <Option type="QString" value="98" name="Outros (98)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="finalidade">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="Map" name="map">
              <Option type="QString" value="9999" name="A SER PREENCHIDO (9999)"/>
              <Option type="QString" value="8" name="Armazenamento (8)"/>
              <Option type="QString" value="0" name="Desconhecida (0)"/>
              <Option type="QString" value="4" name="Distribuição (4)"/>
              <Option type="QString" value="3" name="Recalque (3)"/>
              <Option type="QString" value="2" name="Tratamento (2)"/>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="observacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="data_modificacao">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="controle_uuid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="usuario_criacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="usuario_atualizacao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="insumo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="data_insumo">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="visivel">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="texto_edicao">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="carta_mini">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="label_x">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="label_y">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="justificativa_txt">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="simb_x">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="simb_y">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="simb_rot">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" name="" index="0"/>
    <alias field="nome" name="" index="1"/>
    <alias field="tipo" name="" index="2"/>
    <alias field="tipo_exposicao" name="" index="3"/>
    <alias field="situacao_fisica" name="" index="4"/>
    <alias field="material_construcao" name="" index="5"/>
    <alias field="finalidade" name="" index="6"/>
    <alias field="observacao" name="" index="7"/>
    <alias field="data_modificacao" name="" index="8"/>
    <alias field="controle_uuid" name="" index="9"/>
    <alias field="usuario_criacao" name="" index="10"/>
    <alias field="usuario_atualizacao" name="" index="11"/>
    <alias field="insumo" name="" index="12"/>
    <alias field="data_insumo" name="" index="13"/>
    <alias field="visivel" name="" index="14"/>
    <alias field="texto_edicao" name="" index="15"/>
    <alias field="carta_mini" name="" index="16"/>
    <alias field="label_x" name="" index="17"/>
    <alias field="label_y" name="" index="18"/>
    <alias field="justificativa_txt" name="" index="19"/>
    <alias field="simb_x" name="" index="20"/>
    <alias field="simb_y" name="" index="21"/>
    <alias field="simb_rot" name="" index="22"/>
  </aliases>
  <defaults>
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="nome" expression="" applyOnUpdate="0"/>
    <default field="tipo" expression="" applyOnUpdate="0"/>
    <default field="tipo_exposicao" expression="" applyOnUpdate="0"/>
    <default field="situacao_fisica" expression="" applyOnUpdate="0"/>
    <default field="material_construcao" expression="" applyOnUpdate="0"/>
    <default field="finalidade" expression="" applyOnUpdate="0"/>
    <default field="observacao" expression="" applyOnUpdate="0"/>
    <default field="data_modificacao" expression="" applyOnUpdate="0"/>
    <default field="controle_uuid" expression="" applyOnUpdate="0"/>
    <default field="usuario_criacao" expression="" applyOnUpdate="0"/>
    <default field="usuario_atualizacao" expression="" applyOnUpdate="0"/>
    <default field="insumo" expression="" applyOnUpdate="0"/>
    <default field="data_insumo" expression="" applyOnUpdate="0"/>
    <default field="visivel" expression="" applyOnUpdate="0"/>
    <default field="texto_edicao" expression="" applyOnUpdate="0"/>
    <default field="carta_mini" expression="" applyOnUpdate="0"/>
    <default field="label_x" expression="" applyOnUpdate="0"/>
    <default field="label_y" expression="" applyOnUpdate="0"/>
    <default field="justificativa_txt" expression="" applyOnUpdate="0"/>
    <default field="simb_x" expression="" applyOnUpdate="0"/>
    <default field="simb_y" expression="" applyOnUpdate="0"/>
    <default field="simb_rot" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" unique_strength="1" notnull_strength="1" constraints="3" exp_strength="0"/>
    <constraint field="nome" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="tipo" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="tipo_exposicao" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="situacao_fisica" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="material_construcao" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="finalidade" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="observacao" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="data_modificacao" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="controle_uuid" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="usuario_criacao" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="usuario_atualizacao" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="insumo" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="data_insumo" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="visivel" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="texto_edicao" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="carta_mini" unique_strength="0" notnull_strength="1" constraints="1" exp_strength="0"/>
    <constraint field="label_x" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="label_y" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="justificativa_txt" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="simb_x" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="simb_y" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="simb_rot" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="nome" exp="" desc=""/>
    <constraint field="tipo" exp="" desc=""/>
    <constraint field="tipo_exposicao" exp="" desc=""/>
    <constraint field="situacao_fisica" exp="" desc=""/>
    <constraint field="material_construcao" exp="" desc=""/>
    <constraint field="finalidade" exp="" desc=""/>
    <constraint field="observacao" exp="" desc=""/>
    <constraint field="data_modificacao" exp="" desc=""/>
    <constraint field="controle_uuid" exp="" desc=""/>
    <constraint field="usuario_criacao" exp="" desc=""/>
    <constraint field="usuario_atualizacao" exp="" desc=""/>
    <constraint field="insumo" exp="" desc=""/>
    <constraint field="data_insumo" exp="" desc=""/>
    <constraint field="visivel" exp="" desc=""/>
    <constraint field="texto_edicao" exp="" desc=""/>
    <constraint field="carta_mini" exp="" desc=""/>
    <constraint field="label_x" exp="" desc=""/>
    <constraint field="label_y" exp="" desc=""/>
    <constraint field="justificativa_txt" exp="" desc=""/>
    <constraint field="simb_x" exp="" desc=""/>
    <constraint field="simb_y" exp="" desc=""/>
    <constraint field="simb_rot" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;observacao&quot;">
    <columns>
      <column type="field" width="-1" name="id" hidden="0"/>
      <column type="field" width="-1" name="nome" hidden="0"/>
      <column type="field" width="286" name="tipo" hidden="0"/>
      <column type="field" width="-1" name="tipo_exposicao" hidden="0"/>
      <column type="field" width="-1" name="situacao_fisica" hidden="0"/>
      <column type="field" width="-1" name="material_construcao" hidden="0"/>
      <column type="field" width="-1" name="finalidade" hidden="0"/>
      <column type="field" width="-1" name="observacao" hidden="0"/>
      <column type="field" width="-1" name="data_modificacao" hidden="0"/>
      <column type="field" width="-1" name="controle_uuid" hidden="0"/>
      <column type="field" width="-1" name="usuario_criacao" hidden="0"/>
      <column type="field" width="-1" name="usuario_atualizacao" hidden="0"/>
      <column type="field" width="-1" name="insumo" hidden="0"/>
      <column type="field" width="-1" name="data_insumo" hidden="0"/>
      <column type="field" width="-1" name="visivel" hidden="0"/>
      <column type="field" width="-1" name="texto_edicao" hidden="0"/>
      <column type="field" width="-1" name="carta_mini" hidden="0"/>
      <column type="field" width="-1" name="label_x" hidden="0"/>
      <column type="field" width="-1" name="label_y" hidden="0"/>
      <column type="field" width="-1" name="justificativa_txt" hidden="0"/>
      <column type="field" width="-1" name="simb_x" hidden="0"/>
      <column type="field" width="-1" name="simb_y" hidden="0"/>
      <column type="field" width="-1" name="simb_rot" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
    <field name="finalidade" editable="1"/>
    <field name="id" editable="1"/>
    <field name="insumo" editable="1"/>
    <field name="justificativa_txt" editable="1"/>
    <field name="label_x" editable="1"/>
    <field name="label_y" editable="1"/>
    <field name="material_construcao" editable="1"/>
    <field name="nome" editable="1"/>
    <field name="observacao" editable="1"/>
    <field name="simb_rot" editable="1"/>
    <field name="simb_x" editable="1"/>
    <field name="simb_y" editable="1"/>
    <field name="situacao_fisica" editable="1"/>
    <field name="texto_edicao" editable="1"/>
    <field name="tipo" editable="1"/>
    <field name="tipo_exposicao" editable="1"/>
    <field name="usuario_atualizacao" editable="1"/>
    <field name="usuario_criacao" editable="1"/>
    <field name="visivel" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="carta_mini" labelOnTop="0"/>
    <field name="controle_uuid" labelOnTop="0"/>
    <field name="data_insumo" labelOnTop="0"/>
    <field name="data_modificacao" labelOnTop="0"/>
    <field name="finalidade" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="insumo" labelOnTop="0"/>
    <field name="justificativa_txt" labelOnTop="0"/>
    <field name="label_x" labelOnTop="0"/>
    <field name="label_y" labelOnTop="0"/>
    <field name="material_construcao" labelOnTop="0"/>
    <field name="nome" labelOnTop="0"/>
    <field name="observacao" labelOnTop="0"/>
    <field name="simb_rot" labelOnTop="0"/>
    <field name="simb_x" labelOnTop="0"/>
    <field name="simb_y" labelOnTop="0"/>
    <field name="situacao_fisica" labelOnTop="0"/>
    <field name="texto_edicao" labelOnTop="0"/>
    <field name="tipo" labelOnTop="0"/>
    <field name="tipo_exposicao" labelOnTop="0"/>
    <field name="usuario_atualizacao" labelOnTop="0"/>
    <field name="usuario_criacao" labelOnTop="0"/>
    <field name="visivel" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"nome"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
