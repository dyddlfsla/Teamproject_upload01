package Premium.A03_repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import Premium.vo.And_work;
import Premium.vo.And_workCeo;


@Repository
public interface A05_AndroidDao {

	public ArrayList<And_work> alist (And_work aw);
	
	public ArrayList<And_workCeo> aclist(And_workCeo acw);
}
