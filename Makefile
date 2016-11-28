.RECIPEPREFIX+= 
FLAGS=-M../dale-extensions

all: test

test: libsafe.dtm src/test.dt
  dalec src/test.dt -o test $(FLAGS)

libsafe.dtm: src/safe.dt
  dalec -c src/safe.dt $(FLAGS)

src/%.dt:
  true

.PHONY: all clean

clean:
  rm test && rm *.so && rm *.bc && rm *.dtm && rm src/*.o

