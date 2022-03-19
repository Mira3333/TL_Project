package tl.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StudentRepository extends JpaRepository<Student, Integer> {

	public Student findByAccount(String account);
	
	public Student findByAccountAndPassword(String account, String password);
	
	public Integer deleteByAccount(String account);
	
	@Query(value="Select * from Student", nativeQuery = true)
	 public List<Student> findAll();
}
