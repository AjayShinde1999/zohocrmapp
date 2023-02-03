package com.zohocrmapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrmapp.entities.Contact;
import com.zohocrmapp.services.ContactService;

@Controller
public class BillingController {
	
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/generateBill")
	public String generateBillPage(@RequestParam("id") long id,Model model) {
		Contact contact = contactService.getContectById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
	}

}
