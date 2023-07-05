package fluttertest.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class testserviceimpl implements testservice{

    @Autowired
    testrepo t;

    @Override
    public testmodel getRoutebyrouteName(String routename) {
       return t.findByRouteName(routename).orElseThrow();
    }

    @Override
    public testmodel getRoutebycity(String cname) {
      return t.findBycity(cname).orElseThrow();
 }
    
}
