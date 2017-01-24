package com.photo.wesked.service;

import java.io.File;
import java.util.List;

/**
 * @author wesked
 */
public interface ImageService {

    File getByName(String name);

    List<String> getImageNames();

}
