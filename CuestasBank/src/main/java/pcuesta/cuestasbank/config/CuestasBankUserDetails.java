package pcuesta.cuestasbank.config;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pcuesta.cuestasbank.model.Customer;
import pcuesta.cuestasbank.repository.CustomerRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class CuestasBankUserDetails implements UserDetailsService {

    private final CustomerRepository customerRepository;

    public CuestasBankUserDetails(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    /**
     * Locates the user based on the username. In the actual implementation, the search
     * may possibly be case sensitive, or case insensitive depending on how the
     * implementation instance is configured. In this case, the <code>UserDetails</code>
     * object that comes back may have a username that is of a different case than what
     * was actually requested..
     *
     * @param username the username identifying the user whose data is required.
     * @return a fully populated user record (never <code>null</code>)
     * @throws UsernameNotFoundException if the user could not be found or the user has no
     *                                   GrantedAuthority
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        String password;
        List<GrantedAuthority> authorities;
        List<Customer> customer = customerRepository.findByEmail(username);
        if (customer.isEmpty()){
            throw new UsernameNotFoundException("User details not found for user " + username);
        } else {
            username = customer.getFirst().getEmail();
            password = customer.getFirst().getPwd();
            authorities = new ArrayList<>();
            authorities.add(new SimpleGrantedAuthority(customer.getFirst().getRole()));
        }
        return new User(username, password, authorities);
    }
}
