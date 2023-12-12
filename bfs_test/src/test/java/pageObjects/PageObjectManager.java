package pageObjects;

import org.openqa.selenium.WebDriver;

public class PageObjectManager {
	public WebDriver driver;
	
	public PageObjectManager(WebDriver driver) {
		this.driver = driver;
	}

	public RegistrationPage registrationPage;
	
	public RegistrationPage getRegistrationPage() {
		registrationPage = new  RegistrationPage(driver);
		return registrationPage;
	}
}

