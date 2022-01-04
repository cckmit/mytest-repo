package com.scm.dao.inventory.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.hibernate.type.BigIntegerType;
import org.hibernate.type.BooleanType;
import org.hibernate.type.LongType;
import org.hibernate.type.StringType;
import org.hibernate.type.TimestampType;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.scm.dao.common.impl.HibernateGenericDao;
import com.scm.dao.domain.ContractDetail;
import com.scm.dao.domain.SROe;
import com.scm.dao.inventory.SroDao;
import com.scm.keys.UserCodeIdKeys;
import com.scm.modal.SroBean;

@Repository
public class HibernateSroDao extends HibernateGenericDao<SROe, Long> implements SroDao {

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
	public List<SroBean> getSROList(String maaaNumber) throws Throwable {

		String sqlStr = "select sro.id as id, sro.contractId as contractId, "
				+ "sro.contractNo as contractNo, sro.sroReference as sroReference, sro.CreatedDateTime as createdDate, "
				+ "sro.comments as comments, sro.departmentProjectManager as departmentProjectManager, "
				+ "sro.statusId as statusId, sro.supplierReferenceNo as supplierReferenceNo,"
				+ "sro.legalName as legalName, sro.isActive as activeFlag, sro.percentage as percentage "
				+ "from "
				+ "SystemUsers u, "
				+ "Suppliers s, SupplierMasters sm, SROes sro where "
				+ "  s.SupplierNumber= u.MaaaNumber and "
				+ " sm.SupplierRefId=s.id and "
				+ " sro.SupplierId=sm.id and "
				+ " sro.IsSent=:isSent and u.maaanumber=:maaaNumber";
		Query q = getSession().createSQLQuery(sqlStr).addScalar("id", new LongType())
				.addScalar("contractNo", new StringType()).addScalar("contractId", new LongType())
				.addScalar("sroReference", new StringType()).addScalar("createdDate", new TimestampType())
				.addScalar("comments", new StringType()).addScalar("departmentProjectManager", new StringType())
				.addScalar("statusId", new LongType()).addScalar("supplierReferenceNo", new StringType())
				.addScalar("legalName", new StringType()).addScalar("activeFlag", new BooleanType())
				.addScalar("percentage", new LongType());
		q.setString("maaaNumber", maaaNumber);
		q.setBoolean("isSent", true
				);
		List<SroBean> ipwList = q.setResultTransformer(Transformers.aliasToBean(SroBean.class)).list();
		return ipwList;
	}

	@Override
	@Transactional
	public Long getSROCount() throws Throwable {
		long count = 0l;
		Query qry = getSession().createQuery("select count(*) from SROe");
		Long obj = (Long) qry.uniqueResult();
		if (obj != null) {
			count = obj.longValue();
		}
		return count;
	}

	@Override
	public SROe getSROByContract(Long contractId) throws Throwable {
		Criteria crit = getSession().createCriteria(getPersistentClass());
		crit.add(Restrictions.eq("contractId", contractId));

		List<SROe> result = crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		if (result.size() >= 1) {
			return result.get(0);
		} else {
			return null;
		}
	}
}
