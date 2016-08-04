package ugly_library3.model.dao;

import java.util.List;

import ugly_library3.model.User;

public interface UserDao {

    User getUser( Integer id );

    List<User> getUsers();

    User saveUser(User user);
    
    
    
}
