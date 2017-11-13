package com.java96.web;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.swing.text.html.parser.Parser;

import org.apache.commons.io.FileUtils;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.java96.dto.MovieDTO;
import com.java96.dto.UploadDTO;
import com.java96.service.MovieService;
import com.java96.service.UploadService;

import lombok.extern.java.Log;

@RestController
@RequestMapping("/upload/*")
@Log
public class UploadController {
	
	@Autowired
	UploadService upservice;
	@Autowired
	MovieService mservice;
	
	@GetMapping("/new/{thumbName:.+}")
	
		public @ResponseBody byte[] display(@PathVariable("thumbName")String  thumbName )throws Exception {
			
			try
				{
				File file = new File("C:\\MiniPj\\"+ thumbName );
			
		
				log.info(file+"file");
			
				return FileUtils.readFileToByteArray(file);
				}
			
			catch (Exception e) {
				
				return  null;
			}
			
	}
	
	@PostMapping("/new")
	public @ResponseBody Map<String, String> upload(@RequestParam("file") MultipartFile file) throws Exception{
	
		Map<String, String> map = new HashMap<>();
		
		log.info("file"+file);
		
		String contentType = file.getContentType().toString();
		
		UUID uuid = UUID.randomUUID();
		
		String uploadName = uuid.toString()+"_"+file.getOriginalFilename();
		String thumbName = "s_"+ uploadName;

		OutputStream out = new FileOutputStream("C:\\MiniPj\\"+ uploadName);
		
		FileCopyUtils.copy(file.getInputStream(), out);
		
		log.info(contentType+"");
		
		if(contentType.equals("image/jpeg")) {
			
			log.info("========================");
			log.info("check content");
			log.info("========================");
			
			BufferedImage origin = ImageIO.read(file.getInputStream());
			
			BufferedImage destImg = Scalr.resize(origin, 
				            Scalr.Method.AUTOMATIC, 
				            Scalr.Mode.FIT_TO_HEIGHT,50
				            );
			
			ImageIO.write(destImg, "jpg", new FileOutputStream("C:\\MiniPj\\" + thumbName));
		
			
		}if (!contentType.equals("image/jpeg")){
			
			map.put(thumbName, "s_"+uploadName);
			
		}
		
		map.put("original", file.getOriginalFilename());
		map.put("uploadName", uploadName);
		map.put("thumbName", thumbName);
		
		log.info(thumbName);
		log.info(uploadName);
		log.info(file.getOriginalFilename());
		
		UploadDTO dto = new UploadDTO();
		
		dto.setOriginal(file.getOriginalFilename());
		dto.setUploadName(uploadName);
		dto.setThumbName(thumbName);
		
		log.info(dto+"dto~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		log.info(dto+"dto~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		log.info(dto+"dto~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		
		upservice.registerAttach(dto);
		
		return map;
		
	}
	
	@DeleteMapping("/remove")
	public void remove(@RequestBody UploadDTO dto) {
		log.info(dto+"dtodtodtodtodtodtodtodtodtodto");
		
		upservice.deleteAttach(dto);
		
	}
	
	@PostMapping("/modify")
	public @ResponseBody Map<String, String> modify(@RequestParam("file") MultipartFile file,@RequestParam("tno")String tno) throws Exception {
		
		Map<String, String> map = new HashMap<>();
		
		log.info("file"+file);
		
		String contentType = file.getContentType().toString();
		
		UUID uuid = UUID.randomUUID();
		
		String uploadName = uuid.toString()+"_"+file.getOriginalFilename();
		String thumbName = "s_"+ uploadName;
		
		OutputStream out = new FileOutputStream("C:\\MiniPj\\"+ uploadName);
		
		FileCopyUtils.copy(file.getInputStream(), out);
		
		log.info(contentType+"");
		
		if(contentType.equals("image/jpeg")) {
			
			log.info("========================");
			log.info("check content");
			log.info("========================");
			
			BufferedImage origin = ImageIO.read(file.getInputStream());
			
			BufferedImage destImg = Scalr.resize(origin, 
				            Scalr.Method.AUTOMATIC, 
				            Scalr.Mode.FIT_TO_HEIGHT,50
				            );
			
			ImageIO.write(destImg, "jpg", new FileOutputStream("C:\\MiniPj\\" + thumbName));
		
			
		}if (!contentType.equals("image/jpeg")){
			
			map.put(thumbName, "s_"+uploadName);
			
		}
		
		map.put("original", file.getOriginalFilename());
		map.put("uploadName", uploadName);
		map.put("thumbName", thumbName);
		
		log.info(thumbName);
		log.info(uploadName);
		log.info(file.getOriginalFilename());
		
		UploadDTO dto = new UploadDTO();
		
		dto.setOriginal(file.getOriginalFilename());
		dto.setUploadName(uploadName);
		dto.setThumbName(thumbName);
		dto.setTno(Integer.parseInt(tno));
		
		log.info(dto+"dto~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		log.info(dto+"dto~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		log.info(dto+"dto~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		
		upservice.modifyAttach(dto);
		
		return map;
		
	}
	
	@PostMapping("/add")
	public void firstAdd(@RequestBody MovieDTO dto) {
		log.info("uploaduploaduploaduploaduploaduploaduploadupload"+dto);
		
		mservice.registerAdd(dto);
		
	}
	
}
