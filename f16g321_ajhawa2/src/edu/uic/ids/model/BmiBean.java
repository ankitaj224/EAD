package edu.uic.ids.model;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;


public class BmiBean implements Serializable, Cloneable {

	private static final long serialVersionUID = 1L;
	// inputs
	private String units;
	private double weight;
	private double height;
	// outputs
	private double bmi;
	private double bmiPrime;
	private String bmiCategory;
	private String errorMessage;
	// control
	private boolean status;
	// constants
	private static final double SI_CONSTANT = 1.0;
	private static final double IMPERIAL_CONSTANT = 703.0;
	public static final double BMI_UPPER_LIMIT = 25.0;
	public static final double CATEGORY_LIMIT[] = { 0.0, 15.0, 16.0, 18.5, 25.0, 30.0, 35.0, 40.0 };
	public static final String CATEGORY_DESCRIPTION[] = { "Error", "Very severely underweight", "Severely underweight",
			"Underweight", "Normal (healthy weight)", "Overweight", "Obese Class I (Moderately obese)",
			"Obese Class II (Severely obese)", "Obese Class III (Very severely obese)" };

	// default constructor – needed for JavaBeab
	public BmiBean() {
		// TODO Auto-generated constructor stub
		errorMessage = "";
		bmiCategory = "";
	}

	// overloaded constructor
	public BmiBean(String units, double weight, double height) {
		super();
		this.units = units;
		this.weight = weight;
		this.height = height;
	}

	public BmiBean clone() throws CloneNotSupportedException {
		BmiBean cloned = (BmiBean) super.clone();
		return cloned;
	}

	public String computeBmi() {
		if ((height <= 0.0) || (weight <= 0.0)) {
			errorMessage = "Bad input data for weight or height";
			bmi = 0.0;
			status = false;
		} // end if
		else {
			double constant = SI_CONSTANT;
			if (!units.equalsIgnoreCase("SI"))
				constant = IMPERIAL_CONSTANT;
			errorMessage = "";
			bmi = constant * weight / (height * height);
			status = true;
		} // end else
		bmiPrime = bmi / BMI_UPPER_LIMIT;
		bmiCategory = CATEGORY_DESCRIPTION[CATEGORY_DESCRIPTION.length - 1];
		bmi = MathUtil.round(bmi, 10.0);
		bmiPrime = MathUtil.round(bmiPrime, 100.0);
		for (int i = 0; i < CATEGORY_LIMIT.length; i++) {
			if (bmi <= CATEGORY_LIMIT[i]) {
				bmiCategory = CATEGORY_DESCRIPTION[i];
				break;
			} // end if
		} // end for
		return "SUCCESS";
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public String getUnits() {
		return units;
	}

	public void setUnits(String units) {
		this.units = units;
	}

	public double getBmi() {
		return bmi;
	}

	public void setBmi(double bmi) {
		this.bmi = bmi;
	}

	public double getBmiPrime() {
		return bmiPrime;
	}

	public void setBmiPrime(double bmiPrime) {
		this.bmiPrime = bmiPrime;
	}

	public String getBmiCategory() {
		return bmiCategory;
	}

	public void setBmiCategory(String bmiCategory) {
		this.bmiCategory = bmiCategory;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	

}