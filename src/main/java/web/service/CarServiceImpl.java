package web.service;

import org.springframework.stereotype.Service;
import web.model.Car;
import java.util.ArrayList;
import java.util.List;

@Service
public class CarServiceImpl implements CarService {

    private final List<Car> cars = new ArrayList<Car>();

    public CarServiceImpl() {
        cars.add(new Car("toyota", "white", 2024));
        cars.add(new Car("ford", "black", 2023));
        cars.add(new Car("kia", "silver", 2022));
        cars.add(new Car("honda", "blue", 2021));
        cars.add(new Car("bmw", "red", 2020));
    }

    @Override
    public List<Car> getCars(int count) {
        if (count > cars.size()) {
            return cars;
        }
        return cars.subList(0, count);
    }

    @Override
    public List<Car> getAllCars() {
        return cars;
    }
}
