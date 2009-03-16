package com.packt.s2wad.ch04.actions.examples;

import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

@Result(name = "success", type = "redirect",
        location = "/examples/dispatch-result-example")
public class RedirectResultExample extends ActionSupport {
}
