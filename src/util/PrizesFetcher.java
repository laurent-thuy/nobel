package util;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

public class PrizesFetcher {
	public static String fetch() throws Exception {

		HttpResponse<JsonNode> prizesJson = Unirest.get("http://api.nobelprize.org/v1/prize.json")
				.header("Accept", "*/*").header("accept-encoding", "gzip").asJson();

		return prizesJson.getBody().toString();
	}
}
