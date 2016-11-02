package edu.uic.ids.model;

public final class MathUtil {
	public static double round(double value, double precision) {
		return Math.round(value * precision) / precision;
	}
}