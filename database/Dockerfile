FROM postgres:14
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl -y && apt-get install wget -y && apt-get install bzip2 -y

# https://skilldepository.com/entries/postgres-polish-dictionary
RUN mkdir full-text-pl
RUN ISPELL_FILE=`curl https://sjp.pl/sl/ort/ | grep -o ">sjp-ispell-pl-.*-src.tar.bz2" | cut -c2-`
RUN wget https://sjp.pl/slownik/ort/`echo $ISPELL_FILE` -P full-text-pl
RUN tar xvjf full-text-pl/sjp-ispell-pl-*-src.tar.bz2 -C /full-text-pl/
RUN mv full-text-pl/sjp-ispell-pl-[0-9]*/ full-text-pl/data
RUN iconv -f ISO_8859-2 -t utf-8 full-text-pl/data/polish.aff > full-text-pl/data/polish.affix
RUN iconv -f ISO_8859-2 -t utf-8 full-text-pl/data/polish.all > full-text-pl/data/polish.dict
RUN curl https://raw.githubusercontent.com/bieli/stopwords/master/polish.stopwords.txt > full-text-pl/data/polish.stop
RUN cp full-text-pl/data/polish.affix `pg_config --sharedir`/tsearch_data/
RUN cp full-text-pl/data/polish.dict `pg_config --sharedir`/tsearch_data/
RUN cp full-text-pl/data/polish.stop `pg_config --sharedir`/tsearch_data/

COPY /database/init_database.sql /docker-entrypoint-initdb.d/01-init_database.sql