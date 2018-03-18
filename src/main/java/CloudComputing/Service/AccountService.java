package CloudComputing.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import CloudComputing.DAO.AccountsRespository;
import CloudComputing.Model.Accounts;

@Service
@Transactional
public class AccountService {

	private final AccountsRespository accountsRespository;

	public AccountService(AccountsRespository accountsRespository) {
		super();
		this.accountsRespository = accountsRespository;
	}
	
	public List<Accounts> findAllAccounts() {
		List<Accounts> accounts = new ArrayList<>();
		for (Accounts newa : accountsRespository.findAll()) {
			accounts.add(newa);
		}
		return accounts;
	}
}
