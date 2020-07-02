package kimgibeom.dog.adopt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kimgibeom.dog.dog.domain.Dog;
import kimgibeom.dog.dog.service.DogService;

@Controller
@RequestMapping("/adopt")
public class AdoptController {
	@Autowired
	private DogService dogService;

	@RequestMapping("/adoptReservation/{dogNumber}")
	public String readDogInfo(@PathVariable String dogNumber, Model model) {
		int dogNum = Integer.parseInt(dogNumber);
		Dog dog = dogService.findDog(dogNum);

		System.out.println(dog);
		model.addAttribute("dog", dog);

		return "adopt/adoptReservation";
	}
}
