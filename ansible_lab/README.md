# rodar playbook no ansible
ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key ~/.ssh/terraform-aws

# acesso ssh maquina
ssh -i ~/.ssh/terraform-aws ubuntu@ec2-54-80-121-251.compute-1.amazonaws.com
