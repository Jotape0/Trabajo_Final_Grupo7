

##Pagina imdb.com - integrante: Juan Pablo Faúndez (grupo 7)


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

