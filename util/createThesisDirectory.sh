#!/bin/bash
#input arguments
thesisroot=$@
echo $thesisroot
cd $thesisroot
touch thesis.tex
#front matter:
#Abstract
mkdir abstract
cd abstract
touch abstract.tex
cd ..
#Acknowledgement
mkdir acknowledgement
cd acknowledgement
touch acknowlegement.tex
cd ..
#Dedication
mkdir dedication
cd dedication
touch dedication.tex
cd ..
#back matter:
#Bibliography
mkdir bibliography
#Appendix
mkdir appendix
#the number of chapters in the thesis: 7
#ch1:introduction
#ch2:background
#ch3:Feature-Space models
#ch4:Image-Space models
#ch5:Graph&Hierarchical models
#ch6:Conclusion
#ch7:Future Work
numchapters=7
chapcount=1
#create the chapter directories
while [ $chapcount -le $numchapters ]
do
	cd $thesisroot
	chaptername="chapter$chapcount"
	mkdir $chaptername
	cd $chaptername
	touch $chaptername.tex
	mkdir figs
	cd figs
	#create subdirectories for pdf,eps,svg,png
	mkdir pdf
	mkdir eps
	mkdir svg
	mkdir png
	cd ..
	#directory for notes while creating thesis
	mkdir notes
	#directory for code segments
	mkdir code
	#directory for tables
	mkdir tables
	#directory for misc items
	mkdir misc
	chapcount=$(( $chapcount + 1 ))
done
cd $thesisroot
mkdir ./texutil/


