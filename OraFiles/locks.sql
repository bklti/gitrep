select s.sid,s.serial#,spid os_pid,s.event, s.username,s.program,s.sql_id,s.logon_time from v$session s,v$process process
where s.paddr=p.addr and s.username='SYSTEM' order by logon_time;

select session_id,v.object_id,oracle_username,locked_mode,d.owner,d.object_name from v$locked_object v,dba_objects d where v.object_id=d.object_id;
