package com.mihaelacosovan.springMvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
              
              @RequestMapping(value = "/", method = RequestMethod.GET)
              public String home(Locale locale, Model model) {
                             System.out.println("Requested Homepage, locale = " + locale);
                             Date date = new Date();
                             DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
                             
                             String formattedDate = dateFormat.format(date);
                             model.addAttribute("serverTime", formattedDate);
                             
                             return "home";
              }
              
              @RequestMapping(value = "/user", method = RequestMethod.POST)
              public String user(@Validated User user, Model model) {
                             System.out.print("User Page requested: ");
                             model.addAttribute("userName", user.getUserName());
                             model.addAttribute("password", user.getPassword());
                             return "user";
              }
              
              @RequestMapping(value = "/LostPassword", method = RequestMethod.POST)
              public String passwordNew(@Validated LostPassword passwordNew, Model model) {
                             System.out.print("LostPassword Page requested: ");
                             model.addAttribute("passwordNew", passwordNew.getPasswordNew());
                             return "LostPassword";
              }
              
              @RequestMapping(value = "/user2", method = RequestMethod.POST)
              public String user2(@Validated LostPassword passwordNew, User user, Model model) {
                             System.out.print("Login again page requested: ");
                             model.addAttribute("userName", user.getUserName());
                             model.addAttribute("passwordNew", passwordNew.getPasswordNew());
                             return "user2";
              }
              


}
