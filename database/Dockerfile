FROM postgres:14
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl -y && apt-get install wget -y && apt-get install bzip2 -y

# https://skilldepository.com/entries/postgres-polish-dictionary
RUN ISPELL_FILE=`curl https://sjp.pl/sl/ort/ | grep -o ">sjp-ispell-pl-.*-src.tar.bz2" | cut -c2-`; \
    wget https://sjp.pl/slownik/ort/`echo $ISPELL_FILE` -P full-text-pl ; \
    tar xvjf full-text-pl/sjp-ispell-pl-*-src.tar.bz2 -C /full-text-pl/ ; \
    mv full-text-pl/sjp-ispell-pl-[0-9]*/ full-text-pl/data ; \
    iconv -f ISO_8859-2 -t utf-8 full-text-pl/data/polish.aff > full-text-pl/data/polish.affix ; \
    iconv -f ISO_8859-2 -t utf-8 full-text-pl/data/polish.all > full-text-pl/data/polish.dict ; \
    curl https://raw.githubusercontent.com/bieli/stopwords/master/polish.stopwords.txt > full-text-pl/data/polish.stop ; \
    cp full-text-pl/data/polish.affix `pg_config --sharedir`/tsearch_data/ ; \
    cp full-text-pl/data/polish.dict `pg_config --sharedir`/tsearch_data/ ; \
    cp full-text-pl/data/polish.stop `pg_config --sharedir`/tsearch_data/

COPY /database/init_database.sql /docker-entrypoint-initdb.d/01-init_database.sql