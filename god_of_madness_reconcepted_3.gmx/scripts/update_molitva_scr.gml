/*
global.IQH+=global.RES_rubly;
global.IQC+=global.RES_podushka;
global.IQK+=global.RES_vodorosly;
*/
with (race_start_obj)
{
    if IQ>10 then nation_stage=2
    if IQ>30 then nation_stage=3
    
    repeat(10)
    {
        if IQ_plus>=10 then // prirost IQ
        {
            IQ+=1
            IQ_plus-=10
        }
        if amount_plus>=10 then // prirost naseleniya
        {
            amount+=1
            amount_plus-=10
            if object_index=race_1_start_obj then yuuh=instance_create(x-100+random(200),y-100+random(200),nation_1_race_obj)
            if object_index=race_2_start_obj then yuuh=instance_create(x-100+random(200),y-100+random(200),nation_2_race_obj)
            if object_index=race_3_start_obj then yuuh=instance_create(x-100+random(200),y-100+random(200),nation_3_race_obj)
            with (yuuh)
            {
                image_index=other.race_type*3
            }
        } 
    }
    if fav_T=global.T then // Если темература - любимая
    {
        amount_plus+=3*(nation_stage+1)
    }
    if hate_T=global.T then // Если температура - нелюбимая
    {
        IQ_plus+=3*(nation_stage+1)
    }
    if fav_R=global.R then // Если влажность - любимая
    {
        amount_plus+=3*(nation_stage+1)
    }
    if hate_R=global.R then // Если влажность - нелюбимая
    {
        IQ_plus+=3*(nation_stage+1)
    }
    if fav_environment=environment then // Если местность - любимая
    {
        amount_plus+=3*(nation_stage+1)
    }
    if fav_environment=environment then // Если местность - нелюбимая
    {
        IQ_plus+=3*(nation_stage+1)
    }
    IQ_plus+=1;
    amount_plus+=1;
}



/*
    IQ=0; // IQ
    amount=0; // Население
    
    fav_environment=0; // любимое место обитания (равнины-1/пустыня-2/холмы-3/горы-4/острова-5/море-6)
    fav_T=0; // любимая температура  0 - holodno, 1- norm, 2 - zharko.
    fav_R=0; // любимая влажность 0 - suho, 1 - norm, 2 - vlazhno.
    
    hate_environment=0; // нелюбимое место обитания (равнины-1/пустыня-2/холмы-3/горы-4/острова-5/море-6)
    hate_T=0; // нелюбимая температура 0 - holodno, 1- norm, 2 - zharko.
    hate_R=0; // нелюбимая влажность 0 - suho, 1 - norm, 2 - vlazhno.
    
    war_idea=0; // отношение к войне 0 - нет бонуса интеллекта, 1 - единица бонуса - прирост идет только если нация - отстающая в интеллекте, 2 - 2 единицы бонуса интеллекта независимо от того, какой интеллект максимальный
    peace_idea=0; // отношение к дружбе 0 - нет бонуса интеллекта, 1 - единица бонуса - прирост идет только если нация - отстающая в интеллекте, 2 - 2 единицы бонуса интеллекта независимо от того, какой интеллект максимальный
    
    amount_plus=0; // Прирост нации
    IQ_plus=0; // Прирост интеллекта
    
    
    
    direction_type=0; // Направление движения - направление спрайта
    nation_stage=0; // уровень развития нации - при достижении уровня интеллекта, меняется внешний вид нации
    
    war_with_nation_1=0; // состояние войны с другой нацией
    war_with_nation_2=0; // состояние войны с другой нацией
    war_with_nation_3=0; // состояние войны с другой нацией
    
    peace_with_nation_1=0; // состояние дружбы с другой нацией
    peace_with_nation_2=0; // состояние дружбы с другой нацией
    peace_with_nation_3=0; // состояние дружбы с другой нацией
    
*/