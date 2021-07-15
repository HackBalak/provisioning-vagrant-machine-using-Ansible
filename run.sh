echo "#############################################################"
echo "#             Destroy old built vagrant machine             #"
echo "#############################################################"
echo ""
echo ""
vagrant halt
vagrant destroy -f
echo ""
echo ""
echo "#############################################################"
echo "#            Check the ansible playbook syntax              #"
echo "#############################################################"
echo ""
echo ""
ansible-playbook ubuntu.yml --syntax-check
echo ""
echo ""
echo "#############################################################"
echo "#  Build and configure the vagrant machine using ansible    #"
echo "#############################################################"
echo ""
echo ""
vagrant up
echo ""
echo ""
echo "#############################################################"
echo "#             connect to omar user using ssh                #"
echo "#############################################################"
echo ""
echo ""
ssh-keygen -R 192.168.50.100
ssh omar@192.168.50.100
