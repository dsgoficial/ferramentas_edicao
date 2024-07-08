<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.24.3-Tisler" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 symbollevels="0" type="RuleRenderer" referencescale="-1" forceraster="0" enableorderby="0">
    <rules key="{4697f112-4027-4bf7-b246-91c696f3c4ed}">
      <rule label="Visível" key="{b14bb858-e62b-4bb7-89af-cd399f8effa2}" filter="&quot;visivel&quot; = 1">
        <rule symbol="0" label="Construído" key="{9c7bae1c-6173-44d0-8b16-c53fa61cf9f5}" filter=" &quot;situacao_fisica&quot; in (0,3)"/>
        <rule symbol="1" label="Não construído" key="{a78dcd09-4a3a-40db-9974-2cc6a47b3896}" filter="ELSE"/>
      </rule>
    </rules>
    <symbols>
      <symbol name="0" alpha="1" clip_to_extent="1" type="marker" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SvgMarker" locked="0">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="231,113,72,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS44NjYyODA5bW0iCiAgIGhlaWdodD0iMS43NzUxMzg0bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjg2NjI4MDkgMS43NzUxMzg0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjc5NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJleHRyYWNhby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJuYW1lZHZpZXcxMjc5OCIKICAgICBwYWdlY29sb3I9IiM1MDUwNTAiCiAgICAgYm9yZGVyY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMCIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIxIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iIzUwNTA1MCIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnpvb209IjMyIgogICAgIGlua3NjYXBlOmN4PSItMy43ODEyNSIKICAgICBpbmtzY2FwZTpjeT0iMy4xNTYyNSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiIC8+CiAgPGRlZnMKICAgICBpZD0iZGVmczEyNzkzIiAvPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTA0LjA5OTE0LC0xNDcuNzg5ODUpIj4KICAgIDxwYXRoCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgaWQ9InBhdGg3MjMxIgogICAgICAgZD0ibSAxMDQuNDg0NDcsMTQ4LjIzODkyIDEuMjM3NDMsMS4yMzc0MyIKICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIDEwNS41ODA3MiwxNDguMTY4NDUgLTEuMzA4MTUsMS4zMDgxNSIKICAgICAgIGlkPSJwYXRoNzIzMyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8cGF0aAogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgIGlkPSJwYXRoNzI0OCIKICAgICAgIGQ9Im0gMTA1LjY4NzUsMTQ4LjA3OTcyIGMgLTAuMTk0MTIsLTAuMjA1NDMgLTAuNTI3NjgsLTAuMjg3OTQgLTAuNzIyMDksLTAuMjg5ODcgMCwwIDAuMzM5OTcsMC4xNTk0IDAuNDQ3MDksMC4zNzc5NCAwLjAwNywwLjAxNTkgMC4xNjI2NiwwLjE4MjA0IDAuMTYyNjYsMC4xODIwNCAwLjIwMzc2LDAuMDY5OCAwLjM0NjQyLDAuMzU2MzIgMC4zODc1MSwwLjQ0NDA4IDAuMDA5LDAuMDE4OSAtMC4wMDcsLTAuMTIzNzQgLTAuMDA3LC0wLjEyMzc0IDAsMCAtMC4wMjQ4LC0wLjMzMzI5IC0wLjI2NzkxLC0wLjU5MDQ1IHoiCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpmaWxsIG1hcmtlcnMgc3Ryb2tlIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJzY3Nzc2NzcyIgLz4KICAgIDxwYXRoCiAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9InNjY2NjcyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICBpZD0icGF0aDcyNjIiCiAgICAgICBkPSJtIDEwNC4yOTQ5NSwxNDguMDU5NzcgYyAtMC4yMTk0OCwwLjIyMDE2IC0wLjE5NSwwLjQ4MTc3IC0wLjE5NSwwLjQ4MTc3IGwgMC4xMDM1MiwwLjEwNDY5IDAuNjcxNzUsLTAuNjcxNzUgLTAuMTA1MTMsLTAuMTA1MTMgYyAwLDAgLTAuMjU5MDEsLTAuMDI2NCAtMC40NzUxNCwwLjE5MDQyIHoiCiAgICAgICBzdHlsZT0iY29sb3I6IzAwMDAwMDtmb250LXN0eWxlOm5vcm1hbDtmb250LXZhcmlhbnQ6bm9ybWFsO2ZvbnQtd2VpZ2h0Om5vcm1hbDtmb250LXN0cmV0Y2g6bm9ybWFsO2ZvbnQtc2l6ZTptZWRpdW07bGluZS1oZWlnaHQ6bm9ybWFsO2ZvbnQtZmFtaWx5OnNhbnMtc2VyaWY7Zm9udC12YXJpYW50LWxpZ2F0dXJlczpub3JtYWw7Zm9udC12YXJpYW50LXBvc2l0aW9uOm5vcm1hbDtmb250LXZhcmlhbnQtY2Fwczpub3JtYWw7Zm9udC12YXJpYW50LW51bWVyaWM6bm9ybWFsO2ZvbnQtdmFyaWFudC1hbHRlcm5hdGVzOm5vcm1hbDtmb250LWZlYXR1cmUtc2V0dGluZ3M6bm9ybWFsO3RleHQtaW5kZW50OjA7dGV4dC1hbGlnbjpzdGFydDt0ZXh0LWRlY29yYXRpb246bm9uZTt0ZXh0LWRlY29yYXRpb24tbGluZTpub25lO3RleHQtZGVjb3JhdGlvbi1zdHlsZTpzb2xpZDt0ZXh0LWRlY29yYXRpb24tY29sb3I6IzAwMDAwMDtsZXR0ZXItc3BhY2luZzpub3JtYWw7d29yZC1zcGFjaW5nOm5vcm1hbDt0ZXh0LXRyYW5zZm9ybTpub25lO3dyaXRpbmctbW9kZTpsci10YjtkaXJlY3Rpb246bHRyO3RleHQtb3JpZW50YXRpb246bWl4ZWQ7ZG9taW5hbnQtYmFzZWxpbmU6YXV0bztiYXNlbGluZS1zaGlmdDpiYXNlbGluZTt0ZXh0LWFuY2hvcjpzdGFydDt3aGl0ZS1zcGFjZTpub3JtYWw7c2hhcGUtcGFkZGluZzowO2NsaXAtcnVsZTpub256ZXJvO2Rpc3BsYXk6aW5saW5lO292ZXJmbG93OnZpc2libGU7dmlzaWJpbGl0eTp2aXNpYmxlO2lzb2xhdGlvbjphdXRvO21peC1ibGVuZC1tb2RlOm5vcm1hbDtjb2xvci1pbnRlcnBvbGF0aW9uOnNSR0I7Y29sb3ItaW50ZXJwb2xhdGlvbi1maWx0ZXJzOmxpbmVhclJHQjtzb2xpZC1jb2xvcjojMDAwMDAwO3NvbGlkLW9wYWNpdHk6MTt2ZWN0b3ItZWZmZWN0Om5vbmU7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOm1hcmtlcnMgZmlsbCBzdHJva2U7Y29sb3ItcmVuZGVyaW5nOmF1dG87aW1hZ2UtcmVuZGVyaW5nOmF1dG87c2hhcGUtcmVuZGVyaW5nOmF1dG87dGV4dC1yZW5kZXJpbmc6YXV0bztlbmFibGUtYmFja2dyb3VuZDphY2N1bXVsYXRlIiAvPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.93829" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="231,113,72,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS44NjYyODA5bW0iCiAgIGhlaWdodD0iMS43NzUxMzg0bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjg2NjI4MDkgMS43NzUxMzg0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjc5NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJleHRyYWNhby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJuYW1lZHZpZXcxMjc5OCIKICAgICBwYWdlY29sb3I9IiM1MDUwNTAiCiAgICAgYm9yZGVyY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMCIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIxIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iIzUwNTA1MCIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnpvb209IjMyIgogICAgIGlua3NjYXBlOmN4PSItMy43ODEyNSIKICAgICBpbmtzY2FwZTpjeT0iMy4xNTYyNSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiIC8+CiAgPGRlZnMKICAgICBpZD0iZGVmczEyNzkzIiAvPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTA0LjA5OTE0LC0xNDcuNzg5ODUpIj4KICAgIDxwYXRoCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgaWQ9InBhdGg3MjMxIgogICAgICAgZD0ibSAxMDQuNDg0NDcsMTQ4LjIzODkyIDEuMjM3NDMsMS4yMzc0MyIKICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIDEwNS41ODA3MiwxNDguMTY4NDUgLTEuMzA4MTUsMS4zMDgxNSIKICAgICAgIGlkPSJwYXRoNzIzMyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8cGF0aAogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgIGlkPSJwYXRoNzI0OCIKICAgICAgIGQ9Im0gMTA1LjY4NzUsMTQ4LjA3OTcyIGMgLTAuMTk0MTIsLTAuMjA1NDMgLTAuNTI3NjgsLTAuMjg3OTQgLTAuNzIyMDksLTAuMjg5ODcgMCwwIDAuMzM5OTcsMC4xNTk0IDAuNDQ3MDksMC4zNzc5NCAwLjAwNywwLjAxNTkgMC4xNjI2NiwwLjE4MjA0IDAuMTYyNjYsMC4xODIwNCAwLjIwMzc2LDAuMDY5OCAwLjM0NjQyLDAuMzU2MzIgMC4zODc1MSwwLjQ0NDA4IDAuMDA5LDAuMDE4OSAtMC4wMDcsLTAuMTIzNzQgLTAuMDA3LC0wLjEyMzc0IDAsMCAtMC4wMjQ4LC0wLjMzMzI5IC0wLjI2NzkxLC0wLjU5MDQ1IHoiCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpmaWxsIG1hcmtlcnMgc3Ryb2tlIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJzY3Nzc2NzcyIgLz4KICAgIDxwYXRoCiAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9InNjY2NjcyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICBpZD0icGF0aDcyNjIiCiAgICAgICBkPSJtIDEwNC4yOTQ5NSwxNDguMDU5NzcgYyAtMC4yMTk0OCwwLjIyMDE2IC0wLjE5NSwwLjQ4MTc3IC0wLjE5NSwwLjQ4MTc3IGwgMC4xMDM1MiwwLjEwNDY5IDAuNjcxNzUsLTAuNjcxNzUgLTAuMTA1MTMsLTAuMTA1MTMgYyAwLDAgLTAuMjU5MDEsLTAuMDI2NCAtMC40NzUxNCwwLjE5MDQyIHoiCiAgICAgICBzdHlsZT0iY29sb3I6IzAwMDAwMDtmb250LXN0eWxlOm5vcm1hbDtmb250LXZhcmlhbnQ6bm9ybWFsO2ZvbnQtd2VpZ2h0Om5vcm1hbDtmb250LXN0cmV0Y2g6bm9ybWFsO2ZvbnQtc2l6ZTptZWRpdW07bGluZS1oZWlnaHQ6bm9ybWFsO2ZvbnQtZmFtaWx5OnNhbnMtc2VyaWY7Zm9udC12YXJpYW50LWxpZ2F0dXJlczpub3JtYWw7Zm9udC12YXJpYW50LXBvc2l0aW9uOm5vcm1hbDtmb250LXZhcmlhbnQtY2Fwczpub3JtYWw7Zm9udC12YXJpYW50LW51bWVyaWM6bm9ybWFsO2ZvbnQtdmFyaWFudC1hbHRlcm5hdGVzOm5vcm1hbDtmb250LWZlYXR1cmUtc2V0dGluZ3M6bm9ybWFsO3RleHQtaW5kZW50OjA7dGV4dC1hbGlnbjpzdGFydDt0ZXh0LWRlY29yYXRpb246bm9uZTt0ZXh0LWRlY29yYXRpb24tbGluZTpub25lO3RleHQtZGVjb3JhdGlvbi1zdHlsZTpzb2xpZDt0ZXh0LWRlY29yYXRpb24tY29sb3I6IzAwMDAwMDtsZXR0ZXItc3BhY2luZzpub3JtYWw7d29yZC1zcGFjaW5nOm5vcm1hbDt0ZXh0LXRyYW5zZm9ybTpub25lO3dyaXRpbmctbW9kZTpsci10YjtkaXJlY3Rpb246bHRyO3RleHQtb3JpZW50YXRpb246bWl4ZWQ7ZG9taW5hbnQtYmFzZWxpbmU6YXV0bztiYXNlbGluZS1zaGlmdDpiYXNlbGluZTt0ZXh0LWFuY2hvcjpzdGFydDt3aGl0ZS1zcGFjZTpub3JtYWw7c2hhcGUtcGFkZGluZzowO2NsaXAtcnVsZTpub256ZXJvO2Rpc3BsYXk6aW5saW5lO292ZXJmbG93OnZpc2libGU7dmlzaWJpbGl0eTp2aXNpYmxlO2lzb2xhdGlvbjphdXRvO21peC1ibGVuZC1tb2RlOm5vcm1hbDtjb2xvci1pbnRlcnBvbGF0aW9uOnNSR0I7Y29sb3ItaW50ZXJwb2xhdGlvbi1maWx0ZXJzOmxpbmVhclJHQjtzb2xpZC1jb2xvcjojMDAwMDAwO3NvbGlkLW9wYWNpdHk6MTt2ZWN0b3ItZWZmZWN0Om5vbmU7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOm1hcmtlcnMgZmlsbCBzdHJva2U7Y29sb3ItcmVuZGVyaW5nOmF1dG87aW1hZ2UtcmVuZGVyaW5nOmF1dG87c2hhcGUtcmVuZGVyaW5nOmF1dG87dGV4dC1yZW5kZXJpbmc6YXV0bztlbmFibGUtYmFja2dyb3VuZDphY2N1bXVsYXRlIiAvPgogIDwvZz4KPC9zdmc+Cg=="/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.93829"/>
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
      <symbol name="1" alpha="1" clip_to_extent="1" type="marker" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="SvgMarker" locked="0">
          <Option type="Map">
            <Option value="180" name="angle" type="QString"/>
            <Option value="231,113,72,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS44NjYyODA5bW0iCiAgIGhlaWdodD0iMS43NzUxMzg0bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjg2NjI4MDkgMS43NzUxMzg0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjc5NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJleHRyYWNhby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJuYW1lZHZpZXcxMjc5OCIKICAgICBwYWdlY29sb3I9IiM1MDUwNTAiCiAgICAgYm9yZGVyY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMCIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIxIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iIzUwNTA1MCIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnpvb209IjMyIgogICAgIGlua3NjYXBlOmN4PSItMy43ODEyNSIKICAgICBpbmtzY2FwZTpjeT0iMy4xNTYyNSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiIC8+CiAgPGRlZnMKICAgICBpZD0iZGVmczEyNzkzIiAvPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTA0LjA5OTE0LC0xNDcuNzg5ODUpIj4KICAgIDxwYXRoCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgaWQ9InBhdGg3MjMxIgogICAgICAgZD0ibSAxMDQuNDg0NDcsMTQ4LjIzODkyIDEuMjM3NDMsMS4yMzc0MyIKICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIDEwNS41ODA3MiwxNDguMTY4NDUgLTEuMzA4MTUsMS4zMDgxNSIKICAgICAgIGlkPSJwYXRoNzIzMyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8cGF0aAogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgIGlkPSJwYXRoNzI0OCIKICAgICAgIGQ9Im0gMTA1LjY4NzUsMTQ4LjA3OTcyIGMgLTAuMTk0MTIsLTAuMjA1NDMgLTAuNTI3NjgsLTAuMjg3OTQgLTAuNzIyMDksLTAuMjg5ODcgMCwwIDAuMzM5OTcsMC4xNTk0IDAuNDQ3MDksMC4zNzc5NCAwLjAwNywwLjAxNTkgMC4xNjI2NiwwLjE4MjA0IDAuMTYyNjYsMC4xODIwNCAwLjIwMzc2LDAuMDY5OCAwLjM0NjQyLDAuMzU2MzIgMC4zODc1MSwwLjQ0NDA4IDAuMDA5LDAuMDE4OSAtMC4wMDcsLTAuMTIzNzQgLTAuMDA3LC0wLjEyMzc0IDAsMCAtMC4wMjQ4LC0wLjMzMzI5IC0wLjI2NzkxLC0wLjU5MDQ1IHoiCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpmaWxsIG1hcmtlcnMgc3Ryb2tlIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJzY3Nzc2NzcyIgLz4KICAgIDxwYXRoCiAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9InNjY2NjcyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICBpZD0icGF0aDcyNjIiCiAgICAgICBkPSJtIDEwNC4yOTQ5NSwxNDguMDU5NzcgYyAtMC4yMTk0OCwwLjIyMDE2IC0wLjE5NSwwLjQ4MTc3IC0wLjE5NSwwLjQ4MTc3IGwgMC4xMDM1MiwwLjEwNDY5IDAuNjcxNzUsLTAuNjcxNzUgLTAuMTA1MTMsLTAuMTA1MTMgYyAwLDAgLTAuMjU5MDEsLTAuMDI2NCAtMC40NzUxNCwwLjE5MDQyIHoiCiAgICAgICBzdHlsZT0iY29sb3I6IzAwMDAwMDtmb250LXN0eWxlOm5vcm1hbDtmb250LXZhcmlhbnQ6bm9ybWFsO2ZvbnQtd2VpZ2h0Om5vcm1hbDtmb250LXN0cmV0Y2g6bm9ybWFsO2ZvbnQtc2l6ZTptZWRpdW07bGluZS1oZWlnaHQ6bm9ybWFsO2ZvbnQtZmFtaWx5OnNhbnMtc2VyaWY7Zm9udC12YXJpYW50LWxpZ2F0dXJlczpub3JtYWw7Zm9udC12YXJpYW50LXBvc2l0aW9uOm5vcm1hbDtmb250LXZhcmlhbnQtY2Fwczpub3JtYWw7Zm9udC12YXJpYW50LW51bWVyaWM6bm9ybWFsO2ZvbnQtdmFyaWFudC1hbHRlcm5hdGVzOm5vcm1hbDtmb250LWZlYXR1cmUtc2V0dGluZ3M6bm9ybWFsO3RleHQtaW5kZW50OjA7dGV4dC1hbGlnbjpzdGFydDt0ZXh0LWRlY29yYXRpb246bm9uZTt0ZXh0LWRlY29yYXRpb24tbGluZTpub25lO3RleHQtZGVjb3JhdGlvbi1zdHlsZTpzb2xpZDt0ZXh0LWRlY29yYXRpb24tY29sb3I6IzAwMDAwMDtsZXR0ZXItc3BhY2luZzpub3JtYWw7d29yZC1zcGFjaW5nOm5vcm1hbDt0ZXh0LXRyYW5zZm9ybTpub25lO3dyaXRpbmctbW9kZTpsci10YjtkaXJlY3Rpb246bHRyO3RleHQtb3JpZW50YXRpb246bWl4ZWQ7ZG9taW5hbnQtYmFzZWxpbmU6YXV0bztiYXNlbGluZS1zaGlmdDpiYXNlbGluZTt0ZXh0LWFuY2hvcjpzdGFydDt3aGl0ZS1zcGFjZTpub3JtYWw7c2hhcGUtcGFkZGluZzowO2NsaXAtcnVsZTpub256ZXJvO2Rpc3BsYXk6aW5saW5lO292ZXJmbG93OnZpc2libGU7dmlzaWJpbGl0eTp2aXNpYmxlO2lzb2xhdGlvbjphdXRvO21peC1ibGVuZC1tb2RlOm5vcm1hbDtjb2xvci1pbnRlcnBvbGF0aW9uOnNSR0I7Y29sb3ItaW50ZXJwb2xhdGlvbi1maWx0ZXJzOmxpbmVhclJHQjtzb2xpZC1jb2xvcjojMDAwMDAwO3NvbGlkLW9wYWNpdHk6MTt2ZWN0b3ItZWZmZWN0Om5vbmU7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOm1hcmtlcnMgZmlsbCBzdHJva2U7Y29sb3ItcmVuZGVyaW5nOmF1dG87aW1hZ2UtcmVuZGVyaW5nOmF1dG87c2hhcGUtcmVuZGVyaW5nOmF1dG87dGV4dC1yZW5kZXJpbmc6YXV0bztlbmFibGUtYmFja2dyb3VuZDphY2N1bXVsYXRlIiAvPgogIDwvZz4KPC9zdmc+Cg==" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="1.93829" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <prop k="angle" v="180"/>
          <prop k="color" v="231,113,72,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="base64:PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB3aWR0aD0iMS44NjYyODA5bW0iCiAgIGhlaWdodD0iMS43NzUxMzg0bW0iCiAgIHZpZXdCb3g9IjAgMCAxLjg2NjI4MDkgMS43NzUxMzg0IgogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxMjc5NiIKICAgaW5rc2NhcGU6dmVyc2lvbj0iMS4yLjIgKGIwYTg0ODY1NDEsIDIwMjItMTItMDEpIgogICBzb2RpcG9kaTpkb2NuYW1lPSJleHRyYWNhby5zdmciCiAgIHhtbG5zOmlua3NjYXBlPSJodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy9uYW1lc3BhY2VzL2lua3NjYXBlIgogICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIKICAgeG1sbnM6c3ZnPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPHNvZGlwb2RpOm5hbWVkdmlldwogICAgIGlkPSJuYW1lZHZpZXcxMjc5OCIKICAgICBwYWdlY29sb3I9IiM1MDUwNTAiCiAgICAgYm9yZGVyY29sb3I9IiNmZmZmZmYiCiAgICAgYm9yZGVyb3BhY2l0eT0iMSIKICAgICBpbmtzY2FwZTpzaG93cGFnZXNoYWRvdz0iMCIKICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMCIKICAgICBpbmtzY2FwZTpwYWdlY2hlY2tlcmJvYXJkPSIxIgogICAgIGlua3NjYXBlOmRlc2tjb2xvcj0iIzUwNTA1MCIKICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iCiAgICAgc2hvd2dyaWQ9ImZhbHNlIgogICAgIGlua3NjYXBlOnpvb209IjMyIgogICAgIGlua3NjYXBlOmN4PSItMy43ODEyNSIKICAgICBpbmtzY2FwZTpjeT0iMy4xNTYyNSIKICAgICBpbmtzY2FwZTp3aW5kb3ctd2lkdGg9IjE5MjAiCiAgICAgaW5rc2NhcGU6d2luZG93LWhlaWdodD0iMTAxNyIKICAgICBpbmtzY2FwZTp3aW5kb3cteD0iMTkxMiIKICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiCiAgICAgaW5rc2NhcGU6d2luZG93LW1heGltaXplZD0iMSIKICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiIC8+CiAgPGRlZnMKICAgICBpZD0iZGVmczEyNzkzIiAvPgogIDxnCiAgICAgaW5rc2NhcGU6bGFiZWw9IkNhbWFkYSAxIgogICAgIGlua3NjYXBlOmdyb3VwbW9kZT0ibGF5ZXIiCiAgICAgaWQ9ImxheWVyMSIKICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTA0LjA5OTE0LC0xNDcuNzg5ODUpIj4KICAgIDxwYXRoCiAgICAgICBpbmtzY2FwZTpjb25uZWN0b3ItY3VydmF0dXJlPSIwIgogICAgICAgaWQ9InBhdGg3MjMxIgogICAgICAgZD0ibSAxMDQuNDg0NDcsMTQ4LjIzODkyIDEuMjM3NDMsMS4yMzc0MyIKICAgICAgIHN0eWxlPSJmaWxsOiMyNDFmMjE7ZmlsbC1vcGFjaXR5OjE7c3Ryb2tlOiMyNDFmMjE7c3Ryb2tlLXdpZHRoOjAuMjU7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLW9wYWNpdHk6MSIgLz4KICAgIDxwYXRoCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjI1O3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOm1pdGVyO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1vcGFjaXR5OjEiCiAgICAgICBkPSJtIDEwNS41ODA3MiwxNDguMTY4NDUgLTEuMzA4MTUsMS4zMDgxNSIKICAgICAgIGlkPSJwYXRoNzIzMyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiIC8+CiAgICA8cGF0aAogICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIKICAgICAgIGlkPSJwYXRoNzI0OCIKICAgICAgIGQ9Im0gMTA1LjY4NzUsMTQ4LjA3OTcyIGMgLTAuMTk0MTIsLTAuMjA1NDMgLTAuNTI3NjgsLTAuMjg3OTQgLTAuNzIyMDksLTAuMjg5ODcgMCwwIDAuMzM5OTcsMC4xNTk0IDAuNDQ3MDksMC4zNzc5NCAwLjAwNywwLjAxNTkgMC4xNjI2NiwwLjE4MjA0IDAuMTYyNjYsMC4xODIwNCAwLjIwMzc2LDAuMDY5OCAwLjM0NjQyLDAuMzU2MzIgMC4zODc1MSwwLjQ0NDA4IDAuMDA5LDAuMDE4OSAtMC4wMDcsLTAuMTIzNzQgLTAuMDA3LC0wLjEyMzc0IDAsMCAtMC4wMjQ4LC0wLjMzMzI5IC0wLjI2NzkxLC0wLjU5MDQ1IHoiCiAgICAgICBzdHlsZT0iZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO3N0cm9rZTojMjQxZjIxO3N0cm9rZS13aWR0aDowLjAxO3N0cm9rZS1saW5lY2FwOmJ1dHQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjQ7c3Ryb2tlLWRhc2hhcnJheTpub25lO3N0cm9rZS1kYXNob2Zmc2V0OjA7c3Ryb2tlLW9wYWNpdHk6MTtwYWludC1vcmRlcjpmaWxsIG1hcmtlcnMgc3Ryb2tlIgogICAgICAgc29kaXBvZGk6bm9kZXR5cGVzPSJzY3Nzc2NzcyIgLz4KICAgIDxwYXRoCiAgICAgICBzb2RpcG9kaTpub2RldHlwZXM9InNjY2NjcyIKICAgICAgIGlua3NjYXBlOmNvbm5lY3Rvci1jdXJ2YXR1cmU9IjAiCiAgICAgICBpZD0icGF0aDcyNjIiCiAgICAgICBkPSJtIDEwNC4yOTQ5NSwxNDguMDU5NzcgYyAtMC4yMTk0OCwwLjIyMDE2IC0wLjE5NSwwLjQ4MTc3IC0wLjE5NSwwLjQ4MTc3IGwgMC4xMDM1MiwwLjEwNDY5IDAuNjcxNzUsLTAuNjcxNzUgLTAuMTA1MTMsLTAuMTA1MTMgYyAwLDAgLTAuMjU5MDEsLTAuMDI2NCAtMC40NzUxNCwwLjE5MDQyIHoiCiAgICAgICBzdHlsZT0iY29sb3I6IzAwMDAwMDtmb250LXN0eWxlOm5vcm1hbDtmb250LXZhcmlhbnQ6bm9ybWFsO2ZvbnQtd2VpZ2h0Om5vcm1hbDtmb250LXN0cmV0Y2g6bm9ybWFsO2ZvbnQtc2l6ZTptZWRpdW07bGluZS1oZWlnaHQ6bm9ybWFsO2ZvbnQtZmFtaWx5OnNhbnMtc2VyaWY7Zm9udC12YXJpYW50LWxpZ2F0dXJlczpub3JtYWw7Zm9udC12YXJpYW50LXBvc2l0aW9uOm5vcm1hbDtmb250LXZhcmlhbnQtY2Fwczpub3JtYWw7Zm9udC12YXJpYW50LW51bWVyaWM6bm9ybWFsO2ZvbnQtdmFyaWFudC1hbHRlcm5hdGVzOm5vcm1hbDtmb250LWZlYXR1cmUtc2V0dGluZ3M6bm9ybWFsO3RleHQtaW5kZW50OjA7dGV4dC1hbGlnbjpzdGFydDt0ZXh0LWRlY29yYXRpb246bm9uZTt0ZXh0LWRlY29yYXRpb24tbGluZTpub25lO3RleHQtZGVjb3JhdGlvbi1zdHlsZTpzb2xpZDt0ZXh0LWRlY29yYXRpb24tY29sb3I6IzAwMDAwMDtsZXR0ZXItc3BhY2luZzpub3JtYWw7d29yZC1zcGFjaW5nOm5vcm1hbDt0ZXh0LXRyYW5zZm9ybTpub25lO3dyaXRpbmctbW9kZTpsci10YjtkaXJlY3Rpb246bHRyO3RleHQtb3JpZW50YXRpb246bWl4ZWQ7ZG9taW5hbnQtYmFzZWxpbmU6YXV0bztiYXNlbGluZS1zaGlmdDpiYXNlbGluZTt0ZXh0LWFuY2hvcjpzdGFydDt3aGl0ZS1zcGFjZTpub3JtYWw7c2hhcGUtcGFkZGluZzowO2NsaXAtcnVsZTpub256ZXJvO2Rpc3BsYXk6aW5saW5lO292ZXJmbG93OnZpc2libGU7dmlzaWJpbGl0eTp2aXNpYmxlO2lzb2xhdGlvbjphdXRvO21peC1ibGVuZC1tb2RlOm5vcm1hbDtjb2xvci1pbnRlcnBvbGF0aW9uOnNSR0I7Y29sb3ItaW50ZXJwb2xhdGlvbi1maWx0ZXJzOmxpbmVhclJHQjtzb2xpZC1jb2xvcjojMDAwMDAwO3NvbGlkLW9wYWNpdHk6MTt2ZWN0b3ItZWZmZWN0Om5vbmU7ZmlsbDojMjQxZjIxO2ZpbGwtb3BhY2l0eToxO2ZpbGwtcnVsZTpub256ZXJvO3N0cm9rZTpub25lO3N0cm9rZS13aWR0aDowLjE7c3Ryb2tlLWxpbmVjYXA6YnV0dDtzdHJva2UtbGluZWpvaW46bWl0ZXI7c3Ryb2tlLW1pdGVybGltaXQ6NDtzdHJva2UtZGFzaGFycmF5Om5vbmU7c3Ryb2tlLWRhc2hvZmZzZXQ6MDtzdHJva2Utb3BhY2l0eToxO3BhaW50LW9yZGVyOm1hcmtlcnMgZmlsbCBzdHJva2U7Y29sb3ItcmVuZGVyaW5nOmF1dG87aW1hZ2UtcmVuZGVyaW5nOmF1dG87c2hhcGUtcmVuZGVyaW5nOmF1dG87dGV4dC1yZW5kZXJpbmc6YXV0bztlbmFibGUtYmFja2dyb3VuZDphY2N1bXVsYXRlIiAvPgogIDwvZz4KPC9zdmc+Cg=="/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="parameters" v=""/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.93829"/>
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
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{13c538ca-ac3e-4847-9f18-42b1abf2745b}">
      <rule description="Extração mineral" key="{f51f0764-60f2-49dc-b723-56180941baa1}" filter="&quot;visivel&quot; = 1">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" isExpression="0" useSubstitutions="0" fieldName="texto_edicao" fontWordSpacing="0" fontFamily="Noto Sans" textOrientation="horizontal" fontKerning="1" fontLetterSpacing="0" fontItalic="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontSizeUnit="Point" fontSize="6" textOpacity="1" legendString="Aa" multilineHeight="0.80000000000000004" namedStyle="Condensed" blendMode="0" textColor="36,31,33,255" fontWeight="50" fontUnderline="0" fontStrikeout="0">
            <families/>
            <text-buffer bufferSize="1" bufferColor="255,255,255,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="0" bufferJoinStyle="128" bufferBlendMode="0" bufferSizeUnits="MM" bufferNoFill="1"/>
            <text-mask maskSize="0.20000000000000001" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="elemnat_terreno_sujeito_inundacao_a_40310196_b1fc_416d_afab_98a227f689ed,,0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{aa00d086-e453-49b5-8af9-ed31568d12e6},1;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{8837b77c-b89f-4053-ac86-4a25d9adbd25},2;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{8837b77c-b89f-4053-ac86-4a25d9adbd25},1,0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{9369fc1f-ffe7-4380-aaea-21612f1cf20a},0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{272fd170-db21-4e87-8510-fa3bf9c32a70},0,0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{a429cfcb-5c0d-40e4-bf7f-faaa5613b935},0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{8837b77c-b89f-4053-ac86-4a25d9adbd25},0,0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{272fd170-db21-4e87-8510-fa3bf9c32a70},1;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{aa00d086-e453-49b5-8af9-ed31568d12e6},0,0;elemnat_curva_nivel_l_6a555fc1_bc07_4a24_a934_2c41d88b035c,{b012def3-64fb-443a-9239-4c61a438c046},0;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14,{9fe301b7-3ba1-4416-8058-7acf2474d21d},0;elemnat_trecho_drenagem_l_29b6df7e_6262_45f1_a985_fbadb8356a14,{dfbc5c66-20ad-4025-bd20-505153c8f05f},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{5ff61725-199e-4b14-85ac-52c50442e26c},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{a0a10e7a-732e-44be-bc62-84521437d385},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{a0a10e7a-732e-44be-bc62-84521437d385},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{863a5902-e561-400b-885c-18074eb31482},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{863a5902-e561-400b-885c-18074eb31482},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{62dcfcbd-0755-40b8-b045-528f2de5a49c},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{62dcfcbd-0755-40b8-b045-528f2de5a49c},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{62dcfcbd-0755-40b8-b045-528f2de5a49c},2;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{81dd1c64-4eca-4f39-98ac-1e02be31763d},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{81dd1c64-4eca-4f39-98ac-1e02be31763d},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{c9eebb74-f741-4a01-b792-56a7d225ffbd},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{6c259dc7-0157-4377-8adc-a4684e030d9d},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{5c815464-f5a1-4d96-83cb-a68b58f884bb},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{5c815464-f5a1-4d96-83cb-a68b58f884bb},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{c9eebb74-f741-4a01-b792-56a7d225ffbd},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{1eba6b4b-ce86-4093-bed3-8f65349496aa},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{04069c29-521d-4543-93db-0d72a40583dc},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{f487a27d-b0a6-49c6-97fe-a4049be13072},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{04069c29-521d-4543-93db-0d72a40583dc},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{dbcaebbc-1e57-437d-9002-a5c4f025e0b5},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{1eba6b4b-ce86-4093-bed3-8f65349496aa},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{04069c29-521d-4543-93db-0d72a40583dc},2;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{f487a27d-b0a6-49c6-97fe-a4049be13072},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{dbcaebbc-1e57-437d-9002-a5c4f025e0b5},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{16eff641-09ac-441b-9830-dc089de80b4f},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{6fd60408-e6fe-4225-a252-cf79779510c3},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{6fd60408-e6fe-4225-a252-cf79779510c3},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{705ddd27-dff4-4c39-8413-c4d1a648a743},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{705ddd27-dff4-4c39-8413-c4d1a648a743},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{4af4abf4-ea14-4b74-8974-066958b77b32},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{a58e509b-907d-4909-b00b-ebd4e3c977fc},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{a58e509b-907d-4909-b00b-ebd4e3c977fc},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{e0f88f6a-8229-467c-a518-643609f8738b},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{5095e805-a614-4158-99ae-f0236404d5cd},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{0984fd1a-ec43-4b87-9012-1ced8973366c},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{5095e805-a614-4158-99ae-f0236404d5cd},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{ff5fcd1d-7cee-4931-98b1-98fdd914919e},1;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{459968c7-34d7-4d2a-a9d7-4b020e6b306d},0;infra_via_deslocamento_l_3fd387b3_d3bc_4aa1_bc0b_cf85d1bd24de,{5ff61725-199e-4b14-85ac-52c50442e26c},0;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099,{6c10469c-3b0c-41e7-a2ef-61419b5a3811},1,0;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099,{6c10469c-3b0c-41e7-a2ef-61419b5a3811},0;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099,{becd661f-ff49-4520-84cb-a411b4d83a5e},1,0;llp_delimitacao_fisica_l_710a9e44_4ea1_403b_abd5_1a13fd871099,{becd661f-ff49-4520-84cb-a411b4d83a5e},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{931067a6-d7c9-4cc7-b7fd-92d1a7c95a6a},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{6d01f01b-9583-4628-aaef-031860810e2a},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{32e6b147-cddc-401a-909e-768b2f0dfae9},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{0dfda1a4-4196-4706-8de5-4fac28e05185},1;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{99c188bb-37bf-4124-9d59-a533577b6b22},1;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{5d85ee96-c166-467d-9359-cc3026e56e02},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{20673adf-7341-46df-88ea-ca60401e3acf},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{9f4c4668-7a7f-4414-8718-043e73be2861},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{c5ac3099-b6d0-4ddb-8598-e845530ce000},2;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{b1c7454c-7ec6-43f7-93cb-dbf6fd7d989b},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{60ed1f30-5545-4828-980d-98928a7c549e},0;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{2259b3af-b0ca-4608-b21b-02c751091424},1;cobter_vegetacao_a_d92e1454_828d_40f6_b039_13746b93f8fd,{d34348cf-1659-40a6-b4b4-950831b77e36},0" maskType="0" maskEnabled="1" maskJoinStyle="128" maskOpacity="1" maskSizeUnits="MM"/>
            <background shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeRadiiY="0" shapeRadiiX="0" shapeSizeX="0" shapeRadiiUnit="MM" shapeFillColor="255,255,255,255" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeJoinStyle="64" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSVGFile="" shapeOpacity="1" shapeSizeY="0" shapeRotationType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeBlendMode="0" shapeOffsetY="0" shapeBorderWidthUnit="MM">
              <symbol name="markerSymbol" alpha="1" clip_to_extent="1" type="marker" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="231,113,72,255" name="color" type="QString"/>
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
                  <prop k="color" v="231,113,72,255"/>
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
              <symbol name="fillSymbol" alpha="1" clip_to_extent="1" type="fill" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
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
            <shadow shadowUnder="0" shadowRadius="1.5" shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowDraw="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" leftDirectionSymbol="&lt;" formatNumbers="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" plussign="0" wrapChar="|" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0" placeDirectionSymbol="0"/>
          <placement geometryGenerator="with_variable(&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;intersection($geometry,  @moldura) &#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;$geometry&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;)" preserveRotation="1" overrunDistance="0" maxCurvedCharAngleIn="25" fitInPolygonOnly="0" dist="0.40000000000000002" rotationUnit="AngleDegrees" polygonPlacementFlags="2" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" centroidInside="0" xOffset="0.5" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" rotationAngle="0" offsetType="0" quadOffset="2" geometryGeneratorEnabled="1" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" placement="0" distUnits="MM" overrunDistanceUnit="MM" repeatDistance="0" geometryGeneratorType="PointGeometry" layerType="PointGeometry" centroidWhole="0" lineAnchorClipping="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placementFlags="10" priority="5" lineAnchorPercent="0.5" yOffset="-0.5"/>
          <rendering scaleVisibility="0" maxNumLabels="2000" obstacle="1" minFeatureSize="0" obstacleFactor="1" drawLabels="1" unplacedVisibility="0" displayAll="0" mergeLines="0" scaleMin="0" obstacleType="1" upsidedownLabels="0" fontMinPixelSize="3" zIndex="0" fontMaxPixelSize="10000" labelPerPart="0" fontLimitPixelSize="0" scaleMax="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="AlwaysShow" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="&quot;label_x&quot; IS NOT NULL AND  &quot;label_y&quot; IS NOT NULL" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="CalloutDraw" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="project_color('preto-75_75-75-75_#4B4B4B')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="CASE &#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 1 THEN 'Left'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 2 THEN 'Center'&#xd;&#xa;WHEN &quot;justificativa_txt&quot; = 3 THEN 'Right'&#xd;&#xa;ELSE 'Left' END" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="PositionX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_x" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="PositionY" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="label_y" name="field" type="QString"/>
                  <Option value="2" name="type" type="int"/>
                </Option>
                <Option name="Show" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="with_variable(&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; 'moldura',&#xd;&#xd;&#xa;&#xd;&#xd;&#xa; geometry(get_feature('aux_label', 'id', '1')),&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;CASE WHEN @moldura is not null &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;THEN &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;intersects($geometry,  @moldura) &#xd;&#xd;&#xa;&#xd;&#xd;&#xa;ELSE&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;true&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;END&#xd;&#xd;&#xa;&#xd;&#xd;&#xa;)" name="expression" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
  <layerGeometryType>0</layerGeometryType>
</qgis>
