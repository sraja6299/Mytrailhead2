public class OppconRoleClass {
    public static void getAllOpportunityRole(List<Opportunity> oppLIst){
        Set<Id> opportunityIdSet = new Set<Id>();
        for(Opportunity op : oppLIst){
            opportunityIdSet.add(op.Id);
        }
        List<OpportunityContactRole> oppconRoleList = new List<OpportunityContactRole>();
        oppconRoleList = [
            SELECT ID,
            ContactId,
            OpportunityId
            FROM OpportunityContactRole
            WHERE OpportunityId IN: opportunityIdSet
        ];
        for(Opportunity op : oppLIst){
            Integer count =0;
            for(OpportunityContactRole rol : oppconRoleList){
                if(rol.OpportunityId == op.Id){
                    count++;
                    if(count > 1){
                        op.addError('to many role here');
                    }
                }
            }
        }
    }
}