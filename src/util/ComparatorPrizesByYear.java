package util;

import java.util.Comparator;

import model.Prize;

public class ComparatorPrizesByYear implements Comparator<Prize> {

	@Override
	public int compare(Prize prize0, Prize prize1) {
		return prize0.getYear() - prize1.getYear();
	}
}
