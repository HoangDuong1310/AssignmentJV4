package repository;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import model.AccountModel;
import model.GaiAnimeModel;
import model.GaiAnimeModel;
import utility.HibernateUtility;

public class GaiAnimeRepository {
	public static void main(String[] args) throws ParseException {
//		SessionFactory facory = HibernateUtility.getFactory();
//		Session session = facory.openSession();
//		SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
//		LocalDate localdate = LocalDate.now();
//		GaiAnimeModel ga = new GaiAnimeModel();
//		ga.setId(1);
//		ga.setName("abcd");
//		ga.setDescription("abc");
//		ga.setPrice(BigDecimal.valueOf(100000));
//		ga.setQuantity(100);
//		ga.setCreatedUser("abc");
//		ga.setCreatedDate(localdate);
//		ga.setLastModifiedUser("abc");
//		ga.setLastModifiedDate(date.parse("13/10/2001"));
//		ga.setIsDeleted(true);
//		ga.setCustom("vay");
//		ga.setPower("bumbum");
//		ga.setAmountHarem(2);
//		ga.setImg("anh.jpg");
//		insert(ga);
		readAllAcc();
		readAll();
//		List<GaiAnimeModel> gaiani = readByName("%pp%");
//		for (GaiAnimeModel gaiAnimeModel : gaiani) {
//			System.out.println(gaiAnimeModel);
//		}

	}

	public static void insert(GaiAnimeModel GaiAnimeModel) {
		SessionFactory facory = HibernateUtility.getFactory();
		Session session = facory.openSession();
		Transaction trans = session.beginTransaction();
		session.save(GaiAnimeModel);
		trans.commit();
		session.close();
	}

	public static void insertAcc(AccountModel AccountModels) {
		SessionFactory facory = HibernateUtility.getFactory();
		Session session = facory.openSession();
		Transaction trans = session.beginTransaction();
		session.save(AccountModels);
		trans.commit();
		session.close();
	}

	public static List<GaiAnimeModel> readAll() {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		Query<GaiAnimeModel> query = session.createQuery("FROM GaiAnimeModel g", GaiAnimeModel.class);
		List<GaiAnimeModel> GaiAnimeModell = query.getResultList();
		for (GaiAnimeModel x : GaiAnimeModell) {
			System.out.println(x);
		}
		return GaiAnimeModell;
	}

	public static GaiAnimeModel readByID(Integer id) {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		GaiAnimeModel gai = session.find(GaiAnimeModel.class, id);
		session.close();
		return gai;
	}

	public static void update(GaiAnimeModel gai) {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		try {
			session.getTransaction().begin();
			session.update(gai);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.close();
	}

	public static void delete(GaiAnimeModel gai) {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		try {
			session.getTransaction().begin();
			session.delete(gai);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();

		}
		session.close();

	}

	public List<GaiAnimeModel> getStatusDelete() {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		Query<GaiAnimeModel> query = session.createQuery("FROM GaiAnimeModel g WHERE g.status = true",
				GaiAnimeModel.class);
		List<GaiAnimeModel> GaiAnimeModell = query.getResultList();
		for (GaiAnimeModel x : GaiAnimeModell) {
			System.out.println(x);
		}
		return GaiAnimeModell;
	}

	public List<GaiAnimeModel> getStatusNonDelete() {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		Query<GaiAnimeModel> query = session.createQuery("FROM GaiAnimeModel g WHERE g.status = false",
				GaiAnimeModel.class);
		List<GaiAnimeModel> GaiAnimeModell = query.getResultList();
		for (GaiAnimeModel x : GaiAnimeModell) {
			System.out.println(x);
		}
		return GaiAnimeModell;
	}
	
	public static List<GaiAnimeModel> find(String status, String name, String price) {
		List<GaiAnimeModel> list = null;
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		String hql = "FROM GaiAnimeModel g Where 1=1" + " ";
	
		if (status.equals("false")) {
			hql += "and g.status=false" + " ";
		}
		
		if (status.equals("true")) {
			hql += "and g.status=true" + " ";
		}
		

		if (!name.trim().equals("")) {
			hql += "and  g.name Like " + "'%" + name + "%'"+" ";
			

		}
		if (!price.trim().equals("")) {
			hql += "and g.price= " +price+" ";
		}
		Query<GaiAnimeModel> query = session.createQuery(hql, GaiAnimeModel.class);	
		System.out.println(hql);
		list = query.getResultList();
		return list;
	}

	public static List<GaiAnimeModel> readByName(String name) {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		Query<GaiAnimeModel> query = session.createQuery("FROM GaiAnimeModel g WHERE g.name LIKE :name",
				GaiAnimeModel.class);
		query.setParameter("name", name);
		List<GaiAnimeModel> gaiAnimeModels = query.getResultList();
		session.close();
		return gaiAnimeModels;
	}

	public static void readAllAcc() {
		SessionFactory factory = HibernateUtility.getFactory();
		Session session = factory.openSession();
		Query<AccountModel> query = session.createQuery("FROM AccountModel g", AccountModel.class);
		List<AccountModel> AccountModels = query.getResultList();
		for (AccountModel accountModel : AccountModels) {
			System.out.println(accountModel);

		}
		session.close();

	}
}
