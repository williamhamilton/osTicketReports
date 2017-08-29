SELECT `ost_ticket`.`number`, `ost_user`.`name`, `ost_ticket__cdata`.`subject`, `ost_staff`.`username`, `ost_ticket_status`.`name`, `ost_ticket`.`closed`, `ost_organization`.`name` 
FROM
 { oj `helpdesk`.`ost_ticket` AS `ost_ticket` 
	LEFT OUTER JOIN
  `helpdesk`.`ost_user` AS `ost_user` ON `ost_ticket`.`user_id` = `ost_user`.`id`
    RIGHT OUTER JOIN 
  `helpdesk`.`ost_ticket__cdata` AS `ost_ticket__cdata` ON `ost_ticket__cdata`.`ticket_id` = `ost_ticket`.`ticket_id` }, 
  `helpdesk`.`ost_staff` AS `ost_staff`, `helpdesk`.`ost_ticket_status` AS `ost_ticket_status`,
  `helpdesk`.`ost_organization` AS `ost_organization` 
WHERE
 `ost_staff`.`staff_id` = `ost_ticket`.`staff_id` 
   AND
 `ost_ticket_status`.`id` = `ost_ticket`.`status_id` 
   AND
 `ost_organization`.`id` = `ost_user`.`org_id`
