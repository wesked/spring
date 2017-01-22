package com.photo.wesked.service.impl;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.photo.wesked.service.ImageService;

/**
 * @author timur
 */
@Service
public class ImageServiceImpl implements ImageService {

    private final static String IMAGES_ROOT_PATH = "C:\\Users\\weske\\Desktop\\exam\\images";

    @Override
    public File getByName(String name) {
        return new File(IMAGES_ROOT_PATH, name);

    }


    public static List<String> getDirectoryImages() {
        return Arrays.asList(new File(IMAGES_ROOT_PATH).listFiles()).stream().map(file -> file.getName()).collect(Collectors.toList());
    }

}


