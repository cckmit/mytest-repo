package com.scm.dao.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the SupplierRotations database table.
 * 
 */
@Entity
@Table(name="SupplierRotations")
@NamedQuery(name="SupplierRotation.findAll", query="SELECT s FROM SupplierRotation s")
public class SupplierRotation implements Serializable {
	private static final Long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique=true, nullable=false)
	private Long id;

	@Column(name="ApprovedCounter")
	private Long approvedCounter;

	@Column(name="CreatedDateTime")
	private Timestamp createdDateTime;

	@Column(name="DeniedCounter")
	private Long deniedCounter;

	@Column(name="IsActive", nullable=false)
	private Boolean isActive;

	@Column(name="IsDeleted", nullable=false)
	private Boolean isDeleted;

	@Column(name="IsEligible", nullable=false)
	private Boolean isEligible;

	@Column(name="IsLocked")
	private Boolean isLocked;

	@Column(name="ModifiedDateTime")
	private Timestamp modifiedDateTime;

	@Column(name="RotationTemplateId")
	private Long rotationTemplateId;

	@Column(name="SupplierMasterId")
	private Long supplierMasterId;

	@Column(name="TotalCounter")
	private Long totalCounter;

	//bi-directional many-to-one association to SystemUser
	@ManyToOne
	@JoinColumn(name="CreatedBySystemUserId")
	private SystemUser systemUser1;

	//bi-directional many-to-one association to SystemUser
	@ManyToOne
	@JoinColumn(name="ModifiedBySystemUserId")
	private SystemUser systemUser2;

	public SupplierRotation() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getApprovedCounter() {
		return this.approvedCounter;
	}

	public void setApprovedCounter(Long approvedCounter) {
		this.approvedCounter = approvedCounter;
	}

	public Timestamp getCreatedDateTime() {
		return this.createdDateTime;
	}

	public void setCreatedDateTime(Timestamp createdDateTime) {
		this.createdDateTime = createdDateTime;
	}

	public Long getDeniedCounter() {
		return this.deniedCounter;
	}

	public void setDeniedCounter(Long deniedCounter) {
		this.deniedCounter = deniedCounter;
	}

	public Boolean getIsActive() {
		return this.isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public Boolean getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Boolean getIsEligible() {
		return this.isEligible;
	}

	public void setIsEligible(Boolean isEligible) {
		this.isEligible = isEligible;
	}

	public Boolean getIsLocked() {
		return this.isLocked;
	}

	public void setIsLocked(Boolean isLocked) {
		this.isLocked = isLocked;
	}

	public Timestamp getModifiedDateTime() {
		return this.modifiedDateTime;
	}

	public void setModifiedDateTime(Timestamp modifiedDateTime) {
		this.modifiedDateTime = modifiedDateTime;
	}

	public Long getRotationTemplateId() {
		return this.rotationTemplateId;
	}

	public void setRotationTemplateId(Long rotationTemplateId) {
		this.rotationTemplateId = rotationTemplateId;
	}

	public Long getSupplierMasterId() {
		return this.supplierMasterId;
	}

	public void setSupplierMasterId(Long supplierMasterId) {
		this.supplierMasterId = supplierMasterId;
	}

	public Long getTotalCounter() {
		return this.totalCounter;
	}

	public void setTotalCounter(Long totalCounter) {
		this.totalCounter = totalCounter;
	}

	public SystemUser getSystemUser1() {
		return this.systemUser1;
	}

	public void setSystemUser1(SystemUser systemUser1) {
		this.systemUser1 = systemUser1;
	}

	public SystemUser getSystemUser2() {
		return this.systemUser2;
	}

	public void setSystemUser2(SystemUser systemUser2) {
		this.systemUser2 = systemUser2;
	}

}