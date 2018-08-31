package com.ict.erp.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.ict.erp.common.IBean;
import com.ict.erp.common.ICTUtils;
import com.ict.erp.service.MusicService;
import com.ict.erp.service.impl.MusicServiceImpl;
import com.ict.erp.vo.MusicChart;

public class MusicServlet extends HttpServlet {

	private Log log = LogFactory.getLog(this.getClass());
	private static final long serialVersionUID = 1L;
	private String uri;
    private MusicService ms = new MusicServiceImpl();
    
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		uri =  req.getRequestURI();
		String cmd = ICTUtils.getCmd(uri);
		try {
			
			MusicChart mc = IBean.parseRequest(req,MusicChart.class);

			log.trace(mc);
			log.debug(mc);
			log.info(mc);
			log.warn(mc);
			log.error(mc);
			log.fatal(mc); 
			if(cmd.equals("musicChart")) {
				req.setAttribute("musicList", ms.selectMusicList(mc));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		doService(req,res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest req, HttpServletResponse res)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		uri =  req.getRequestURI();
		String cmd = ICTUtils.getCmd(uri);
		try {
			MusicChart mc = IBean.parseRequest(req,MusicChart.class);
			log.debug(mc);
			if(cmd.equals("musicInsert")) {
				req.setAttribute("musicList", ms.selectMusicList(mc));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		doService(req,res);
	}
	private void doService(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/views" + uri);
		rd.forward(req, res);
	}

}
