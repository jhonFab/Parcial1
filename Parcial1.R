poblacion <- c(29.66, 7.61, 6.35, 4.10, 3.8, 2.75, 2.70, 2.69, 2.51, 2.44,
               77.81, 35.50, 24.79, 20.02, 16.70, 9.39, 9.38, 8.76, 7.63, 7.5,
               8.68, 7.31, 6.02, 2.64, 1.75, 1.72, 1.51, 1.42, 1.31, 1.29,
               110.21, 32.14, 18.88, 16.38, 13.37, 11.92, 10.71, 7.8, 7.7, 7);
paises <- c("argentina","argentina","argentina","argentina","argentina","argentina",
            "argentina","argentina","argentina","argentina","usa","usa","usa","usa","usa",
            "usa","usa","usa","usa","usa","holanda", "holanda", "holanda","holanda","holanda",
            "holanda","holanda","holanda","holanda","holanda","japon", "japon",
            "japon","japon","japon","japon","japon","japon","japon","japon");

bplot = boxplot(poblacion~paises, main='Población de ciudades por país en el año 1967');