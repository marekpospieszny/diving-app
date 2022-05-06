package pl.pospieszny.divingapp.service;

import pl.pospieszny.divingapp.entity.Message;

import java.util.List;

public interface MessageService {

    List<Message> getAllMessages();

    void add(Message message);

    Message get(Long id);

    void delete(Long id);

    void update(Message message);

    List<Message> getByUserId(Long id);

}
