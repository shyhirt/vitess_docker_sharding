-- Create Vitess users
CREATE USER IF NOT EXISTS 'vt_allprivs'@'%' IDENTIFIED BY 'vt_allprivs_password';
GRANT ALL PRIVILEGES ON *.* TO 'vt_allprivs'@'%';

CREATE USER IF NOT EXISTS 'vt_appdebug'@'%' IDENTIFIED BY 'vt_appdebug_password';
GRANT ALL PRIVILEGES ON *.* TO 'vt_appdebug'@'%';

CREATE USER IF NOT EXISTS 'vt_repl'@'%' IDENTIFIED BY 'vt_repl_password';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'vt_repl'@'%';

FLUSH PRIVILEGES;