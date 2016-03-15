package com.hzj.util;

/**
 * Created by Administrator on 2016/2/22.
 */

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class GetImageByPix {
    /**
     * @param path   �ļ�·��
     * @param oldimg Դ�ļ�����
     * @param newimg ���ļ�����
     * @param x_pix  X pix
     * @param y_pix  Y pix
     */
    public static void changeImage(String path, String oldimg, String newimg, int x_pix, int y_pix) {
        try {
            File file = new File(path + oldimg);
            Image img = ImageIO.read(file);
            // ����Image����
            int wideth = img.getWidth(null); // �õ�ԴͼX
            int height = img.getHeight(null); // �õ�ԴͼY
            BufferedImage tag = new BufferedImage(wideth = x_pix, height = y_pix,
                    BufferedImage.TYPE_INT_RGB);
            tag.getGraphics().drawImage(img, 0, 0, x_pix = wideth, y_pix = height, null);
            FileOutputStream out = new FileOutputStream(path + newimg);
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
            encoder.encode(tag); // ��JPEG����
            out.close();
        } catch (IOException e) {
            System.out.println("�����ļ������쳣");
            e.printStackTrace();
        }
    }

    public static void changeImage(String olding, String newimg, int x_pix, int y_pix) {
        try {
            File file = new File(olding);
            Image img = ImageIO.read(file);
            // ����Image����
            int wideth = img.getWidth(null); // �õ�ԴͼX
            int height = img.getHeight(null); // �õ�ԴͼY
            BufferedImage tag = new BufferedImage(wideth = x_pix, height = y_pix,
                    BufferedImage.TYPE_INT_RGB);
            tag.getGraphics().drawImage(img, 0, 0, x_pix = wideth, y_pix = height, null);
            FileOutputStream out = new FileOutputStream(newimg);
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
            encoder.encode(tag); // ��JPEG����
            out.close();
        } catch (IOException e) {
            System.out.println("ͼƬ���ɳ����쳣");
            e.printStackTrace();
        }
    }

    public static void getImageByPix(String path, String source_file) {
        String extName = ""; // ��չ����ʽ��
        String fileName = source_file;   //������չ��
        if (source_file.lastIndexOf(".") >= 0) {
            extName = source_file.substring(source_file.lastIndexOf("."));
            fileName = source_file.substring(0, source_file.lastIndexOf("."));
        }
        changeImage(path, source_file, fileName + "_L" + extName, 1600, 900);
        changeImage(path, source_file, fileName + "_M" + extName, 1280, 720);
        changeImage(path, source_file, fileName + "_S" + extName, 800, 600);
    }

    public static void getImageByPix(File source) {
        String source_file = source.getPath();
        String extName = ""; // ��չ����ʽ��
        String fileName = source_file;   //����չ�����ļ���
        if (source_file.lastIndexOf(".") >= 0) {
            fileName = source_file.substring(0, source_file.lastIndexOf("."));
            extName = source_file.substring(source_file.lastIndexOf("."));
        }
        changeImage(source_file, fileName + "_L" + extName, 1600, 900);
        changeImage(source_file, fileName + "_M" + extName, 1280, 720);
        changeImage(source_file, fileName + "_S" + extName, 800, 600);
    }

    public static void getImageByPix(String source_str) {
        File source = new File(source_str);
        String source_file = source.getPath();
        String extName = ""; // ��չ����ʽ��
        String fileName = source_file;   //����չ�����ļ���
        if (source_file.lastIndexOf(".") >= 0) {
            fileName = source_file.substring(0, source_file.lastIndexOf("."));
            extName = source_file.substring(source_file.lastIndexOf("."));
        }
        changeImage(source_file, fileName + "_L" + extName, 1600, 900);
        changeImage(source_file, fileName + "_M" + extName, 1280, 720);
        changeImage(source_file, fileName + "_S" + extName, 800, 600);
    }

}
