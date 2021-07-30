# Trabajo_Final_Grupo7

#Scraping de las paginas escogidas y análisis de las mismas.

En el siguiente READme, se analizaran las siguientes paginas:

1. [imdb](https://www.imdb.com/ "imdb")
2. [filmaffinity](https://www.filmaffinity.com/cl/main.html "filmaffinity")
3. [rottentomatoes](https://www.rottentomatoes.com/ "rottentomatoes")

## Pagina 1 imdb.com - integrante: Juan Pablo Faúndez (grupo 7)


# Definicion de pagina

Internet Movie Database (IMDb, en español: Base de datos de películas en Internet)
es una base de datos en línea que almacena información relacionada con películas,
personal de equipo de producción (incluyendo directores y productores), actores,
series de televisión, programas de televisión, videojuegos, actores de doblaje y,
más recientemente, personajes ficticios que aparecen en los medios de entretenimiento visual.
Recibe más de 100 millones de usuarios únicos al mes y cuenta con una versión móvil.
IMDb fue inaugurada el 17 de octubre de 1990 y en 1998 fue adquirida por Amazon.com.

# Eleccion de la pagina e informacion a sacar

La gracia de esta pagina o el porque escogi esta pagina para realizar el scraping,
es debido a que contiene muchisima informacion en tablas lo cual hace mas facil
sacar la informacion con la herramienta "rvest", ademas de que casi todos los apartados,
son bases de datos muy completas y definidas.

La informacion que se busca sacar en esta pagina en particular es, sacar un listado
de peliculas mejores valorados por los mismos usuarios de la pagina Imdb, ademas 
de sacar su respectivo año, calificacion (Rating) y sus respectivos links. Lo anterior,
nos permitira realizar comparaciones, con mis compañeros de grupo, ya sea en cual
es la mejor pelicula, cual es la mejor puntuada, los generos mas populares,
la pelicula mas popular, por mencionar algunos analisis rapidos.

ademas, se busca encontrar tendencias ya sea en cual es la mejor pelicula segun
rating, y si esta pelicula se repite en las paginas, si la popularidad de las
peliculas se mantienen en las paginas e incluso comprender el porque las 
peliculas se encuentran en la posiciones en las que estan

# Metodologia

Para sacar la informacion de esta pagina, se utiliza el paquete de herramientas
"rvest", el cual tiene que ser instalado previamente a su uso en RStudio, esta
herramienta nos permite sacar elementos de la pagina, ya sea de una <tabla>, un
<div>, las diferentes clases que tenga los elementos de la pagina, etc.

se utilizo html_read para ingresar la pagina y su respectivo print sumado el html_text
para mostrar el contenido de la pagina. Luego, se utiliza el html_nodes para filtrar los
distintos contenidos que se buscan sacar, segun su clase, por ejemplo, sacar 
el nombre o el año de las peliculas. 

Tambien se utilizo html_attrs, el cual nos permite sacar los links que estan 
asociados a distintos elementos, ya sea a la pagina propia de una pelicula entre 
otros.

Un elemento que nos llego a simplicar la tarea de limpiar la informacion (utilizando
el comando "gsub"), fue utilizar html_text2 y no el html_text normal, simplemente
porque el html_text2 nos mostraba la informacion mas limpia.

En algunas casos se utilizaron herramientas propias de Rstudio como el if o el for, 
las cuales nos permitieron realizar procesos que nos facilitaban la extraccion 
de la informacion, y ademas de mostrar informacion mas precisa.

Finalmente, teniendo todas las variables con la informacion que buscabamos, 
realizamos la creacion del data.frame, el cual nos permite ordenar la informacion
de las variables creadas con anterioridad, y nos la arroja en una tabla. Dicha 
tabla despues, la podemos transformar en un archivo excel(csv), con el comando
write.csv, el cual nos crea el archivo. En este caso tambien utilizamos 
write.csv2 en vez del normal (write.csv), ya que nos arrojaba la informacion
mucho mas ordenada en el excel.

# Algunas conclusiones

Encuentro que la herramienta "rvest" es muy buena para extraer informacion de 
las paginas, sus comandos (si se conocen de buena manera) son amigables y faciles
de usar, ademas de ser bien descriptivos. Ahora bien, esto depende mucho si 
la pagina a extraer informacion es amigable, esta bien confeccionada, entre otros.

En el caso particular de IMDB, algunos elementos fueron sumamante faciles de extraer,
pero otros no, me encontre con varias barreras, las cuales algunas fueron superadas, 
incluso necesite la ayuda de mis compañeros tanto como la de mi profesor, para 
poder sacar la informacion que queria.

En terminos generales, IMDB es una muy buena pagina, con bastante informacion 
a extraer y analisar, el unico pero, es que es muy masiva y cualquier persona se
puede inscribir en ella, pudiendo crear ciertos sesgos en algunos resultados 
de las peliculas.

###############################################################################

## Pagina 2 Filmaffinity - integrante: Hector Arrue (grupo 7)

# FILMAFFINITY

Repositorio creado para la obtecion de informacion de la pagina web **Filmaffinity** si quieres saber mas de esta pagina puedes hacer click [aqui](https://www.filmaffinity.com/cl/topgen.php?genre=&fromyear=&toyear=&country=&nodoc&notvse "aqui"), la pagina fue elegida en base a la informacion que el grupo en su conjunto queria obtener, es por este motivo que elegimos filmafinity ya que nos permitia comprobar cuales eran los top de peliculas segun las criticas de expertos y de usuarios.
Luego de definir nuestra pagina web con la cual queremos trabajar podremos obtener la siguiente informacion la cual nos permitira realizar nuestro trabajo, donde destaca lo siguiente.


- 
*Titulo de la pelicula y año*
- 
*Director de la pelicula*
- 
*Notas promedio de lo usarios de filmafinity a la pelicula*
- 
*Link de la pelicula* 
- 
*cantidad de reviews*

# Metolodigia
La metodologia utilizada para la obtencion de la informacion, fue mediante lo visto en clases, en primer lugar esta el *titulo de la pelicula y su año* , donde mediante comandos de **htlml_read** y **html_nodes**  se obtuvieron los distintos titulos que segun los usarios de **Filmafinity** son los mejores donde destacan:

-  El padrino  (1972)   
- El Padrino: Parte II  (1974)
- 12 hombres en pugna  (1957)  
- La lista de Schindler  (1993)   
- Testigo de cargo  (1957) 

Estos titulos seran comparados con las otras paginas web seleccionadas para saber que titulos se encuentran en ambas paginas de puntuaciones.

#### Directores
Ademas de obtener las peliculas tambien se obtuvo los directores que participaban en estas peliculas, si bien esto no es tan importante en nuestra investigacion, nunca esta de mas saber cual es el director de las mejores peliculas de todos los tiempos, la obtencion de estos datos fue mediante **html_nodes** y **css** y mediante print, paste podemos dejar el titulo de la pelicula y su director.

#### Promedio de notas de las peliculas
Estos promedios estan en base a las distintas notas que los usuarios de *filmafinity*  y mediante estas notas podemos comparar, las distintas notas que los usarios le dan a cada pelicula, y mediante estas se da un promedio general a cada pelicula, y con esto se puntua el ranking.


#### Link de pelicula
El link de la pelicula es netamente lo que dice su nombre, es el link que nos llevara directo a cada pagina de la siguiente manera [El padrino](https://www.filmaffinity.com/cl/film809297.html "El padrino"), y asi con todas las peliculas que se encuentran en el top.

#### Reviews
Las reviews, como lo dice su nombre es la cantidad de reviews que los usuarios de filmafinity le realizaron a las peliculas, estos datos fueron extraidos mediante **htlml_nodes** con estos numeros podemos observar la cantidad de personas que puntuaron las distintas peliculas.


#### Conclusiones filmaffinity
En conclusion, filmaffinity es una pagina amigable y su uso es bastante facil para la mayoria de los usuarios que quisieran saber mas sobre que peliculas podrian ver, un punto debil de esta pagina, es que las notas no son otorgado por personas expertas en cine, si no que son otorgados por los mimos usuarios, por lo cual el peso del top de estas peliculas no tendria tanto peso en comparacion con otras medidas de distintas paginas.
Por otro lado tambien se pueden obtener dentro de la misma pagina web top por cada pais, de peliculas, series u otros interes al gusto del usuario.

###############################################################################

## Pagina 3 RottenTomatoes - integrante: Jeremias Silva (grupo 7)

Esta página es ampliamente conocida por los fanáticos del cine y de las producciones de TV, sobretodo por su "tomatometro", el cual consiste en un porcentaje que certifica cuán fresca ("fresh") o cuán podrida ("rotten") es una película o serie, según las críticas de expertos dedicados de Estados Unidos y de el mundo. 
	   
Desde esta página se quiso recoger información sobre cuáles son las mejores películas de la historia, donde se pudo encontrar un ranking de las "100 mejores películas de todos los tiempos" en un apartado. Lo anterior, con motivo de comparar este ranking y el o los primeros deciles con otros rankings de páginas similares con críticas de expertos o de los mismos fans, para averiguar cómo varían los títulos en estos "top", cuánto varían las calificaciones entre sitios y ver la variabilidad entre las preferencias de críticos expertos y la audiencia o los fans. 
	   
Finalmente, desde esta página se pudo extraer una base de datos con este top 100 de títulos, sus respectivos links, la calificación de los críticos (en %) y el número de "reviews" por cada película.


###############################################################################

#### Conclusiones en conjunto

Independiente de los resultados de las paginas, en relacion al posicionamiento 
de los titulos, ya sea ranking de cual es la mejor pelicula o en terminos de 
popularidad, no significa que una pelicula o pieza audiovisual sea mejor o
peor que otra, simplemente las paginas utilizan criterios distintos, como por 
mencionar un ejemplo, algunas paginas usan criticas especializadas y otras 
criticas o reviews de usuarios suscritos a las paginas. 

Complementariamente, los distintos rankings pueden ir variando, por las notas 
de las peliculas, por que a los usuarios le gusto un actor/actriz que aparece
en la cinta, la pelicula genera distintas sensaciones y expectativas para cada 
individuo, la pelicula es una secuela, en fin, podemos mencionar muchos ejemplos
de distintos criterios que pueden llegar a afectar los distintos rankings que 
ofrecen estas paginas. De este modo no podemos concluir que, una pagina es 
mejor que otra, o mas en especifico, que una pelicula sea mejor o peor que otra 
solo por que aparece en el listado de estas paginas.

Se puede apreciar ademas, en el top 10 de peliculas en las distinas paginas, que
existen variaciones tanto en las posiciones en el ranking, como en las calificaciones
otorgadas. Principalmente este fenomeno se debe a que cada una de las paginas
usa distintos criterios de evaluacion, una utiliza las reviews de los mismos 
usuarios de la pagina, otra recopila la critica especializada, alguna realizan
una combinancion de ambos.

Ademas, identificamos que en el top 10 de mejores peliculas, muchas peliculas
son de años anteriores al año 2000, infiriendo que quizas la calidad de imagen y 
efectos especiales (por mencionar algunos elementos en relacion a la tecnologia) 
no afectan para nada en la puntuacion que las peliculas puedan llegar a tener,
valorando mas elementos como el argumento, la actuacion, la trama de las mismas
por mencionar algunos elementos que no tienen relacion con la tecnologia y 
tecnicas de esos años.







