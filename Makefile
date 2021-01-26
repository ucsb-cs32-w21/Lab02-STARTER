CXX=clang++

CXXFLAGS= -Wall

BINARIES=dataProj testStates

all: ${BINARIES}

tests: ${BINARIES}
	./testStates

dataProj: dataAQ.o stateDemog.o demogData.o parse.o main.o
	${CXX} $^ -o $@

testStates: testStates.o dataAQ.o stateDemog.o demogData.o parse.o  tddFuncs.o
	${CXX} $^ -o $@

clean:
	/bin/rm -f ${BINARIES} *.o 
