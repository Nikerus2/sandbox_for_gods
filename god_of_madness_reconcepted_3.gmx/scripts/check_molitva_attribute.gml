// Этот скрипт проверяется в стартовой площадке рас, и, в зависимости от выполнения условий, выдает молитвы


if molitva_human01_done = false and IQ>7 and race_type=0 then
{
    ddtyu=instance_create(x,y-50,molitva_obj)
    ddtyu.mother_obj=molitva_human01
    molitva_human01_done = true;
}
molitva_human02_done = false
molitva_human03_done = false
molitva_human04_done = false
molitva_troll01_done = false
molitva_troll02_done = false
molitva_troll03_done = false
molitva_troll04_done = false
molitva_cat01_done = false
molitva_cat02_done = false
molitva_cat03_done = false
molitva_cat04_done = false
