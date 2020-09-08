echo '*********************start************************'
export PROJ_PATH=/var/jenkins_home/workspace/test2
pm2 stop ./server.js
pm2 start ./server.js