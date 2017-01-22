package com.photo.wesked.image;

import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.nio.file.Paths;

/**
 * Created by weske on 22.01.2017.
 */
public class ImageSearch {

    Path directoryAbsolutePath = Paths.get("C:", "Users\\weske\\Desktop\\exam\\images");

    public List<String> getDirectoryImages(String directoryAbsolutePath) {
        List<String> images = new ArrayList();

        File directory = new File(directoryAbsolutePath);

        File[] files = directory.listFiles();

        for (int i = 0; i < files.length; i++) {
            images.add(files[i].getName());
        }
        return images;
    }
}