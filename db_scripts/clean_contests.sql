database tcs_catalog;
delete from submission;
delete from upload;
delete from resource_info;
delete from resource;
delete from project_result;
delete from component_inquiry;
delete from phase_criteria;
delete from phase_dependency;
delete from project_phase;
delete from prize;
delete from comp_version_dates where comp_version_dates_id > 30000000;
delete from comp_versions where comp_vers_id > 30000000;
delete from comp_categories where comp_categories_id > 30000000;
delete from comp_catalog where component_id > 30000000;
delete from group_contest_eligibility;
delete from contest_eligibility;
delete from project_info;
delete from project;
delete from project_studio_specification;
UPDATE project_category_lu SET project_catalog_id = null;
delete from project_catalog_lu;
