database tcs_dw;

--CLIENT 1

INSERT INTO client_project_dim(client_project_id, cmc_account_id, client_id, client_name, client_create_date, client_modification_date, billing_project_id, project_name, project_create_date, project_modification_date, billing_account_code)
VALUES (500100, 'cmc1', 1,'test client', CURRENT, CURRENT, 1, 'test project', CURRENT, CURRENT, '123');

INSERT INTO direct_project_dim(direct_project_id, name, description, billing_project_id, project_status_id, project_create_date, project_modification_date)
VALUES (500101, 'project 1', 'desc', '123', 1, CURRENT, CURRENT);

INSERT INTO project(project_id, tc_direct_project_id, client_project_id,  project_category_id, project_category_name, component_name, posting_date, complete_date, fulfillment, contest_prizes_total, admin_fee, duration, status_desc, status_id)
VALUES (500102, 500101, 500100, 1, "challenge type 1", "challenge 1",  '2014-01-01 00:00:00',  '2014-01-01 00:00:00', 0.50,  1500, 200, 60*24*10, 'status 1', 4);

INSERT INTO project(project_id, tc_direct_project_id, client_project_id,  project_category_id, project_category_name, component_name, posting_date, complete_date, fulfillment, contest_prizes_total, admin_fee, duration, status_desc, status_id)
VALUES (500112, 500101, 500100, 1, "challenge type 1", "challenge 2",  '2014-01-01 00:00:00',  '2014-01-03 00:00:00', 0.70,  2500, 300, 40*24*10, 'status 1', 4);

INSERT INTO project(project_id, tc_direct_project_id, client_project_id,  project_category_id, project_category_name, component_name, posting_date, complete_date, fulfillment, contest_prizes_total, admin_fee, duration, status_desc, status_id)
VALUES (500122, 500101, 500100, 1, "challenge type 1", "challenge 3",  '2014-01-01 00:00:00',  '2014-01-05 00:00:00', 0.80,  1000, 100, 50*24*10, 'status 1', 4);


--CLIENT 2
INSERT INTO client_project_dim(client_project_id, cmc_account_id, client_id, client_name, client_create_date, client_modification_date, billing_project_id, project_name, project_create_date, project_modification_date, billing_account_code)
VALUES (500200, 'cmc2', 2, 'test client 2', CURRENT, CURRENT, 1, 'test project', CURRENT, CURRENT, '123');

INSERT INTO direct_project_dim(direct_project_id, name, description, billing_project_id, project_status_id, project_create_date, project_modification_date)
VALUES (500201, 'project 2', 'desc', '123', 1, CURRENT, CURRENT);

INSERT INTO project(project_id, tc_direct_project_id, client_project_id,  project_category_id, project_category_name, component_name, posting_date, complete_date, fulfillment, contest_prizes_total, admin_fee, duration, status_desc, status_id)
VALUES (500202, 500201, 500200, 1, "challenge type 1", "challenge 4",  '2014-01-05 00:00:00',  '2014-01-09 00:00:00', 0.70,  1500, 200, 60*24*10, 'status 1', 4);

INSERT INTO project(project_id, tc_direct_project_id, client_project_id,  project_category_id, project_category_name, component_name, posting_date, complete_date, fulfillment, contest_prizes_total, admin_fee, duration, status_desc, status_id)
VALUES (500212, 500201, 500200, 1, "challenge type 1", "challenge 5",  '2014-01-06 00:00:00',  '2014-01-11 00:00:00', 0.40,  500, 100, 40*24*10, 'status 1', 4);

INSERT INTO project(project_id, tc_direct_project_id, client_project_id,  project_category_id, project_category_name, component_name, posting_date, complete_date, fulfillment, contest_prizes_total, admin_fee, duration, status_desc, status_id)
VALUES (500222, 500201, 500200, 1, "challenge type 1", "challenge 6",  '2014-01-07 00:00:00',  '2014-01-13 00:00:00', 0.50,  1100, 110, 50*24*10, 'status 1', 4);
