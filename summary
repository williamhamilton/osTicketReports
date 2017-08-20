SELECT `ost_organization`.`name`,
       `ost_ticket`.`number`,
       `ost_user`.`name`,
       `ost_ticket`.`user_email_id`,
       `ost_sla`.`name`,
       `ost_ticket`.`topic_id`,
       `ost_staff`.`firstname`,
       `ost_ticket`.`email_id`,
       `ost_ticket`.`flags`,
       `ost_ticket`.`ip_address`,
       `ost_ticket`.`source`,
       `ost_ticket`.`isoverdue`,
       `ost_ticket`.`isanswered`,
       `ost_ticket`.`duedate`,
       `ost_ticket`.`est_duedate`,
       `ost_ticket`.`reopened`,
       `ost_ticket`.`closed`,
       `ost_ticket`.`lastupdate`,
       `ost_ticket`.`created`,
       `ost_ticket`.`updated`
FROM `helpdesk`.`ost_user` AS `ost_user`,
     `helpdesk`.`ost_ticket` AS `ost_ticket`,
     `helpdesk`.`ost_organization` AS `ost_organization`,
     `helpdesk`.`ost_ticket_status` AS `ost_ticket_status`,
     `helpdesk`.`ost_staff` AS `ost_staff`,
     `helpdesk`.`ost_department` AS `ost_department`,
     `helpdesk`.`ost_sla` AS `ost_sla`
WHERE `ost_user`.`id` = `ost_ticket`.`user_id`
  AND `ost_organization`.`id` = `ost_user`.`org_id`
  AND `ost_ticket_status`.`id` = `ost_ticket`.`status_id`
  AND `ost_staff`.`staff_id` = `ost_ticket`.`staff_id`
  AND `ost_department`.`id` = `ost_ticket`.`dept_id`
  AND `ost_sla`.`id` = `ost_ticket`.`sla_id`
  AND `ost_department`.`id` = `ost_staff`.`dept_id`
