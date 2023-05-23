Schedulable s = new ScheduleUpdateContactTitle();

String cron = '0 5 * * * ?';

System.schedule('Contact Scheduled Job', cron, s) ;