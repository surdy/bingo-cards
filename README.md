# bingo_cards
Create UK-style 1-90 bingo cards to print out
Orginial work at https://github.com/rc0/bingo_cards

## Run using docker 
```
docker run -v ${PWD}:/usr/src/app/output surdy/bingo_cards:0.0.1
```

OR

Run the bash script `bingo_cards` from this repo.

This will generate a pdf `cards_<timestamp>.pdf` in the current directory.
 
## Dependencies

Python libraries

- pycairo
- numpy

Fonts

- Fira Mono
- Fira Sans

## Running the generator

```sh
mkdir output
python generate_pdf.py
```

Each run creates a new PDF file in `output/`.  Each page in the PDF has 2 strips of 6 cards.
