package model;

import java.util.ArrayList;
import java.util.List;

public class Prize {
	private int year;
	private List<Laureate> laureates;
	private String category;

	public Prize() {
		this.year = 0;
		this.laureates = new ArrayList<>();
		this.category = "";
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public List<Laureate> getLaureates() {
		return laureates;
	}

	public void setLaureates(List<Laureate> laureates) {
		this.laureates = laureates;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Prize [year=" + year + ", laureates=" + laureates + ", category=" + category + "]";
	}

	
}
