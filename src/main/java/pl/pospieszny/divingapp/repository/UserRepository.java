package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.pospieszny.divingapp.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
}
