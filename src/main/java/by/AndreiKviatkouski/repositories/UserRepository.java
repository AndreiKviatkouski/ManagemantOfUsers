package by.AndreiKviatkouski.repositories;

import by.AndreiKviatkouski.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);
}
