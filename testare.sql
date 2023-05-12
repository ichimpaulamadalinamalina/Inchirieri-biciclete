--stergere bicicleta
EXECUTE  BICICLETE_PACK.DELETE_BICICLETE(1);
EXECUTE  BICICLETE_PACK.DELETE_BICICLETE(98);
--update pret bicicleta
EXECUTE  BICICLETE_PACK.UPD_BICICLETE(1,10);
EXECUTE  BICICLETE_PACK.UPD_BICICLETE(3,10);

--stergere clienti
EXECUTE  CLIENTI_PACK.DEL_CLIENTI(10001);
EXECUTE  CLIENTI_PACK.DEL_CLIENTI(98);
--update adresa/telefon
EXECUTE  CLIENTI_PACK.UPD_CLIENTI_ADRESA(10000,'Iasi, Strada Vasile Lupu');
EXECUTE  CLIENTI_PACK.UPD_CLIENTI_TELEFON(10000,'0754322452');

--stergere inchirieri
EXECUTE  INCHIRIERI_PACK.DEL_INCHIRIERI(1008);
EXECUTE  INCHIRIERI_PACK.DEL_INCHIRIERI(1007);

//testare functii 
execute get_bicicleta(1000);
execute get_client(1000);
execute get_nume(1);
execute get_prenume(1);
execute update_pret();

--vizualizare
EXECUTE  VIZUALIZARE_PACK.VIZUALIZARE_INCHIRIERI_CLIENTI();
EXECUTE  VIZUALIZARE_PACK.VIZUALIZARE_INCHIRIERI();
execute vizualizare_pack.VIZUALIZARE_NR_INCHIRIERI_BICICLETE;

//testarea exceptii inchirieri
execute inchirieri_pack.upd_inchirieri_retur (1023, '14-MAI-2022');
execute inchirieri_pack.upd_inchirieri_retur (1031, '13-MAI-2022');
execute inchirieri_pack.upd_inchirieri_inceput(1031, '13-MAI-2022');
execute inchirieri_pack.upd_inchirieri_inceput(1031, '20-MAI-2022');
