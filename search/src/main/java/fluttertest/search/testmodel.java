package fluttertest.search;

import org.springframework.data.mongodb.core.mapping.Document;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Document(collection = "route")
public class testmodel {
    private int routeId;
    private String routeName;
    private String city;
}
