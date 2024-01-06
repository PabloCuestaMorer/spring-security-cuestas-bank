package pcuesta.cuestasbank.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pcuesta.cuestasbank.model.Cards;

import java.util.List;

@Repository
public interface CardsRepository extends CrudRepository<Cards, Long> {
	
	List<Cards> findByCustomerId(int customerId);

}
