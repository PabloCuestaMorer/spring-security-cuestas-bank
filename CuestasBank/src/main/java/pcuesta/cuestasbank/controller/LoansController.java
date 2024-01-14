package pcuesta.cuestasbank.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pcuesta.cuestasbank.model.Customer;
import pcuesta.cuestasbank.model.Loans;
import pcuesta.cuestasbank.repository.CustomerRepository;
import pcuesta.cuestasbank.repository.LoanRepository;

import java.util.List;

@RestController
public class LoansController {

    private final LoanRepository loanRepository;

    private final CustomerRepository customerRepository;

    public LoansController(LoanRepository loanRepository, CustomerRepository customerRepository) {
        this.loanRepository = loanRepository;
        this.customerRepository = customerRepository;
    }

    @GetMapping("/myLoans")
    public List<Loans> getLoanDetails(@RequestParam String email) {
        List<Customer> customers = customerRepository.findByEmail(email);
        if (customers != null && !customers.isEmpty()) {
            return loanRepository.findByCustomerIdOrderByStartDtDesc(customers.getFirst().getId());
        }
        return null;
    }

}
