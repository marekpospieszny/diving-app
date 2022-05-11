package pl.pospieszny.divingapp.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "locations")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{locationName.notBlank.message}")
    @Size(max = 255)
    private String name;

    @NotBlank(message = "{locationArea.notBlank.message}")
    @Size(max = 255)
    private String area;

    @NotBlank(message = "{locationCountry.notBlank.message}")
    @Size(max = 50)
    private String country;

    @NotNull(message = "{locationMaxDepth.notNull.message}")
    @Min(value = 1, message = "{locationMaxDepth.min.message}")
    private Double maxDepth;

    @Min(value = 1, message = "{locationRating.min.message}")
    @Max(value = 10, message = "{locationRating.max.message}")
    @NotNull(message = "{locationRating.notNull.message}")
    private Integer rating;

}