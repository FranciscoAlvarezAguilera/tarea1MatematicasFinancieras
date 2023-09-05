# Francisco Alvarez Aguilera - Matematicas Financieras LACD
#La función imprime de salida la información individual de la tabla de posiciones
# de cada equipo de la Premier Lueague actualizada hasta la fecha 4 de la 23/24
# utilizando el operador ´switch´ para ello.
switchPersonal = function(EquipoPremierLeague){
  switch(EquipoPremierLeague,
         "Manchester_City" = {respuesta = " 1   4   4  0  0  11  2   +9   12   GGGG"},
         "Tottenham" =       {respuesta = " 2   4   3  1  0  11  4   +7   10  GGGE"},
         "Liverpool" =       {respuesta = " 3   4   3  1  0   9  4   +6  10   GGGE"},
         "West_Ham" =        {respuesta = " 4   4   3  1  0  9   3   +5  10   GGGE"},
         "Arsenal" =         {respuesta = " 5   4   3  1  0  8   4   +4  10   GEGG"},
         "Brighton" =        {respuesta = " 6   4   3  0  1  12  6   +6   9   GPGG"},
         "Crystal_Palace" =  {respuesta = " 7   4   2  1  1  5   4   +1   7   GGGE"},
         "Brentford" =       {respuesta = " 8   4   1  3  0  8   5   +3   6   EEGE"},
         "Nottingham_Forest"={respuesta=  " 9   4   2  0  2  6   6    0   6   GPGP"},
         "Aston_Villa" =     {respuesta = "10   4   2  0  2  8   9   -1   6   PGGP"},
         "Manchester_United"={respuesta = "11   4   2  0  2  5   7   -2   6   PGPG"},
         "Chelsea" =         {respuesta = "12   4   1  1  2  5   5    0   4   PGPE"},
         "Fulham" =          {respuesta = "13   4   1  1  2  4   10  -6   4   PEPG"},
         "Newcastle" =       {respuesta = "14   4   1  0  3  7   7    0   3   PPPG"},
         "Wolves" =          {respuesta = "15   4   1  0  3  4   8   -4   3   PGPP"},
         "Bournemouth" =     {respuesta = "16   4   0  2  2  4   8   -4   2   EPPE"},
         "Sheffield_United"= {respuesta = "17   4   0  1  3  4   7   -3   1   EPPP"},
         "Everton" =         {respuesta = "18   4   0  1  3  2   8   -6   1   EPPP"},
         "Luton" =           {respuesta = "19   3   0  0  3  2   9   -7   0   PPP "},
         "Burnley" =         {respuesta = "20   3   0  0  3  3  11   -8   0   PPP "},
         {respuesta="Este equipo no existe o no juega en Premier League 23/24"})
  
  print("Pos  PJ  G  E  P  GF  GC  DG  PTS  Forma")
  print(respuesta)
}
