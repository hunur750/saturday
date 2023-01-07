FridayAssignBatchSchedule op= new FridayAssignBatchSchedule();
system.schedule('deletedClosedLost', '0 0 15 ? * MON,TUE,WED,THU,FRI,SAT,SUN *', op);