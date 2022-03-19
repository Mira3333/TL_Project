package tl.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class StutService {
	@Autowired
	private StudentRepository sRep;
	
	public Student checkLogin(String account, String password) {
		return sRep.findByAccountAndPassword(account, password);
	}
	
	public Student findByAccount(String account) {
		return sRep.findByAccount(account);
	}
	public Student insert(Student student) {
		return sRep.save(student);
	}
	
	public Student update(Student student) {
		return sRep.save(student);
	}
	
	public Student findById(Integer id) {
		Optional<Student> op1=sRep.findById(id);
		if(op1.isEmpty()) {
			return null;
		}
		return op1.get();
	} 
	
	public Integer deleteByAccount(String account) {
		return sRep.deleteByAccount(account);
	} 
	
	public List<Student> selectAll(){
		return sRep.findAll();
	}
}
