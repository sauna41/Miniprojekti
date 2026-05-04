# Miniprojekti
<sup>Tämä projekti on osa Haaga-Helian Palvelinten Hallinta -opintojaksoa</sup>

#### Kuvaus

Projekti automatisoi uuden Debian-virtuaalikoneen peruskonfigurointeja Ansiblella. Tarkoituksena on nopeuttaa uuden palvelimen käyttöönottoa ja vähentää manuaalista asennustyötä tuoreen virtuaalikoneen parissa.

**Projektissa toteutetaan:**
- hostname-asetus (promptilla)
- staattinen IP-osoite (promptilla)
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
  ├── inventory
  ├── playbook.yml
  ├── setup.sh 
  ├── vars.yml 
  └── roles/
```


Tekijät:
_Sami Hiltunen & Henri Äikäs_
