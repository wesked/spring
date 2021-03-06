package com.photo.wesked.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.photo.wesked.service.ImageService;

/**
 * @author wesked
 */

@Controller
@RequestMapping("/images")
public class ImagesController {
    
    @Autowired 
    private ImageService imageService;
    
    
    @RequestMapping(method = RequestMethod.GET)
    public String getImageNames(Model model) {
        model.addAttribute("imageNames", imageService.getImageNames());
        return "images";
    }
    
    @RequestMapping(value = "/image", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
    public ResponseEntity<byte[]> getImage(    @RequestParam(value = "name") String name ) throws IOException{
        HttpHeaders headers = new HttpHeaders();
        File imageFile  = imageService.getByName(name); 
        InputStream inputStream = new FileInputStream(imageFile);
        byte[] media = IOUtils.toByteArray(inputStream);
        ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
        return responseEntity;
    }
    
    

    

    


  

}
