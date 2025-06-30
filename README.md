# Ns3-meets-Sionna-Using-Realistic-Channels-in-Network-Simulation

## Opis rješenja
Rastuća potreba za komunikacijskim sistemima visokih performansi, koji su pouzdani i koji se
adaptiraju na mrežnu infrastrukturu, dovela je do sve većih zahtjeva za vjernim simulacijama,
koje su ključne za testiranje i validaciju bežičnih mrežnih protokola i arhitektura. Ns-3 inherentno koristi stohastičke i empirijske modele koji ne uzimaju u obzir prostorne karakteristike
okruženja, što dovodi do nerealnih i neupotrebljivih simulacija. Nemogućnost izvođenja vjerodostojnih simulacija za potrebe testiranja protokola indirektno ugrožava kvalitetu usluge (eng.
Quality of Service – QoS), koja podrazumijeva zagarantovane mrežne performanse. Tu na scenu
stupaju realistični modeli kanala i propagacije signala, a jedan od takvih je i ray tracing model.

## Postavka okružeja

Tradicionalni modeli u ns-3 simulatoru, kao što su Friisov model ili log-normal fading model, karakterišu se korištenjem pojednostavljenih matematičkih pristupa koji zanemaruju fizičke prepreke u prostoru (kao što su zidovi, namještaj ili zgrade), što često dovodi do nerealnih rezultata, naročito u zatvorenim i složenim okruženjima.

U radu predstavljen je softverski dodatak za ns-3 pod nazivom Ns3Sionna, koji omogućava realističnije simulacije bežičnih mreža korištenjem naprednog ray tracing modela za propagaciju signala.

Autori rada integrisali su Sionna RT, biblioteku za ray tracing simulaciju elektromagnetnih talasa u trodimenzionalnom prostoru. Ova biblioteka omogućava detaljnu analizu načina na koji se signal reflektuje, raspršuje i apsorbuje u zavisnosti od materijala i geometrije prepreka u okruženju. Na osnovu izračunatih putanja talasa dobijaju se podaci o impulsnom odzivu kanala, koji se dalje koriste za izračunavanje frekvencijskog odziva kanala, gubitka jačine signala (path loss) i kašnjenja signala.

## Arhitektura NS3Sionna



*Konceptualna shema NS3Sionna sistema je prikazana na slici 1 :*

<p align="center">
<img src="Slike/arhitektura.jpg" ">
<br>
Slika 1: Arhitektura NS3Sionna
</p>

## Indoor scenario
ChatGPT said:
Indoor scenarij prikazuje WiFi komunikaciju kroz dvoje otvorenih vrata između dvije sobe, pri čemu signal s pristupne tačke u lijevoj sobi mora proći kroz vrata i reflektovati se kako bi stigao do uređaja bez direktne vidljivosti, uz gubitke zbog refleksije i apsorpcije.

*Konceptualna shema Indoor scenarija je prikazana na slici 1 :*

<p align="center">
<img src="Slike/indoor_Uporedni_prikaz.jpg" ">
<br>
Slika 1: Indoor scenario
</p>

