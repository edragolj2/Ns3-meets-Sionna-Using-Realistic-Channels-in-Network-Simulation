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

Indoor scenarij prikazuje WiFi komunikaciju kroz dvoje otvorenih vrata između dvije sobe, pri čemu signal s pristupne tačke u lijevoj sobi mora proći kroz vrata i reflektovati se kako bi stigao do uređaja bez direktne vidljivosti, uz gubitke zbog refleksije i apsorpcije.

*Konceptualna shema Indoor scenarija je prikazana na slici 1 :*

<p align="center">
<img src="Slike/indoor_Uporedni_prikaz.jpg" ">
<br>
Slika 2: Indoor scenario
</p>

## Outdoor scenario

Outdoor scenarij prikazuje WiFi komunikaciju u realističnom urbanom okruženju oko crkve Frauenkirche u Minhenu, gdje se klijentski uređaj nasumično kreće, a pristupna tačka je statična. Signal se često reflektuje od zgrada zbog nedostatka direktne vidljivosti, što uzrokuje povećano kašnjenje i gubitke.

<p align="center">
<img src="Slike/outdoorrxovertime_uporedni_prikaz.jpg" ">
<br>
Slika 3: Outdoor scenario
</p>

## Zaključak

U ovom radu uspješno je realizovana integracija Sionna biblioteke s ns-3 simulatorom korišćenjem Ns3Sionna modula, čime je omogućeno izvođenje simulacija sa realističnim 3D kanalnim modelima. Simulacije u različitim scenarijima (indoor i outdoor) i evaluacija performansi sistema kroz variranje parametara potvrdile su da ova integracija omogućava znatno realističniju analizu u poređenju s tradicionalnim modelima propagacije.

Rezultati su pokazali visoku podudarnost sa referentnim radom, potvrđujući ispravnost konfiguracije i tačnost dobijenih rezultata. Mehanizmi poput keširanja i paralelnih proračuna pokazali su se ključnim za efikasnost, posebno u mrežama sa velikim brojem uređaja.

Dodatni doprinos rada ogleda se u kreiranju nove scene i izvođenju simulacija u korisnički definisanom okruženju, čime je potvrđena fleksibilnost pristupa i njegova primjenjivost u različitim scenarijima, uključujući buduće 6G sisteme.

Važno je naglasiti da ovakve simulacije zahtijevaju značajne hardverske resurse, naročito u scenarijima sa velikim brojem čvorova i visokom mobilnošću, zbog čestih i složenih proračuna kanala. Zbog toga pojedine simulacije nisu mogle biti završene, jer bi trajale predugo čak i na naprednim virtuelnim mašinama, što ukazuje na potrebu za dodatnim optimizacijama ili snažnijim resursima.

Zaključno, rad pokazuje da integracija ns-3 i Sionna biblioteke otvara nove mogućnosti za detaljnije i realističnije analize u istraživanju savremenih komunikacionih sistema.


