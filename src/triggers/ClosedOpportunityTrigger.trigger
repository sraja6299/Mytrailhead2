trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
    List<Task> TaskList = new List<Task>();
    for(Opportunity op: trigger.new){
        if(op.StageName == 'Closed Won'){
            Task taskObj = new Task();
            taskObj.WhoId = op.id;
            taskObj.Subject = 'Follow Up Test Task';
            taskObj.Status = 'Completed';
            TaskList.add(taskObj);
            
        }
    }
    if(TaskList != null && TaskList.size() >0){
        insert TaskList;
    }
}