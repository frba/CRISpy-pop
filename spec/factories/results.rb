FactoryBot.define do
  factory :result do
    association :gene
    sgrna_sequence { (0...20).map { %w[A T G C].sample }.join }
    perc_activity { 1.5 }
    chrom { 'I' }
    pos { rand(340...600) }
    gc { rand(10...100) }
    pos_in_gene { rand(300) }
    mismatch_seq { sgrna_sequence }
    strand { '+' }
    num_mis_matches { [0, 1].sample }
    num_off_site_match { [0, 1].sample }
    state { nil }
    has_human_hit { [0, 1].sample }
    strain_coverage { "273614N,378604X,BC187,CBS7960,CLIB324,CLIB382,DBVPG1106,DBVPG1373,DBVPG1788,DBVPG1853,DBVPG6044,DBVPG6765,DCM16,DCM6,EthanolRed,FL100,I14,IL01,K10,K11,K1,K9,L1374,L1528,NC02,NCY3290,NCY3455,NCYC110,NCYC361,PE2,PW5,SB,SK1,T73,UC5,UWOPS03_461_4,UWOPS05_217_3,UWOPS05_227_2,UWOPS83_787_3,UWOPS87_2421,W303,WE372,Y12,Y1,Y2189,Y2209,Y2,Y389,Y3,Y55,Y6,Y7568,YB210,YB4081,YB4082,YB908,YJM1078,YJM1083,YJM1129,YJM1133,YJM1190,YJM1199,YJM1202,YJM1208,YJM1242,YJM1244,YJM1248,YJM1250,YJM1252,YJM1273,YJM1304,YJM1307,YJM1311,YJM1326,YJM1332,YJM1336,YJM1338,YJM1341,YJM1342,YJM1355,YJM1356,YJM1381,YJM1383,YJM1385,YJM1386,YJM1387,YJM1388,YJM1389,YJM1399,YJM1400,YJM1401,YJM1402,YJM1415,YJM1417,YJM1418,YJM1419,YJM1433,YJM1434,YJM1439,YJM1443,YJM1444,YJM1447,YJM1450,YJM1460,YJM1463,YJM1477,YJM1478,YJM1479,YJM1526,YJM1527,YJM1549,YJM1573,YJM1574,YJM1592,YJM1615,YJM189,YJM193,YJM195,YJM244,YJM248,YJM269,YJM270,YJM271,YJM308,YJM320,YJM326,YJM339,YJM421,YJM428,YJM440,YJM450,YJM451,YJM453,YJM454,YJM456,YJM470,YJM541,YJM554,YJM555,YJM627,YJM653,YJM681,YJM682,YJM683,YJM689,YJM693,YJM969,YJM972,YJM975,YJM978,YJM981,YJM984,YJM987,YJM990,YJM993,YJM996,YLLC17_E5,YPS1000,YPS1009,YPS128,YPS163,YPS606,YS2,YS4,YS9,S288C,GLBRCY22-3\n" }
    name { Faker::Name.name }
    association :submission
  end
end
