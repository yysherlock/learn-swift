//: Playground - noun: a place where people can play

import UIKit

/*
    RGBAImage.swift provides a mechanism that 
    we can individually access pixels in an image.
    So we can change the red, green or blue channel 
    and indiviually manipulate the pixels.
*/

let image = UIImage(named: "liamnatasha.png")!

// convert this UI image into a RGBA image, which is easier to multipulate than UI image
let myRGBA = RGBAImage(image: image)!

let x = 10
let y = 10
let index = y * myRGBA.width + x // stored 2D image as a single stacked 1D array
var pixel = myRGBA.pixels[index]
//pixel.alpha
pixel.blue
pixel.green
pixel.red

pixel.red = 255
pixel.green = 0
pixel.blue = 0

myRGBA.pixels[index] = pixel
let newImage = myRGBA.toUIImage()

/*
// what is the average color this image has?
var totGreen = 0
var totBlue = 0
var totRed = 0

for i in 0..<myRGBA.pixels.count{  // slow
    totGreen += Int(myRGBA.pixels[i].green)
    totBlue += Int(myRGBA.pixels[i].blue)
    totRed += Int(myRGBA.pixels[i].red)
    
}
let avgGreen = totGreen / (myRGBA.width * myRGBA.height)
let avgBlue = totBlue / (myRGBA.width * myRGBA.height)
let avgRed = totRed / (myRGBA.width * myRGBA.height)

*/

let avgGreen = 185
let avgBlue = 185
let avgRed = 183
/* Now we know what the average color values are, and
   we want to filter this image in a way, say the red channel is amplifying.
   So we are creating a red boosting filter.
   Apply a certain amplification on the red pixels.
*/

for y in 0..<myRGBA.height{
    for x in 0..<myRGBA.width {
        let index = y * myRGBA.width + x
        var pixel = myRGBA.pixels[index]
        // how different is each pixel from the average
        var redDiff = Int(pixel.red) - avgRed
        if ( redDiff > 0 ) {
            pixel.red = UInt8(max(0, min(255, avgRed + redDiff*5)))
            myRGBA.pixels[index] = pixel
        }
    }
}

let newImage2 = myRGBA.toUIImage()







