ssh-keygen -f server/ssh/id_rsa -q -N ""
ssh-keygen -f client/ssh/id_rsa -q -N ""
cp client/ssh/id_rsa.pub server/ssh/authorized_keys
cp server/ssh/id_rsa.pub client/ssh/authorized_keys
