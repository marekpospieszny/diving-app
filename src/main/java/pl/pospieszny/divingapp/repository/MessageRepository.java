package pl.pospieszny.divingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.pospieszny.divingapp.entity.Message;

import java.util.List;

public interface MessageRepository extends JpaRepository<Message, Long> {

    @Query("select m from Message m where m.sender.id = ?1 or m.receiver.id = ?1")
    List<Message> findAllMessagesByUserId(Long id);
}
