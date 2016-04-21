all: 25K.txt 50K.txt 100K.txt 200K.txt 400K.txt 800K.txt 1.6M.txt 3.2M.txt

25K.txt: Main
	./Main +RTS -s -RTS 25000 2>> 25K.txt

50K.txt: Main
	./Main +RTS -s -RTS 50000 2>> 50K.txt

100K.txt: Main
	./Main +RTS -s -RTS 100000 2>> 100K.txt

200K.txt: Main
	./Main +RTS -s -RTS 200000 2>> 200K.txt

400K.txt: Main
	./Main +RTS -s -RTS 400000 2>> 400K.txt

800K.txt: Main
	./Main +RTS -s -RTS 800000 2>> 800K.txt

1.6M.txt: Main
	./Main +RTS -s -RTS 1600000 2>> 1.6M.txt

3.2M.txt: Main
	./Main +RTS -s -RTS 3200000 2>> 3.2M.txt

Main: Main.hs
	ghc -O2 -optc-O3 Main.hs

clean:
	rm -f Main Main.o Main.hi 25K.txt 50K.txt 100K.txt 200K.txt 400K.txt 800K.txt 1.6M.txt 3.2M.txt
