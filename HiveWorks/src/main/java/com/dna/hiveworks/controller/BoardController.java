package com.dna.hiveworks.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dna.hiveworks.model.dto.Board;
import com.dna.hiveworks.model.dto.Uploadfile;
import com.dna.hiveworks.service.BoardService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@AllArgsConstructor
@RequestMapping("/board")
@Slf4j
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/board")
	public String board(Model model) {
	    List<Board> boardList = service.selectAllBoard();
	    model.addAttribute("boardList", boardList);
	    return "board/board";
	}

	@GetMapping("/suggestions")
	public String suggestions() {
		return "board/suggestions";
	}
	@GetMapping("/blind")
	public String blind() {
		return "board/blind";
	}
	@GetMapping("/boardWrite")
	public String boardWrite() {
	    return "board/boardWrite";
	}
	@RequestMapping("/boardView")
	public void selectBoardByNo(int boardNo, Model model) {
		model.addAttribute("board",service.selectBoardByNo(boardNo));
	}
	@RequestMapping("/boardDelete")
	public String boardDelete(@RequestParam("boardNo") int boardNo,Model model) {
		Board board = service.boardDelete(boardNo);
		log.debug("보드 번호{}",boardNo);
		List<Board> boardList = service.selectAllBoard();
	    model.addAttribute("boardList", boardList);
	    return "board/board";
	}
	@GetMapping("/boardUpdate")
	public String boardUpdate(@RequestParam("boardNo") int boardNo,Model model){
		log.debug("보드 번호{}",boardNo);
		Board board =  service.selectBoardByNo(boardNo);
		log.debug("보드 정보{}",board);		
		model.addAttribute("board",board);
		return "board/boardUpdate";
	}

	@PostMapping("/boardUpdate")
	public String boardUpdate(Board b, Model model, HttpSession session) {
	    log.debug("{}", b);
	    
	    String msg, loc;
	   
	    int result=service.boardUpdate(b);
	    System.out.println(result);
	    if(result>0) {
	    	msg = "게시글 수정 성공 :)";
	    	loc = "board/board";
	    } else {
	    	msg = "게시글 수정 실패 :(";
	    	loc = "board/boardUpdate";
	    }
	    model.addAttribute("msg", msg);
	    model.addAttribute("loc", loc);

	    return "board/msg";
	}

	@PostMapping("/insertBoard")
	public String insertBoard(MultipartFile[] upFile,Board b, Model model, HttpSession session) {
	    
		String path=session.getServletContext().getRealPath("/resources/upload/board");
		List<Uploadfile> files=new ArrayList<>();
		
	   
	    if(upFile!=null) {
			for(MultipartFile mf:upFile) {			
				if(!mf.isEmpty()) {
					String oriName=mf.getOriginalFilename();
					String ext=oriName.substring(oriName.lastIndexOf("."));
					Date today=new Date(System.currentTimeMillis());
					int randomNum=(int)(Math.random()*10000)+1;
					String rename
						="DNA_"+(new SimpleDateFormat("yyyyMMddHHmmssSSS")
						.format(today))+"_"+randomNum+ext;
					try {
						mf.transferTo(new File(path,rename));
						Uploadfile file=Uploadfile.builder()
								.originalFileName(oriName)
								.reNamefile(rename)
								.build();
						files.add(file);
					}catch(IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
		b.setFiles(files);
	    
		log.debug("{}", b);
		String msg, loc;
	    int result=service.insertBoard(b);
	    System.out.println(result);
	    if(result>0) {
	    	msg = "게시글 등록 성공 :)";
	    	loc = "board/board";
	    } else {
	    	msg = "게시글 등록 실패 :(";
	    	loc = "board/boardWrite";
	    }
	    model.addAttribute("msg", msg);
	    model.addAttribute("loc", loc);

	    return "board/msg";
	}
	@RequestMapping("/filedownload.do")
	public void fileDownload(String oriname, String rename,
			OutputStream out, HttpSession session, 
			HttpServletResponse response,
			@RequestHeader(value="user-agent") String header) {
		
		String path=session.getServletContext().getRealPath("/resources/upload/board/");
		File downloadFile=new File(path+rename);
		try(FileInputStream fis=new FileInputStream(downloadFile);
			BufferedInputStream bis=new BufferedInputStream(fis);
			BufferedOutputStream bos=new BufferedOutputStream(out);){
			
			boolean isMS=header.contains("Trident")||header.contains("MSIE");
			String encodeFileName="";
			if(isMS) {
				encodeFileName=URLEncoder.encode(oriname,"UTF-8");
				encodeFileName=encodeFileName.replaceAll("\\+", "%20");
			}else {
				encodeFileName=new String(oriname.getBytes("UTF-8"),"ISO-8859-1");
			}
			
			response.setContentType("application/octet-stream;charset=utf-8");
			response.setHeader("Content-Disposition", "attachment;filename=\""+encodeFileName+"\"");
			int data=-1;
			while((data=bis.read())!=-1) {
				bos.write(data);
			}
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		
	}

	
}
