package semi.project.movieInsight.movie.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import semi.project.movieInsight.movie.dto.Movie;
import semi.project.movieInsight.movie.service.MovieDetailService;

@RequestMapping("/movie")
@Controller
@RequestMapping("/movie")
public class MovieDetailController {
	
	@Autowired
	private MovieDetailService service;
	

	/** 영화 검색 후 이동 ( movieNo를 가지고 주소 설정 ) 
	 * @param movieNo
	 * @return
	 */

//	@GetMapping("/movie/{movieNo}")
	@GetMapping("/{movieNo:^[^0]\\d*}") // 정수 숫자만
	public String selectMovie(@PathVariable("movieNo") int movieNo,
								Model model) {
		
		System.out.println("검색 후 이동");
		System.out.println(movieNo);
		
		// 1) movieNo를 가지고 movie에 대한 정보 가져오기
		Movie movieInfo = service.selectMovie(movieNo);
		
		List<Map<String,Object>> directorInfoList = service.directorInfoList(movieNo);
		List<Map<String,Object>> actorInfoList = service.actorInfoList(movieNo);
		
		model.addAttribute("movieInfo", movieInfo);
		model.addAttribute("directorInfoList", directorInfoList);
		model.addAttribute("actorInfoList", actorInfoList);
		
		
		return "movie/movie-detail-page";
	}
	
	
}
