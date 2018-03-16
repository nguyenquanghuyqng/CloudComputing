package CloudComputing.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import CloudComputing.DAO.AccountsRespository;

@Service
@Transactional
public class AccountService {

	private final AccountsRespository accountsRespository;

	public AccountService(AccountsRespository accountsRespository) {
		this.accountsRespository = accountsRespository;
	}
}
