package repository;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import model.AccountModel;
import model.GaiAnimeModel;
import model.role;
import utility.HibernateUtility;

public class AccountRepository {

	public List<AccountModel> readAll(){
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		Query<AccountModel> query = session.createQuery("FROM AccountModel g", AccountModel.class);
		List<AccountModel> AccountModels = query.getResultList();
		for (AccountModel x : AccountModels) {
			System.out.println(x);
		}
		return AccountModels;
	}
	
	
	public AccountModel getByUserName(String username) {
//		SessionFactory factory = HibernateUtility.getFactory();
//		Session session = factory.openSession();
//		Query<AccountModel> query = session.createQuery("FROM AccountModel g WHERE g.username = :username", AccountModel.class);
//		query.setParameter("username", username);
//		AccountModel acc = new AccountModel();
//		acc = query.getSingleResult();
//		return acc;
		
		List<AccountModel> list = readAll();
		//duyệt danh sách
		for(AccountModel account : list) {
			//nếu tài khoản trùng với giá trị tìm kiếm
			if (account.getUsername().equals(username)) {
				return account; // thì trả về Tài Khoản
			}
		}
		//không tìm thấy
		return null;

	}

	
}
