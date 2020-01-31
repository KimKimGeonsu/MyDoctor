package com.project.mydoctor.model;

import java.util.List;

public class All_test {
	List<All_Hs> item;
	private Object total;
	
	
	public Object getTotal() {
		return total;
	}

	public void setTotal(Object total) {
		this.total = total;
	}

	public List<All_Hs> getItem() {
		return item;
	}

	public void setItem(List<All_Hs> item) {
		this.item = item;
	}

	@Override
	public String toString() {
		return "All_test [item=" + item + "]";
	}
	

}
