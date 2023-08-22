package org.wcci.usefulAndInvasivePlants.restControllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class TestRestController {
    @GetMapping("/api/double/{val}")
    public int doubleNumber(@PathVariable final int val) {
        return val * 2;
    }

}