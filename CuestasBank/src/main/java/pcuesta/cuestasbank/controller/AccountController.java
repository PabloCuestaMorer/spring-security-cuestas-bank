package pcuesta.cuestasbank.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pcuesta.cuestasbank.model.Accounts;
import pcuesta.cuestasbank.model.Customer;
import pcuesta.cuestasbank.repository.AccountsRepository;
import pcuesta.cuestasbank.repository.CustomerRepository;

import java.util.List;

@RestController
public class AccountController {

    private final AccountsRepository accountsRepository;
    private final CustomerRepository customerRepository;

    public AccountController(AccountsRepository accountsRepository, CustomerRepository customerRepository) {
        this.accountsRepository = accountsRepository;
        this.customerRepository = customerRepository;
    }

    @GetMapping("/myAccount")
    public Accounts getAccountDetails(@RequestParam String email) {
        List<Customer> customers = customerRepository.findByEmail(email);
        if (customers != null && !customers.isEmpty()) {
            return accountsRepository.findByCustomerId(customers.getFirst().getId());
        }
        return null;
    }

}
