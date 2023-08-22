package org.wcci.usefulAndInvasivePlants.restControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorRestController {

    @RequestMapping(value = {"/", "/{path:[^\\.]*}"})
    public String index() {
        return "forward:/index.html";
    }

    @GetMapping("/error")
    public String error() {
        return "error";
    }
}