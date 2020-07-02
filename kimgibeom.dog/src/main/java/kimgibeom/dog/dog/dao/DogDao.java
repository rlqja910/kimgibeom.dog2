package kimgibeom.dog.dog.dao;

import java.util.List;

import kimgibeom.dog.dog.domain.Dog;

public interface DogDao {
	List<Dog> getDogs();

	List<Dog> searchDogs(String dogKind, String dogEntDate);

	List<Dog> searchDogsForTitle(String dogTitle);

	List<Dog> searchBeforeAdoptDogs(String dogTitle);

	List<Dog> searchAfterAdoptDogs(String dogTitle);

	int addDog(Dog dog);

	Dog searchDog(int dogNum);
}
