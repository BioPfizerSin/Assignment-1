package com.module.GroceryDao.controller;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.module.GroceryDao.repository.StoreDao;
import com.module.GroceryDao.entity.Store;

@Controller
public class StoreController {

	@Autowired
	private StoreDao storeServ;

	@GetMapping("/")
	public String getHomePage() {
		return "index";
	}

	@GetMapping("/stores")
	public String getStoresPage(Model model) {

		// get all existing stored objects
		List<Store> stores = storeServ.getAllStores();

		// inject "stores" into FE
		model.addAttribute("stores", stores);

		return "stores";
	}

	@GetMapping("/new-store")
	public String getNewStorePage() {
		return "new-store";
	}

	@PostMapping("/add-store")
	public String addStore(@ModelAttribute("store") Store store) {

		System.out.println("Name: " + store.getName());
		System.out.println("Phone: " + store.getPhone());
		System.out.println("Locality: " + store.getLocalities());

//		// if data exists, add store
//		if (store != null) {
			storeServ.saveStore(store);
//		} else {
//			model.addAttribute("error! data not exist", model);
//		}

		return "redirect:stores";
	}

}
