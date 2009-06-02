package com.packt.s2wad.ch06.actions.examples;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class BasicFormTagsAction extends ActionSupport {

    private String firstname;
    private String password;
    private String hiddenField;
    private String directions;

    private static final Log LOG = LogFactory.getLog(BasicFormTagsAction.class);

    @Action(value = "basic-form-tags-process",
            results = {
                    @Result(name = SUCCESS,
                            type = "redirectAction",
                            location = "basic-form-tags"),
                    @Result(name = INPUT, location = "/WEB-INF/content/examples/basic-form-tags.jsp")
            })
    public String process() {
        LOG.debug(this);
        return SUCCESS;
    }

    @Override
    public String toString() {
        return "BasicFormTagsAction{" +
               "firstname='" + firstname + '\'' +
               ", password='" + password + '\'' +
               ", hiddenField='" + hiddenField + '\'' +
               ", directions='" + directions + '\'' +
               '}';
    }

    //~ Accessors

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHiddenField() {
        return hiddenField;
    }

    public void setHiddenField(String hiddenField) {
        this.hiddenField = hiddenField;
    }

    public String getDirections() {
        return directions;
    }

    public void setDirections(String directions) {
        this.directions = directions;
    }

}
