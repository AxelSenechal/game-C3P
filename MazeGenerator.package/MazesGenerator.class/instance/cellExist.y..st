initialization
cellExist: x y: y 
        ^x >= 0 and: [y >= 0 and: [x < width and: [y < height]]].