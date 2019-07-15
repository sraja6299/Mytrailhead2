trigger oppContRoleTrigger on Opportunity (before update) {
	OppconRoleClass.getAllOpportunityRole(trigger.new);
}