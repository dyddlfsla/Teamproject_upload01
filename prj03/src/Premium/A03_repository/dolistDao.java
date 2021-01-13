package Premium.A03_repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import Premium.vo.dolist;
import Premium.vo.dolistSch;

@Repository
public interface dolistDao {
	
	public ArrayList<dolist> my_do_list(dolistSch sch);
	
}
