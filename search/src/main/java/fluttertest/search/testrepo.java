package fluttertest.search;

import org.springframework.data.mongodb.repository.MongoRepository;
import java.util.Optional;


public interface testrepo extends MongoRepository<testmodel,String>{
    Optional<testmodel> findByRouteName(String routeName);  
    Optional<testmodel> findBycity(String city); 
}