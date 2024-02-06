movement();
collision();
atrirar();

//checando se o delay esta maior que 1
if (global.atira_delay == 1)
{
 global.atira_delay--;
}

//checando se o delay esta menor que 1
else
{
 global.atira_delay++;
}
