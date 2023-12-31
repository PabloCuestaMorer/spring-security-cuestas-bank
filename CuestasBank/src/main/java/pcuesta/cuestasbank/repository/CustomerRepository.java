package pcuesta.cuestasbank.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pcuesta.cuestasbank.model.Customer;

import java.util.List;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long> {

    // findByEmail --> derived method name query. Adds Email in the where condition, business logic handle by spring
    List<Customer> findByEmail(String email);
}
