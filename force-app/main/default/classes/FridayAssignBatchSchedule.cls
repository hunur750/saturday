public  class FridayAssignBatchSchedule implements Schedulable  {
    public void execute (SchedulableContext sc){
        FridayAssignBatch op= new FridayAssignBatch();
        Id jobId= Database.executeBatch(op);
    }
}
