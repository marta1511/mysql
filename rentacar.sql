select sum(a.ukupan_iznos_najma) as ukupno,
c.marka 
from iznajmljivanje a 
inner join vozilo b on a.vozilo=b.sifra
inner join model c 
on b.model=c.sifra
where marka='Mercedes-Benz' or marka='BMW'
group by marka
having sum(ukupan_iznos_najma);