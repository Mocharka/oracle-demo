prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>5942798239061714
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'STUDENT'
);
end;
/
 
prompt APPLICATION 101 - Appl
--
-- Application Export:
--   Application:     101
--   Name:            Appl
--   Date and Time:   18:42 Wednesday April 17, 2024
--   Exported By:     STUDENT
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 3
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     2135623006102032
--

begin
null;
end;
/
prompt --application/pages/delete_00003
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>3);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Users form'
,p_alias=>'USERS-FORM1'
,p_step_title=>'Users form'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'STUDENT'
,p_last_upd_yyyymmddhh24miss=>'20240417175452'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6462833448519083)
,p_plug_name=>'Users form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6007381106119052)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Users form'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6462918547519083)
,p_name=>'Users form'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'STUDENT'
,p_internal_uid=>6462918547519083
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6463300425519084)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6463760709519086)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6464179645519086)
,p_db_column_name=>'PROOF_URL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Proof URL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6464554689519087)
,p_db_column_name=>'BIRTHDAY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Birthday'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6464996123519087)
,p_db_column_name=>'PHOTO_URL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Photo URL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6465368196519087)
,p_db_column_name=>'GROUP_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Group Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6465725664519087)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6468437272520738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'64685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FULL_NAME:PROOF_URL:BIRTHDAY:PHOTO_URL:GROUP_NUMBER:CREATED_AT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6467904254519091)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6020873244119096)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5947712417118850)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(6125897011119281)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6466298705519088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6462833448519083)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6124205609119279)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6466594178519088)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6462833448519083)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6467067598519089)
,p_event_id=>wwv_flow_imp.id(6466594178519088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6462833448519083)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done