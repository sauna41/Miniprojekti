# Miniprojekti
<sup>Tämä projekti on osa Haaga-Helian Palvelinten Hallinta -opintojaksoa keväällä 2026</sup>

### Kuvaus

Projekti automatisoi uuden Debian-virtuaalikoneen peruskonfigurointeja Ansiblella. Tarkoituksena on nopeuttaa uuden palvelimen käyttöönottoa ja vähentää manuaalista asennustyötä tuoreen virtuaalikoneen parissa.

**<img width="435" height="172" alt="image" src="https://github.com/user-attachments/assets/fdbbfbd9-2d27-440c-a473-86db24536299" />**

**Projektissa toteutetaan:**
- hostname-asetus (promptilla)
- staattinen IP-osoite (promptilla)
- verkkomaski (promptilla)
- yhdyskäytävä (promptilla)
- dns-palvelimet (promptilla)
- uuden käyttäjän luonti
- sudo-oikeudet uudelle käyttäjälle
- SSH-avain generointi ja kirjautuminen
- root-käyttäjän SSH- ja salasanakirjautumisen estäminen
- palomuuri (UFW)
- SSH- ja HTTP-porttien ottaminen käyttöön
- Nginx web-palvelimen käynnistäminen
- perustyökalujen asentaminen (curl, git, htop, micro, wget)

### Projektin rakenne

```
miniprojekti/
  ├── hosts.ini
  ├── playbook.yml
  ├── setup.sh 
  ├── vars.yml 
  └── roles/
      ├── hostname/
      ├── nginx/
      ├── ufw/
      ├── ip/
      ├── packages/
      ├── user/
      └── security/
```

### Ajaminen

Projekti suoritetaan ajamalla **bash setup.sh** -skripti, joka päivitää paketit, asentaa ansiblen ja ajaa sen jäkeen playbookin. Ansiblen avulla määritetään verkkokonfiguraatiot, luodaan uusi sudo käyttäjä, otetaan SSH-käyttöön ja käynnistetään nginx-palvelin.

### Testaus

SSH-yhteys:

      ssh USER@<IP-ADDRESS>
      
Nginx selaimessa:

    http://<IP-ADDRESS>



_________________________________________________________________________________________________

Tekijät:
_Sami Hiltunen & Henri Äikäs_
