package com.packt.s2wad.ch14.functional;

import com.thoughtworks.selenium.DefaultSelenium;
import com.thoughtworks.selenium.Selenium;
import org.junit.AfterClass;
import static org.junit.Assert.assertTrue;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * TODO Document TestLoginProcess.
 */
public class TestLoginProcess {

    private static Selenium selenium;

    private static final String LOGIN_INPUT_URL = "http://localhost:8080/user/login";

    @BeforeClass public static void setup() {
        selenium = new DefaultSelenium("localhost", 4444, "*firefox", LOGIN_INPUT_URL);
        selenium.start();
    }

    @AfterClass public static void teardown() {
        selenium.stop();
    }

    public void assertElementPresent(String msg, String sel) {
        assertTrue(String.format("%s: '%s'", msg, sel),
                   selenium.isElementPresent(sel));
    }

    @Test
    public void testLoginFormFieldsPresent() {
        selenium.open(LOGIN_INPUT_URL);
        assertElementPresent("login form", "id=login_process");
        assertElementPresent("email field", "id=login_process_email");
        assertElementPresent("password field", "id=login_process_password");
        assertElementPresent("Login button", "//input[@value='Login']");
    }

}
