#!/bin/bash
echo "0 0 0 0">a.txt
echo "0 0 0 0">b.txt
echo "0 0 0 0">c.txt
echo "0 0 0 0">d.txt

while true; do
	g++ graczA.cpp
	./a.out
	a1=$(cat a2.txt | cut -f1 -d" ")
	a2=$(cat a2.txt | cut -f2 -d" ")
	a3=$(cat a2.txt | cut -f3 -d" ")
	a4=$(cat a2.txt | cut -f4 -d" ")
	b1=$(cat b2.txt | cut -f1 -d" ")
	b2=$(cat b2.txt | cut -f2 -d" ")
	b3=$(cat b2.txt | cut -f3 -d" ")
	b4=$(cat b2.txt | cut -f4 -d" ")
	c1=$(cat c2.txt | cut -f1 -d" ")
	c2=$(cat c2.txt | cut -f2 -d" ")
	c3=$(cat c2.txt | cut -f3 -d" ")
	c4=$(cat c2.txt | cut -f4 -d" ")
	d1=$(cat d2.txt | cut -f1 -d" ")
	d2=$(cat d2.txt | cut -f2 -d" ")
	d3=$(cat d2.txt | cut -f3 -d" ")
	d4=$(cat d2.txt | cut -f4 -d" ")

	cat plansza.txt | sed "s/\<$a1\>/A/g" | sed "s/\<$a2\>/A/g" | sed "s/\<$a3\>/A/g" |sed "s/\<$a4\>/A/g" | sed "s/\<$b1\>/B/g" | sed "s/\<$b2\>/B/g" | sed "s/\<$b3\>/B/g" | sed "s/\<$b4\>/B/g" | sed "s/\<$c1\>/C/g" | sed "s/\<$c2\>/C/g" |  sed "s/\<$c3\>/C/g" |  sed "s/\<$c4\>/C/g" |  sed "s/\<$d1\>/D/g" |  sed "s/\<$d2\>/D/g" |  sed "s/\<$d3\>/D/g" |  sed "s/\<$d4\>/D/g" | sed 's/\<[0-9]\>/#/g' | sed  's/\<[0-9][0-9]\>/# /g'

	cp a2.txt a.txt
	cp b2.txt b.txt
	cp c2.txt c.txt
	cp d2.txt d.txt
	
	sleep 2
	g++ graczB.cpp
	./a.out
	a1=$(cat a2.txt | cut -f1 -d" ")
	a2=$(cat a2.txt | cut -f2 -d" ")
	a3=$(cat a2.txt | cut -f3 -d" ")
	a4=$(cat a2.txt | cut -f4 -d" ")
	b1=$(cat b2.txt | cut -f1 -d" ")
	b2=$(cat b2.txt | cut -f2 -d" ")
	b3=$(cat b2.txt | cut -f3 -d" ")
	b4=$(cat b2.txt | cut -f4 -d" ")
	c1=$(cat c2.txt | cut -f1 -d" ")
	c2=$(cat c2.txt | cut -f2 -d" ")
	c3=$(cat c2.txt | cut -f3 -d" ")
	c4=$(cat c2.txt | cut -f4 -d" ")
	d1=$(cat d2.txt | cut -f1 -d" ")
	d2=$(cat d2.txt | cut -f2 -d" ")
	d3=$(cat d2.txt | cut -f3 -d" ")
	d4=$(cat d2.txt | cut -f4 -d" ")

	cat plansza.txt | sed "s/\<$a1\>/A/g" | sed "s/\<$a2\>/A/g" | sed "s/\<$a3\>/A/g" |sed "s/\<$a4\>/A/g" | sed "s/\<$b1\>/B/g" | sed "s/\<$b2\>/B/g" | sed "s/\<$b3\>/B/g" | sed "s/\<$b4\>/B/g" | sed "s/\<$c1\>/C/g" | sed "s/\<$c2\>/C/g" |  sed "s/\<$c3\>/C/g" |  sed "s/\<$c4\>/C/g" |  sed "s/\<$d1\>/D/g" |  sed "s/\<$d2\>/D/g" |  sed "s/\<$d3\>/D/g" |  sed "s/\<$d4\>/D/g" | sed 's/\<[0-9]\>/#/g' | sed  's/\<[0-9][0-9]\>/# /g'

	cp a2.txt a.txt
	cp b2.txt b.txt
	cp c2.txt c.txt
	cp d2.txt d.txt
	
	sleep 2
	g++ graczC.cpp
	./a.out
	a1=$(cat a2.txt | cut -f1 -d" ")
	a2=$(cat a2.txt | cut -f2 -d" ")
	a3=$(cat a2.txt | cut -f3 -d" ")
	a4=$(cat a2.txt | cut -f4 -d" ")
	b1=$(cat b2.txt | cut -f1 -d" ")
	b2=$(cat b2.txt | cut -f2 -d" ")
	b3=$(cat b2.txt | cut -f3 -d" ")
	b4=$(cat b2.txt | cut -f4 -d" ")
	c1=$(cat c2.txt | cut -f1 -d" ")
	c2=$(cat c2.txt | cut -f2 -d" ")
	c3=$(cat c2.txt | cut -f3 -d" ")
	c4=$(cat c2.txt | cut -f4 -d" ")
	d1=$(cat d2.txt | cut -f1 -d" ")
	d2=$(cat d2.txt | cut -f2 -d" ")
	d3=$(cat d2.txt | cut -f3 -d" ")
	d4=$(cat d2.txt | cut -f4 -d" ")

	cat plansza.txt | sed "s/\<$a1\>/A/g" | sed "s/\<$a2\>/A/g" | sed "s/\<$a3\>/A/g" |sed "s/\<$a4\>/A/g" | sed "s/\<$b1\>/B/g" | sed "s/\<$b2\>/B/g" | sed "s/\<$b3\>/B/g" | sed "s/\<$b4\>/B/g" | sed "s/\<$c1\>/C/g" | sed "s/\<$c2\>/C/g" |  sed "s/\<$c3\>/C/g" |  sed "s/\<$c4\>/C/g" |  sed "s/\<$d1\>/D/g" |  sed "s/\<$d2\>/D/g" |  sed "s/\<$d3\>/D/g" |  sed "s/\<$d4\>/D/g" | sed 's/\<[0-9]\>/#/g' | sed  's/\<[0-9][0-9]\>/# /g'

	cp a2.txt a.txt
	cp b2.txt b.txt
	cp c2.txt c.txt
	cp d2.txt d.txt
	
	sleep 2
	g++ graczD.cpp
	./a.out
	a1=$(cat a2.txt | cut -f1 -d" ")
	a2=$(cat a2.txt | cut -f2 -d" ")
	a3=$(cat a2.txt | cut -f3 -d" ")
	a4=$(cat a2.txt | cut -f4 -d" ")
	b1=$(cat b2.txt | cut -f1 -d" ")
	b2=$(cat b2.txt | cut -f2 -d" ")
	b3=$(cat b2.txt | cut -f3 -d" ")
	b4=$(cat b2.txt | cut -f4 -d" ")
	c1=$(cat c2.txt | cut -f1 -d" ")
	c2=$(cat c2.txt | cut -f2 -d" ")
	c3=$(cat c2.txt | cut -f3 -d" ")
	c4=$(cat c2.txt | cut -f4 -d" ")
	d1=$(cat d2.txt | cut -f1 -d" ")
	d2=$(cat d2.txt | cut -f2 -d" ")
	d3=$(cat d2.txt | cut -f3 -d" ")
	d4=$(cat d2.txt | cut -f4 -d" ")

	cat plansza.txt | sed "s/\<$a1\>/A/g" | sed "s/\<$a2\>/A/g" | sed "s/\<$a3\>/A/g" |sed "s/\<$a4\>/A/g" | sed "s/\<$b1\>/B/g" | sed "s/\<$b2\>/B/g" | sed "s/\<$b3\>/B/g" | sed "s/\<$b4\>/B/g" | sed "s/\<$c1\>/C/g" | sed "s/\<$c2\>/C/g" |  sed "s/\<$c3\>/C/g" |  sed "s/\<$c4\>/C/g" |  sed "s/\<$d1\>/D/g" |  sed "s/\<$d2\>/D/g" |  sed "s/\<$d3\>/D/g" |  sed "s/\<$d4\>/D/g" | sed 's/\<[0-9]\>/#/g' | sed  's/\<[0-9][0-9]\>/# /g'

	cp a2.txt a.txt
	cp b2.txt b.txt
	cp c2.txt c.txt
	cp d2.txt d.txt
	
	sleep 2
done
