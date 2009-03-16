package com.packt.s2wad.ch04.examples;

import com.opensymphony.xwork2.ActionSupport;

public class MarkdownAction extends ActionSupport {
    private String mdid;
    public String getMdid() { return mdid; }
    public void setMdid(String mdid_) { mdid = mdid_; }
}
