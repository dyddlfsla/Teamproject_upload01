package Premium.A02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Premium.A03_repository.A05_AndroidDao;
import Premium.vo.And_work;
import Premium.vo.And_workCeo;

@Service
public class A05_AndroidService {
	@Autowired
	private A05_AndroidDao dao;
	
	public ArrayList<And_work> alist (And_work aw){ 
		 return dao.alist(aw);
	}
	public ArrayList<And_workCeo> aclist(And_workCeo acw){ 
		return dao.aclist(acw);
	}
}
