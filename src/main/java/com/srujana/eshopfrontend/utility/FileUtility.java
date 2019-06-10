package com.srujana.eshopfrontend.utility;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.srujana.eshopbackend.model.Product;

public class FileUtility {

	public void fileUpload()
	{
		Product product=new Product();
		MultipartFile image=product.getProImage();
		System.out.println("------------"+image);
		
		BufferedOutputStream  bos=null;
		try {
			byte barry[] = image.getBytes();
			FileOutputStream fos=new FileOutputStream("Desktop\\NIIT NotesAndPro\\EclipsePgmVersion2\\eshopfrontend\\src\\main\\webapp\\resources\\product-images\\"+product.getProductId()+".jpg");
			  bos=new BufferedOutputStream(fos);
			bos.write(barry);
			
			
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		finally {
			
			try {
				bos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
}
