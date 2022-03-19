package tl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import tl.model.Student;
import tl.model.StutService;

@Controller
@Transactional
@SessionAttributes(names = { "name" })
public class StudentController {

	@Autowired
	private StutService sService;

	private Integer personalId;

	@GetMapping(path = "/MainPage")
	public String returnMainPage() {
		return "MainPage";
	}

	@GetMapping(path = "/Login")
	public String enterLoginForm() {
		return "LoginForm";
	}

	@PostMapping(path = "/checklogin")
	public String checkLogin(@RequestParam("account") String account, @RequestParam("password") String password,
			Model m) {
		Map<String, String> errors = new HashMap<>();
		m.addAttribute("errors", errors);

		if (account == null || account.length() == 0) {
			errors.put("name", "Please type ur account");
		}
		if (password == null || password.length() == 0) {
			errors.put("pwd", "You shall not pass without password");
		}
		if (errors != null && !errors.isEmpty()) {
			return "LoginForm";
		}

		Student student = sService.checkLogin(account, password);

		if (student != null) {
			String name = student.getStudent_name();
			m.addAttribute("name", name);
			this.personalId = student.getStudent_id();
			return "MainPage";
		} else {
			errors.put("msg", "account or password is incorrect");
			return "LoginForm";
		}
	}

	@GetMapping(path = "/signup")
	public String enterSignUpPage(Model m) {
		Student student = new Student();
		m.addAttribute("Student", student);
		return "signup";
	}

	@PostMapping(path = "/addStudent")
	public String signUp(@ModelAttribute("Student") Student stu, BindingResult result, Model m) {
		if (result.hasErrors()) {
			String errors = "You better fill out the application";
			m.addAttribute("errors",errors);
			return "signup";
		} else {
			sService.insert(stu);
			return "redirect:/Login";
		}
	}

	@GetMapping(path = "/selectall")
	public String processSelectAll(Model m) {
		List<Student> student = sService.selectAll();
		m.addAttribute("student", student);
		return "selectall";
	}

	@GetMapping(path = "/selectbyaccount")
	public String enterSelectByAcoountPage() {
		return "SelectByAccount";
	}

	@PostMapping(path = "/AccountSelector")
	public String accountSelector(@RequestParam("account") String account, Model m) {
		Student student = sService.findByAccount(account);
		if (student != null) {
			m.addAttribute("student", student);
			return "ResultPage";
		} else {
			String errors = "No such person,try another account";
			m.addAttribute("errors", errors);
			return "SelectByAccount";
		}
	}

	@GetMapping(path = "/deletesomeone")
	public String deleteSbByAccountPage() {
		return "DeletByAccount";
	}

	@PostMapping(path = "/AccountDelector")
	public String accountDelector(@RequestParam("daccount") String account, Model m) {

		Integer result = sService.deleteByAccount(account);
		if (result>0) {
			String success = "Enemy has been slain!!";
			m.addAttribute("deleteSuccess", success);
			return "MainPage";
		} else {
			String errors = "Delete fail,please try again";
			m.addAttribute("errors", errors);
			return "DeletByAccount";
		}
	}

	@GetMapping(path = "/updateyourself")
	public String updateYourself(Model m) {
		Student student = sService.findById(personalId);
		m.addAttribute("Student", student);
		return "updateform";
	}

	@PostMapping(path = "/updateStudent")
	public String updateStudent(@ModelAttribute("Student") Student stu, BindingResult result, Model m) {
		if (result.hasErrors()) {
			String errors1 = "Update fail,please try again";
			m.addAttribute(errors1);
			return "updateform";
		} else {
			stu.setStudent_id(personalId);
			sService.update(stu);
			m.addAttribute("name", stu.getStudent_name());
			return "MainPage";
		}
	}

	@GetMapping(path = "/Logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/Login";

	}

}
