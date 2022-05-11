package pl.pospieszny.divingapp.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.pospieszny.divingapp.utils.PasswordUtil;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "divers")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Diver {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{diverName.notBlank.message}")
    private String name;
    @NotBlank(message = "{diverSurname.notBlank.message}")
    private String surname;
    @Email(message = "{diverEmail.email.message}")
    @NotBlank(message = "{diverEmail.notBlank.message}")
    @Column(unique = true)
    private String email;

    @NotBlank
    private String password;

    private boolean admin;

    public String getFullName() {
        return String.join(" ",this.name, this.surname);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = PasswordUtil.createHash(password);
    }

}