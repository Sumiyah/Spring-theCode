package com.sumiyah.code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "index.jsp";
    }
    
    @RequestMapping(value="/check", method=RequestMethod.POST)
    public String check(@RequestParam(value="guess") String guess, 
    	Model model, RedirectAttributes rAttributes) {
    	if(guess.equals("Online")) {
    		return "redirect:/code";
    	}
    	
    	rAttributes.addFlashAttribute("error", "Incorrect Guess, Try Again!");
    	return "redirect:/";
    	
    }
    
    @GetMapping("/code")
    public String code() {
    	return "code.jsp";
    }

}
