Weather forecast GUI for Matlab
===============================
Matlab GUI which illustrates the weather for 10 days including present day.									
Contents
------------------------------
- **Authors**
- **Motivation**
- **Installation**
- **Project**
 - ***Essentials***
 - ***Usage***
- **Copyright** 


									
#Authors
------------------------------
The present Matlab program is a semester project of the following students:

Caterina Berndt  
caterina.berndt@student.jade-hs.de  
Matrikelnummer: 6004908

Philipp Gronotte  
philipp.gronotte@student.jade-hs.de  
Matrikelnummer: 6005858  

Tarik Siebe  
tarik.siebe@student.jade-hs.de  
Matrikelnummer: 6004941

Motivation
-------------------------------
The motivation of the semester project is to use the discussed content of the course 'Daten und Algorithmik'. Although we need the Creditpoints as well.

Installation
-------------------------------
<p> Download all the files manually in one directory and run 'GUI.m' in Matlab. That's it.</p>

<p>A second possibility is to clone our Git-repository from the following link:</p>

[https://github.com/PhilippGronotte/DalgoProjekt1.git](https://github.com/PhilippGronotte/DalgoProjekt1.git)

  <p>After sucessfully cloning the repository go to the selected directory and run 'GUI.m' in Matlab

  For further information about 'git' feel free to follow this link:</p>

  [http://git-scm.com/](http://git-scm.com/)

The program was sucessfully tested with Matlab R2013a Student Version (8.1.0.604) under Windows 8.1 and Windows 7 Starter (Service Pack 1)
Project
-------------------------------
### Essentials

The project includes following files:

- GUI.m
- getweatherxml.m
- cell2vec.m
- wetterplots.m
- Tagesanzeige.m

After the first execution you will also find a file called:

- weather.xml

in the chosen programm directory.

The program updates its weather data from www.wunderground.com. A working internet conection is necessary for that reason.

The program is completely in German language. Further information in English language can be found in 'Usage'.

### Usage
In the following the general usage of the GUI ist shortly described. The first picture represents the user interface.

![User Interface](http://i1295.photobucket.com/albums/b635/Phoenix_Granite/explanation_zps5128c171.jpg)

The first  programpart ist quite selfexplaining. It shows the plot of the actual chosen weather data.

![Plot of weather data](http://i1295.photobucket.com/albums/b635/Phoenix_Granite/explanation5_zpse173f0e7.jpg)

The displayed data can be chosen in the dropdown menu below the plot.

![Dropdown menu](http://i1295.photobucket.com/albums/b635/Phoenix_Granite/explanation2_zpsbbb714c3.jpg)

The radiobutton menu allows to choose a day whose weather data is said to be shown in detail.

![Radiobutton group](http://i1295.photobucket.com/albums/b635/Phoenix_Granite/explanation3_zps54e574d6.jpg) 

The detailed weather data for the chosen day can be found below the dropdown menu in several textboxes.

![Textboxes](http://i1295.photobucket.com/albums/b635/Phoenix_Granite/explanation5_zpse173f0e7.jpg)

On the right side is a short oversight placed which shows the actual date as well as the maximum and the minimum temperature.

At long last, a short overview on the features:

- 10 days weather forecast

- Individual plottable weather data of:
  - Min und max Temp. 
  - Min Temp
  - Max Temp
  - Niederschlagsmenge in mm (rainfall)
  - Luftfeuchtigkeit in % (humidity)
  - Regenwahrscheinlichkeit in % (chance of rain)
  - Windgeschwindigkeit in km/h (windspeed)
  - Neuschneemenge in cm (snowfall in cm)

- Each day with related data single displayable  

Copyright
---------------------------------

###Licence 

Copyright (c) <2014> Caterina Berndt,Philipp Gronotte,Tarik Siebe
Institute for Hearing Technology and Audiology
Jade University of Applied Sciences 
Permission is hereby granted, free of charge, to any person obtaining 
a copy of this software and associated documentation files 
(the "Software"), to deal in the Software without restriction, including 
without limitation the rights to use, copy, modify, merge, publish, 
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject
to the following conditions:

The above copyright notice and this permission notice shall be included 
in all copies or substantial portions of the Software.


THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.