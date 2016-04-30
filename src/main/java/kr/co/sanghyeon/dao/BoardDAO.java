package kr.co.sanghyeon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import kr.co.mvc1.util.ConnectionProvider;
import kr.co.sanghyeon.vo.BoardVO;

public class BoardDAO {
	public ArrayList<BoardVO> selectBoardVOs() throws Exception {
		ArrayList<BoardVO> boards = new ArrayList<>();
		
		
		String sql = "select no, title, to_char(reg_date, 'yyyy-MM-dd') from luck_shp_board";
		Connection con = ConnectionProvider.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			BoardVO board = new BoardVO();
			board.setNo(rs.getInt("no"));
			board.setTitle(rs.getString("title"));
			board.setRegDate(rs.getString("regDate"));
			boards.add(board);
		}
		
		return boards;
	}
}
