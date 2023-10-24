package semi.project.movieInsight.movie.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.project.movieInsight.movie.dao.MovieDetailDAO;
import semi.project.movieInsight.movie.dto.Movie;

@Service
public class MovieDetailServiceImpl implements MovieDetailService{

	@Autowired
	private MovieDetailDAO dao;

	/**
	 * 1) 클릭으로 가져온 영화정보
		<%--${boardCode} : @Pathvariable로 request scope에 추가된 값--%>
        <a href="/board/${boardCode}/${board.boardNo}?cp=${pagination.currentPage}">${board.boardTitle}</a>   
        [${board.commentCount}]               
	 */
	@Override
	public Map<String, Object> selectMovie(int movieNo) {
		
		// 1) 일단 영화에 대한 정보 가져오기
		Movie movie = dao.selectMovie(movieNo);
		
		return null;
	}
	
	
	
	
	
}
