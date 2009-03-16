package com.packt.s2wad.ch03.actions.i18n;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.util.ArrayList;

public class TextExamplesAction extends ActionSupport implements TextInterface {

    private static Log log = LogFactory.getLog(TextExamplesAction.class);

    @Override
    public String execute() throws Exception {
        log.debug(getText("from.class.props"));
        return SUCCESS;
    }

    public String getText1() {
        return getText("from.class.props");
    }

    public String getParams1() {
        return getText("params.msg1", new ArrayList() {{
            add("Foo!");
            add("Bar!");
        }});
    }

    public String getFoo() { return "Fooo!"; }
    public String getBar() { return "Baar!"; }

}
