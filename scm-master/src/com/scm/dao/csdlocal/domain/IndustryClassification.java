package com.scm.dao.csdlocal.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the IndustryClassifications database table.
 * 
 */
@Entity
@Table(name="IndustryClassifications")
@NamedQuery(name="IndustryClassification.findAll", query="SELECT i FROM IndustryClassification i")
public class IndustryClassification implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="IndustryClassificationId")
	private int industryClassificationId;

	@Column(name="Code")
	private String code;

	@Column(name="EffectiveDate")
	private Timestamp effectiveDate;

	@Column(name="IsActive")
	private boolean isActive;

	@Column(name="Name")
	private String name;

	@Column(name="ParentIndustryClassificationId")
	private int parentIndustryClassificationId;

	@Column(name="ProcessedTimeStamp")
	private Timestamp processedTimeStamp;

	@Column(name="XmlFileId")
	private int xmlFileId;

	public IndustryClassification() {
	}

	public int getIndustryClassificationId() {
		return this.industryClassificationId;
	}

	public void setIndustryClassificationId(int industryClassificationId) {
		this.industryClassificationId = industryClassificationId;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Timestamp getEffectiveDate() {
		return this.effectiveDate;
	}

	public void setEffectiveDate(Timestamp effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public boolean getIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParentIndustryClassificationId() {
		return this.parentIndustryClassificationId;
	}

	public void setParentIndustryClassificationId(int parentIndustryClassificationId) {
		this.parentIndustryClassificationId = parentIndustryClassificationId;
	}

	public Timestamp getProcessedTimeStamp() {
		return this.processedTimeStamp;
	}

	public void setProcessedTimeStamp(Timestamp processedTimeStamp) {
		this.processedTimeStamp = processedTimeStamp;
	}

	public int getXmlFileId() {
		return this.xmlFileId;
	}

	public void setXmlFileId(int xmlFileId) {
		this.xmlFileId = xmlFileId;
	}

}