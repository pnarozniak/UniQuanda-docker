# Stawianie środowiska lokalnego

1. Pobrać repozytorium backendowe do folderu `C:\UniQuanda`
2. Za 1 razem wykonać `docker-compose up --builld`, za każdym kolejnym `docker-compose up`
3. Wejść na localhost:12001 i zalogować się za pomocą loginu `admin@uniquanda.pl` i hasła `uniquanda`.
4. Postgres Tools > Import / Export Servers... 
5. Kliknąć na folder i w górnym menu wybrać przesyłanie pliku i przesłać plik `C:\UniQuanda\UniQuanda-Docker\pgadmin\config.json` Po załadowaniu się na 100% kliknąć cancel.
6. Znowu kliknąć na folder, wybrać plik i następnie select po czym next
7. Zaznaczyć wszystkie serwery i kliknąć next, potem finish.
8. W rozwijanej liście serwerów wybrać serwer > PPM > Connect. Hasło to `uniquanda` (Można sobie zapamiętać)

# Porty usług
### Backend 1 
* http: 3001 
* https: 3002
### Backend 2
* http: 3011 
* https: 3012
### Load balancer: 
* http: 80 
* https: 443
### Frontend
* http: 4200
### Baza danych dla aplikacji
* Postgres 9001
### Redis (Do przetestowania)
* Redis: 6001
### Serwer autoryzacji
* http: 11001 
* https: 11002
### Baza danych serwera autoryzacji
* Postgres: 10001
### PGAdmin4
* http: 12001

# Stawianie poczty

_Wymagania wstępne_
* plik certyfikatu key.pem (prywatny klucz)
* plik certyfikatu cert.pem (certyfikat wraz z ścieżką certyfikacji)
* serwer z publicznym adresem IP
* domena

_Aktualnie można pobrać certyfikat i klucz z serwera mailowego z folderu /home/cert_

## Instalacja Dockera
[Więcej informacji](https://docs.docker.com/engine/install/debian/)
* ```apt-get update ```
* ```curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg ```
* ``
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null ``
* ```apt-get update```
* ```apt-get install docker-ce docker-ce-cli containerd.io```

## Instalacja Docker-Compose
[Więcej informacji](https://docs.docker.com/compose/install/)
* ```curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose```
* ```chmod +x /usr/local/bin/docker-compose```
## Instalacja Poczty
[Więcej informacji](https://mailu.io/1.9/)
1. Wejść do folderu docker-compose.yml i ustawić adres IP zgodny z adresem IP serwera na którym ma stać poczta dla kontenera front w sekcji ports.
2. Stworzyć folder /home/mailing na serwerze do którego wrzucić zawartość folderu mailing.
3. Za pomocą SSH wykonać ``` docker-compose build ``` po czym ``` docker-compose up ```

## Instalacja Certyfikatu SSL
[Więcej informacji](https://mailu.io/master/maintain.html#external-certs)
1. Do folderu mailing przesłać plik key.pem i cert.pem
2. W SSH wykonać ``` docker ps ``` by wyświetlić listę kontenerów
3. W SSH będąc w folderze `home/mailing/` wykonać ``` docker cp key.pem <Hash kontenera którego nazwa to front>:/ ```
4. W SSH będąc w folderze `home/mailing/` wykonać ``` docker cp cert.pem <Hash kontenera którego nazwa to front>:/ ```
5. W SSH będąc w folderze `home/mailing/` wykonać ``` docker exec -it <Hash kontenera którego nazwa to front> /bin/bash  ```
6. W SSH wykonać ``` cp key.pem /certs/key.pem ```
7. W SSH wykonać ``` cp cert.pem /certs/cert.pem ```
8. W SSH wykonać ``` nginx -s reload ```

## Logowanie się na konto administratora
Dane logowania na konto administratora znajdują się w pliku mailu.env w zmiennych
* INITIAL_ADMIN_ACCOUNT=my_username
* INITIAL_ADMIN_PW=my_password
* INITIAL_ADMIN_DOMAIN=abc.def.pl
