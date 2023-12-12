package utils;

import pageObjects.PageObjectManager;
import org.openqa.selenium.WebDriver;

public class TestContextSetup {
	
	public WebDriver driver;
	public PageObjectManager pageObjectManager;
	
	public GenericUtils genericUtils;
	public TestBase testBase;
	
	//class constructor
	public TestContextSetup() {		
		testBase = new TestBase();
		pageObjectManager = new PageObjectManager(testBase.WebDriverManager());
		genericUtils = new GenericUtils(testBase.WebDriverManager());
	}

}
