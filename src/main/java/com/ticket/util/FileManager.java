package com.ticket.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

public class FileManager {

	// 파일 업로드
	public static String doFileUpload(InputStream is, 
			String originalFileName, String path) throws Exception {

		String newFileName = null;

		if (is == null)
			return null;

		if (originalFileName.equals(""))
			return null;

		// 파일 확장자
		String fileExt = originalFileName.substring(originalFileName.lastIndexOf("."));

		if (fileExt == null || fileExt.equals(""))
			return null;

		newFileName = String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS", Calendar.getInstance());

		newFileName += System.nanoTime();
		newFileName += fileExt;

		File f = new File(path);

		if (!f.exists())
			f.mkdirs();

		String fullFileName = path + File.separator + newFileName;

		FileOutputStream fos = new FileOutputStream(fullFileName);
		
		int data = 0;
		byte[] buffer = new byte[1024];
		
		while((data=is.read(buffer, 0, 1024))!=-1) {
			
			fos.write(buffer, 0, data);
			
		}

		is.close(); // 입력 스트림 소멸
		fos.close();
		
		return newFileName;

	}

	// 파일 다운로드
	public static boolean doFileDownload(HttpServletResponse response, String saveFileName, String originalFileName,
			String path) {

		System.out.println(saveFileName);

		try {

			String fullPath = path + File.separator + saveFileName;

			if (originalFileName == null || originalFileName.equals("")) {
				originalFileName = saveFileName;
			}

			// 한글이름 파일을 다운받을때 깨짐방지
			originalFileName = new String(originalFileName.getBytes("euc-kr"), "ISO-8859-1");
			// originalFileName = new String(originalFileName.getBytes("euc-kr"),"8859_1");

			File f = new File(fullPath);

			if (!f.exists())
				return false;

			response.setContentType("application/octet-stream");
			response.setHeader("Content-disposition", "attachment;fileName=" + originalFileName);

			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));

			OutputStream out = response.getOutputStream();

			int data;
			byte[] bytes = new byte[4096];

			while ((data = bis.read(bytes, 0, 4096)) != -1) {
				out.write(bytes, 0, data);
			}

			out.flush();
			out.close();
			bis.close();

		} catch (Exception e) {
			System.out.println(e.toString());
			return false;
		}

		return true;
	}

	// 파일 다운로드
	/*
	 * public static boolean doZipFileDownload(HttpServletResponse response,
	 * List<PicBasketDTO> lists, String path) {
	 * 
	 * try {
	 * 
	 * //String path = root/pds/saveImageFile";
	 * 
	 * String saveFileName = ""; String originalFileName = ""; String fullZipPath =
	 * path + File.separator + "test" + ".zip";
	 * 
	 * FileOutputStream fout = new FileOutputStream(fullZipPath); ZipOutputStream
	 * zout = new ZipOutputStream(fout);
	 * 
	 * System.out.println(lists.size());
	 * 
	 * for (int i = 0; i < lists.size(); i++) {
	 * 
	 * System.out.println(i); originalFileName = lists.get(i).getOriginalName();
	 * String fullPath = path + File.separator + originalFileName;
	 * 
	 * // 한글이름 파일을 다운받을때 깨짐방지 originalFileName = new
	 * String(originalFileName.getBytes("euc-kr"), "ISO-8859-1"); //
	 * originalFileName = new String(originalFileName.getBytes("euc-kr"),"8859_1");
	 * 
	 * ZipEntry zipEntry = new ZipEntry(new File(fullPath).getName());
	 * zout.putNextEntry(zipEntry); //경로포함 압축 //zout.putNextEntry(new
	 * ZipEntry(sourceFiles.get(i)));
	 * 
	 * FileInputStream fin = new FileInputStream(fullPath); byte[] buffer = new
	 * byte[1024]; int length; // input file을 1024바이트로 읽음, zip stream에 읽은 바이트를 씀
	 * while((length = fin.read(buffer)) > 0){ zout.write(buffer, 0, length); }
	 * 
	 * zout.closeEntry(); fin.close();
	 * 
	 * }
	 * 
	 * zout.close();
	 * 
	 * response.setContentType("application/zip");
	 * response.setHeader("Content-disposition", "attachment;fileName=" + "test" +
	 * ".zip");
	 * 
	 * FileInputStream fis=new FileInputStream(fullZipPath); BufferedInputStream
	 * bis=new BufferedInputStream(fis); ServletOutputStream
	 * so=response.getOutputStream(); BufferedOutputStream bos=new
	 * BufferedOutputStream(so);
	 * 
	 * byte[] data=new byte[2048]; int input=0;
	 * 
	 * while((input=bis.read(data))!=-1){ bos.write(data,0,input); bos.flush(); }
	 * 
	 * if(bos!=null) bos.close(); if(bis!=null) bis.close(); if(so!=null)
	 * so.close(); if(fis!=null) fis.close();
	 * 
	 * } catch (Exception e) {
	 * System.out.println("FileManager - doZipFileDownload : " + e.toString());
	 * return false; }
	 * 
	 * return true; }
	 */

	// 파일 삭제
	public static void doFileDelete(String fileName, String path) {

		try {

			String fullPath = path + File.separator + fileName;

			File f = new File(fullPath);

			if (f.exists())
				f.delete();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

	}

}
