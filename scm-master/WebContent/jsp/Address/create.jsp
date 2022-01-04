<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body class="landing-page hide-sidebar">
	<jsp:include page="../mainHeader.jsp"></jsp:include>

	<s:form action="../Address/saveAddress" id="formSupplierAddress"
		method="post" theme="simple">
		<s:hidden name="systemUserId" id="systemUserId" />
		<br />
		<br />
		<br />
		<div id="wrapper">

			<div class="body-content">
				<div class="divider">&nbsp;</div>

				<h4>Add Address</h4>

				<p>
					<input type="submit" name="submit" value="Submit"
						class="btn btn-primary btn-xs" id="SubmitValue"> <a
						class="btn btn-warning btn-xs" href="../Address/Index">Close</a>
				</p>
				<ul class="nav nav-tabs text-center">
					<li class="active"><a data-toggle="tab" href="#summary">Summary</a></li>
				</ul>
				<div id="summary" class="tab-pane fade in active">
					<div class="container-fluid">
						<div class="row">
							<div class="hpanel">
								<div class="panel-heading">
									<div class="panel-tools"></div>
								</div>
								<div class="panel-body">
									<div class="form-horizontal">
										<br /> <br />
										<div class="col-md-6">
											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="SupplierId">SupplierId</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="SupplierId" name="supplierId" type="number"
														theme="simple"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="SupplierId" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="SupplierNumber">Supplier
													CSD No.</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="SupplierNumber" name="supplierNumber" theme="simple"
														maxlength="16"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="SupplierNumber"
														data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="IsPreferred">Is
													Preferred</label>
												<div class="col-md-9">
													<div>
													<s:checkbox id="IsPreferred" theme="simple"
																name="preferred"
																cssClass="i-check"></s:checkbox>
														<!--<s:select
															list="#{'-1':'Not Set', 'true':'True', 'false':'False'}"
															name="preferred" id="IsPreferred" theme="simple"
															cssClass="list-box tri-state" />-->
														<span class="field-validation-valid text-danger"
															data-valmsg-for="IsPreferred" data-valmsg-replace="true"></span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="IsActive">Is
													Active</label>
												<div class="col-md-9">
													<div>
													<s:checkbox id="IsActive" theme="simple"
																name="active"
																cssClass="i-check"></s:checkbox>
														<!--<s:select
															list="#{'-1':'Not Set', 'true':'True', 'false':'False'}"
															name="isActive" id="IsActive" theme="simple"
															cssClass="list-box tri-state" />-->
														<span class="field-validation-valid text-danger"
															data-valmsg-for="IsActive" data-valmsg-replace="true"></span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="AddressTypeCode">AddressTypeCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="AddressTypeCode" name="addressTypeCode" theme="simple"
														maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="AddressTypeCode"
														data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="AddressLine1">Address
													Line 1</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="AddressLine1" name="addressLine1" theme="simple"
														maxlength="128"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="AddressLine1" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="AddressLine2">Address
													Line 2</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="AddressLine2" name="addressLine2" theme="simple"
														maxlength="128"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="AddressLine2" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="CountryCode">CountryCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="CountryCode" name="countryCode" theme="simple"
														maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="CountryCode" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="ProvinceCode">ProvinceCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="ProvinceCode" name="provinceCode" theme="simple"
														maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="ProvinceCode" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="DistrictCode">DistrictCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="DistrictCode" name="districtCode" theme="simple"
														maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="DistrictCode" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="MunicipalityCode">MunicipalityCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="MunicipalityCode" name="municipalityCode"
														theme="simple" maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="MunicipalityCode"
														data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="CityCode">CityCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="CityCode" name="cityCode" theme="simple" maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="CityCode" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="SuburbCode">SuburbCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="SuburbCode" name="suburbCode" theme="simple"
														maxlength="20"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="SuburbCode" data-valmsg-replace="true"></span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="WardCode">WardCode</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="WardCode" name="wardCode" theme="simple"
														maxlength="20"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="WardCode" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="PostalCode">Postal
													Code</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="PostalCode" name="postalCode" theme="simple"
														maxlength="8"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="PostalCode" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="IsPostalAddress">IsPostal
													Address</label>
												<div class="col-md-9">
													<div>
													<s:checkbox id="IsPostalAddress" theme="simple"
																name="postalAddress"
																cssClass="i-check"></s:checkbox>
														<!--<s:select
															list="#{'-1':'Not Set', 'true':'True', 'false':'False'}"
															name="isPostalAddress" id="IsPostalAddress"
															theme="simple" cssClass="list-box tri-state" />-->
														<span class="field-validation-valid text-danger"
															data-valmsg-for="IsPostalAddress"
															data-valmsg-replace="true"></span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3"
													for="IsDeliveryAddress">Is Delivery Address</label>
												<div class="col-md-9">
													<div>
													<s:checkbox id="IsDeliveryAddress" theme="simple"
																name="deliveryAddress"
																cssClass="i-check"></s:checkbox>
														<!--<s:select
															list="#{'-1':'Not Set', 'true':'True', 'false':'False'}"
															name="isDeliveryAddress" id="IsDeliveryAddress"
															theme="simple" cssClass="list-box tri-state" />-->
														<span class="field-validation-valid text-danger"
															data-valmsg-for="IsDeliveryAddress"
															data-valmsg-replace="true"></span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3"
													for="IsPhysicalAddress">Is Physical Address</label>
												<div class="col-md-9">
													<div>
													<s:checkbox id="IsPhysicalAddress" theme="simple"
																name="physicalAddress"
																cssClass="i-check"></s:checkbox>
														<!--<s:select
															list="#{'-1':'Not Set', 'true':'True', 'false':'False'}"
															name="isPhysicalAddress" id="IsPhysicalAddress"
															theme="simple" cssClass="list-box tri-state" />-->
														<span class="field-validation-valid text-danger"
															data-valmsg-for="IsPhysicalAddress"
															data-valmsg-replace="true"></span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="IsPaymentAddress">Is
													Payment Address</label>
												<div class="col-md-9">
													<div>
													<s:checkbox id="IsPaymentAddress" theme="simple"
																name="paymentAddress"
																cssClass="i-check"></s:checkbox>
														<!--<s:select
															list="#{'-1':'Not Set', 'true':'True', 'false':'False'}"
															name="isPaymentAddress" id="IsPaymentAddress"
															theme="simple" cssClass="list-box tri-state" />-->
														<span class="field-validation-valid text-danger"
															data-valmsg-for="IsPaymentAddress"
															data-valmsg-replace="true"></span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="Field1">Field1</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="Field1" name="field1" theme="simple" maxlength="64"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="Field1" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="Field2">Field2</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="Field2" name="field2" theme="simple" maxlength="64"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="Field2" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="Field3">Field3</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="Field3" name="field3" theme="simple" maxlength="64"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="Field3" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="CreatedDate">CreatedDate</label>
												<div class="col-md-9">
													<s:textfield
														cssClass="form-control datePicker text-box single-line"
														id="CreatedDate" type="datetime" name="createdDate"
														theme="simple" readonly="true">
														<s:param name="value">
															<s:date name="createdDate" format="yyyy/MM/dd" />
														</s:param>
													</s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="CreatedDate" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="EditDate">EditDate</label>
												<div class="col-md-9">
													<s:textfield
														cssClass="form-control datePicker text-box single-line"
														id="EditDate" type="datetime" name="editDate"
														theme="simple" readonly="true">
														<s:param name="value">
															<s:date name="editDate" format="yyyy/MM/dd" />
														</s:param>
													</s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="EditDate" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3" for="XmlFileId">XmlFileId</label>
												<div class="col-md-9">
													<s:textfield cssClass="form-control text-box single-line"
														id="XmlFileId" name="xmlFileId" theme="simple"></s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="XmlFileId" data-valmsg-replace="true"></span>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label class="control-label col-md-3"
													for="ProcessedTimeStamp">ProcessedTimeStamp</label>
												<div class="col-md-9">
													<s:textfield
														cssClass="form-control datePicker text-box single-line"
														id="ProcessedTimeStamp" type="datetime"
														name="processedTimeStamp" theme="simple" readonly="true">
														<s:param name="value">
															<s:date name="processedTimeStamp" format="yyyy/MM/dd" />
														</s:param>
													</s:textfield>
													<span class="field-validation-valid text-danger"
														data-valmsg-for="ProcessedTimeStamp"
														data-valmsg-replace="true"></span>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- Main view -->
			<div class="space-30">&nbsp;</div>


			<jsp:include page="../footer.jsp"></jsp:include>
		</div>


	</s:form>
</body>
</html>