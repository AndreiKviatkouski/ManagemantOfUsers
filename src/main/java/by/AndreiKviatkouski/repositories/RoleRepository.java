package by.AndreiKviatkouski.repositories;

import by.AndreiKviatkouski.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Set;

public interface RoleRepository extends JpaRepository<Role, Long> {


    @Query(value = "select r from Role r")
    Set<Role> getRoles();
}
