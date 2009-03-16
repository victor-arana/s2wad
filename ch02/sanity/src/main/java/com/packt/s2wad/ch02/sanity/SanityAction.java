package com.packt.s2wad.ch02.sanity;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class SanityAction extends ActionSupport {
  
    private String sanityCheck = "Sanity check string from SanityAction";
    private Log log = LogFactory.getLog(SanityAction.class);
    
    public String getSanityCheck() {
        log.debug("Enter.");
        return sanityCheck;
    }
    
}
