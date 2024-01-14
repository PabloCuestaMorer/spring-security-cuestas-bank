package pcuesta.cuestasbank.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pcuesta.cuestasbank.model.Cards;
import pcuesta.cuestasbank.model.Customer;
import pcuesta.cuestasbank.repository.CardsRepository;
import pcuesta.cuestasbank.repository.CustomerRepository;

import java.util.List;

@RestController
public class CardsController {

    private final CardsRepository cardsRepository;

    private final CustomerRepository customerRepository;

    public CardsController(CardsRepository cardsRepository, CustomerRepository customerRepository) {
        this.cardsRepository = cardsRepository;
        this.customerRepository = customerRepository;
    }

    @GetMapping("/myCards")
    public List<Cards> getCardDetails(@RequestParam String email) {
        List<Customer> customers = customerRepository.findByEmail(email);
        if (customers != null && !customers.isEmpty()) {
            return cardsRepository.findByCustomerId(customers.getFirst().getId());
        }
        return null;
    }

}
