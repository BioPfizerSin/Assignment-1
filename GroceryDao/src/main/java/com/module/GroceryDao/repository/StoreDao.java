package com.module.GroceryDao.repository;

import java.util.*;

import org.springframework.stereotype.Service;

import com.module.GroceryDao.entity.Store;

@Service
public class StoreDao {
	
	List<Store> stores = new ArrayList<>();
	
	public Store saveStore(Store store) {
		stores.add(store);
		return store;
	}
	
	public List<Store> getAllStores(){
		return stores;
	}
}
