package CloudComputing.DAO;

import org.springframework.data.repository.CrudRepository;

import CloudComputing.Model.Accounts;

public interface AccountsRespository extends CrudRepository<Accounts, Integer>{

}
