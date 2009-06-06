package com.packt.s2wad.ch09.examples.exceptions;

import com.opensymphony.xwork2.ActionSupport;

public class Except extends ActionSupport {
    @Override
    public String execute() throws Exception {
        throw new RuntimeException("I'm thrown from the Except action's execute() method.");
    }
}
