package listeners;

import java.util.Collections;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import model.Prize;
import util.ComparatorPrizesByYear;
import util.PrizesFetcher;
import util.PrizesParser;

@WebListener
public class NobelListener implements ServletContextListener {

	public NobelListener() {
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
	}

	@Override
	public void contextInitialized(ServletContextEvent initEvent) {
		ServletContext sc = initEvent.getServletContext();

		// get and process data from api
		try {
			List<Prize> prizes = PrizesParser.parsePrizes(PrizesFetcher.fetch());
			Collections.sort(prizes, new ComparatorPrizesByYear());
			sc.setAttribute("prizes", prizes);

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
