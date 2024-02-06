movement();
collision();
atrirar();
leveis();

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

if(keyboard_check(ord("Q")))
{
global._leveis++;
}