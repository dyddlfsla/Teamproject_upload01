package Premium.A02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Premium.A03_repository.dolistDao;
import Premium.vo.dolist;
import Premium.vo.dolistSch;


@Service
public class dolistService {
	@Autowired
	private dolistDao dao;
	public ArrayList<dolist> my_do_list(dolistSch sch){
		
		return dao.my_do_list(sch);
	}
	
	
}
