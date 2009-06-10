package com.packt.s2wad.ch14.actions.user;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({
        @Result(name = ActionSupport.INPUT,
                location = "/WEB-INF/content/user/login.jsp"),
        @Result(name = ActionSupport.SUCCESS,
                location = "/WEB-INF/content/user/login.jsp")
})
public class LoginAction extends ActionSupport {

    private static final Log LOG = LogFactory.getLog(LoginAction.class);

    @Override
    @Action(value = "login")
    public String input() throws Exception {
        LOG.debug("Enter.");
        return INPUT;
    }

    @Action(value = "login-process")
    public String process() {
        LOG.debug("Enter.");
        return SUCCESS;
    }

}
