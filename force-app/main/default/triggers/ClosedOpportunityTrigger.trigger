trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
list<Task> newTask= new list<Task>();
    for(Opportunity oppWon :[Select Id from Opportunity where StageName='Closed Won'
                            and Id in: Trigger.new]){
        newTask.add(new Task (Subject ='Follow Up Test Task',WhatId=oppWon.Id));
    }
    if(newTask.size()>0){
        upsert newTask;
    }
}