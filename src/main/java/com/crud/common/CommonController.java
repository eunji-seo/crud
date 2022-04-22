package com.crud.common;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommonController {

   @GetMapping("/view/**")
   public String goPage(HttpServletRequest reqest) { 
      String url = reqest.getRequestURI();
      return url.substring(5);
      
   }
   
   
}