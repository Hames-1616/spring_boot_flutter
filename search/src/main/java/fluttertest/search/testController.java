package fluttertest.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class testController {
    @Autowired
    testserviceimpl t;



    @GetMapping("/route/{rname}")
    testmodel getrname(@PathVariable(name = "rname") String rname){
        return t.getRoutebyrouteName(rname);
    }


    @GetMapping("/city/{cname}")
    testmodel getcname(@PathVariable(name = "cname") String cname){
        return t.getRoutebycity(cname);
    }
}
