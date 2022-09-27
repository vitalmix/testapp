package com.vitalii.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MvcController {

    @RequestMapping("/")
    public String showMyPage() {
        return "page";
    }

    @RequestMapping("/data")
    public String pageWithData() {
        return "page-with-data";
    }

    @RequestMapping("/uppercase")
    public String toUpperCase(HttpServletRequest request, Model model) {

        String name = request.getParameter("studentName");

        name = name.toUpperCase();

        name = "Yo! " + name;

        model.addAttribute("message", name);

        return "upper-case-message";
    }

    @RequestMapping("/uppercase2")
    public String toUpperCase2(@RequestParam("studentName") String studentName, Model model) {

        String name = studentName;

        name = name.toUpperCase();

        name = "Yo! " + name;

        model.addAttribute("message", name);

        return "upper-case-message";
    }
}
