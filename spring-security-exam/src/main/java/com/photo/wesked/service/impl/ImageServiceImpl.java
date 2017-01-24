package com.photo.wesked.service.impl;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.photo.wesked.config.Constants;
import com.photo.wesked.service.ImageService;

/**
 * @author wesked
 */
@Service
public class ImageServiceImpl implements ImageService {

    @Override
    public File getByName(String name) {
        return new File(Constants.IMAGES_ROOT_PATH, name);
    }

    @Override
    public List<String> getImageNames() {
        return Arrays.asList(new File(Constants.IMAGES_ROOT_PATH).listFiles()).stream().map(file -> file.getName()).collect(Collectors.toList());
    }
}
