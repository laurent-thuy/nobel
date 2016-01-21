package util;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import model.Laureate;
import model.Prize;

public class PrizesParser {

	public static List<Prize> parsePrizes(String prizesJson) throws Exception {
		List<Prize> prizes = new ArrayList<>();
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(prizesJson);
		JSONObject jsonObj = (JSONObject) obj;
		JSONArray jsonArray = (JSONArray) jsonObj.get("prizes");

		for (Object object : jsonArray) {
			Prize prize = new Prize();
			JSONObject jsonObj2 = (JSONObject) object;
			
			String year = ((String) jsonObj2.get("year"));
			prize.setYear(Integer.parseInt(year));
			
			prize.setCategory((String) jsonObj2.get("category"));

			JSONArray jsonArray2 = (JSONArray) jsonObj2.get("laureates");
			for (Object object2 : jsonArray2) {
				Laureate laureateShort = new Laureate();
				JSONObject jsonObj3 = (JSONObject) object2;
				laureateShort.setFirstname((String) jsonObj3.get("firstname"));
				laureateShort.setSurname((String) jsonObj3.get("surname"));
				laureateShort.setMotivation((String) jsonObj3.get("motivation"));
				laureateShort.setId((String) jsonObj3.get("id"));
				laureateShort.setShare((String) jsonObj3.get("share"));
				prize.getLaureates().add(laureateShort);
			}

			prizes.add(prize);
		}
		return prizes;
	}
}
