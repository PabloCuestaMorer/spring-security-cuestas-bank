package pcuesta.cuestasbank.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pcuesta.cuestasbank.model.AccountTransactions;
import pcuesta.cuestasbank.model.Customer;
import pcuesta.cuestasbank.repository.AccountTransactionsRepository;
import pcuesta.cuestasbank.repository.CustomerRepository;

import java.util.List;

@RestController
public class BalanceController {

    private final CustomerRepository customerRepository;

    private final AccountTransactionsRepository accountTransactionsRepository;

    public BalanceController(CustomerRepository customerRepository, AccountTransactionsRepository accountTransactionsRepository) {
        this.customerRepository = customerRepository;
        this.accountTransactionsRepository = accountTransactionsRepository;
    }

    @GetMapping("/myBalance")
    public List<AccountTransactions> getBalanceDetails(@RequestParam String email) {
        List<Customer> customers = customerRepository.findByEmail(email);
        if (customers != null && !customers.isEmpty()) {
            return accountTransactionsRepository.
                    findByCustomerIdOrderByTransactionDtDesc(customers.getFirst().getId());
        }
        return null;
    }
}
