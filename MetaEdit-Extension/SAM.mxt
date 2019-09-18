<?xml version="1.0" encoding="UTF-8"?>
<gxl dbName="EAST-ADL" dbPath="c:\EAST-ADL_ME" timeStamp="2019-09-18T16:05:03.172Z" version="5.5" xmlns="http://www.metacase.com/gxlGOPRRType" xmlns:sym="http://www.metacase.com/symbol">
	<graph type="Graph_SAM_061218_sysadmin_3721553581" typeName="SAM">
		<description></description>
		<slot id="a0uke8" name="Name" unique="false">
			<property type="Property_Name_sysadmin_3718454651" typeName="Name">
				<description></description>
				<dataType>
					<simpleType>String</simpleType>
				</dataType>
				<defaultValue>
					<string></string>
				</defaultValue>
				<widget>Input Field</widget>
			</property>
		</slot>
		<slot id="a1ukeq" name="Model description" unique="false">
			<property type="Property_Model_description_user_3399887679" typeName="Model description">
				<description></description>
				<dataType>
					<simpleType>Text</simpleType>
				</dataType>
				<defaultValue></defaultValue>
			</property>
		</slot>
		<identProp slotID="a0uke8"></identProp>
		<object id="Object_Adversary_sysadmin_3718889113" type="Object_Adversary_sysadmin_3718889113" typeName="Adversary">
			<description>Attacks are performed by either an individual or the system’s environment. Either way, adversaries are derivates of the system environment because they are not part of the main systems model and interact from the outside.
</description>
			<slot id="a1yfl2" name="Name" unique="false">
				<property type="Property_AdversaryName_sysadmin_3719473075" typeName="AdversaryName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<identProp slotID="a1yfl2"></identProp>
			<objectSymbol offset="50,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="210,138.92 209.392,143.16 207.662,146.755 205.072,149.157 202.016,150 57.9834,150 54.9283,149.157 52.3383,146.755 50.6077,143.16 50,138.92 50,61.0803 50.6077,56.8401 52.3383,53.2453 54.9283,50.8434 57.9834,50 202.016,50 205.072,50.8434 207.662,53.2453 209.392,56.8401 210,61.0803 210,138.92" targetPointX="130" targetPointY="100" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="150" version="1.2" width="210" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="100" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="50" y="50">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="50" y="60">
						PropertyTextSource:a1yfl2
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="60" y="50">
						Adversary
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="210" y1="90" y2="90">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_Attack_sysadmin_3718888403" type="Object_Attack_sysadmin_3718888403" typeName="Attack">
			<description>Represents a cyber-physical attack on the sys- tem described by an attack vector. An attack vector is a path or means by which an adversary can gain unauthorized access to a target system
</description>
			<slot id="kv9cvb" name="Name" unique="false">
				<property id="Property_Name_sysadmin_3536998876" type="Property_Name_sysadmin_3536998876" typeName="AttackName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="l7c79o" name="userInteraction" unique="false">
				<property type="Property_userInteraction_sysadmin_3745828326" typeName="userInteraction">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(R)equired</string>
					</listValues>
				</property>
			</slot>
			<slot id="l8c77i" name="privilegesRequired" unique="false">
				<property type="Property_privilegesRequired_sysadmin_3745828287" typeName="privilegesRequired">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="l6c6i6" name="accessRequired" unique="false">
				<property type="Property_accessRequired_sysadmin_3745827831" typeName="accessRequired">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)etwork</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)etwork</string>
						<string>(A)djacent</string>
						<string>(L)ocal</string>
						<string>(P)hysical</string>
					</listValues>
				</property>
			</slot>
			<identProp slotID="kv9cvb"></identProp>
			<objectSymbol offset="120,290" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="320,387.812 319.24,392.476 317.077,396.43 313.84,399.072 310.021,400 129.979,400 126.16,399.072 122.923,396.43 120.76,392.476 120,387.812 120,302.188 120.76,297.524 122.923,293.57 126.16,290.928 129.979,290 310.021,290 313.84,290.928 317.077,293.57 319.24,297.524 320,302.188 320,387.812" targetPointX="220" targetPointY="345" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="400" version="1.2" width="320" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="110" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="200" x="120" y="290">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="120" y="330">
						userInteraction:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="120" y="350">
						privilegesRequired:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="40" x="180" y="330">
						PropertyTextSource:l7c79o
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="40" x="180" y="350">
						PropertyTextSource:l8c77i
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="200" x="120" y="300">
						PropertyTextSource:kv9cvb
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="120" x2="320" y1="330" y2="330">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="130" y="290">
						Attack
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="120" y="370">
						accessRequired:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="40" x="180" y="370">
						PropertyTextSource:l6c6i6
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_AttackableProperty_sysadmin_3718886755" type="Object_AttackableProperty_sysadmin_3718886755" typeName="AttackableProperty">
			<description>AttackableProperties are certain properties or characteristics an adversary searches / needs for his attack to succeed.
</description>
			<slot id="kmydmb" name="Name" unique="false">
				<property type="Property_AttackablePropertyName_sysadmin_3719471801" typeName="AttackablePropertyName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="kncaj1" name="conditionPrerequisiteComplexity" unique="false">
				<property type="Property_conditionPrerequisiteComplexity_sysadmin_3745830438" typeName="conditionPrerequisiteComplexity">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(L)ow</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<identProp slotID="kmydmb"></identProp>
			<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="190,118.92 189.392,123.16 187.662,126.755 185.072,129.157 182.016,130 37.9834,130 34.9283,129.157 32.3383,126.755 30.6077,123.16 30,118.92 30,41.0803 30.6077,36.8401 32.3383,33.2453 34.9283,30.8434 37.9834,30 182.016,30 185.072,30.8434 187.662,33.2453 189.392,36.8401 190,41.0803 190,118.92" targetPointX="110" targetPointY="80" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="130" version="1.2" width="190" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="100" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="30" y="30">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="30" y="40">
						PropertyTextSource:kmydmb
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="40" y="30">
						AttackableProperty
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="80" x="30" y="70">
						conditionPrerequisiteComplexity:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="80" x="110" y="70">
						PropertyTextSource:kncaj1
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_FinancialGain_sysadmin_3718887415" type="Object_FinancialGain_sysadmin_3718887415" typeName="FinancialGain">
			<description></description>
			<slot id="a1yd5r" name="Name" unique="false">
				<property type="Property_FinancialGainName_sysadmin_3719471503" typeName="FinancialGainName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="a3ca7a" name="availabilityImpact" unique="false">
				<property id="Property_availabilityImpact_sysadmin_3745830227" type="Property_availabilityImpact_sysadmin_3745830227" typeName="availabilityImpact">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="a4ca5q" name="integrityImpact" unique="false">
				<property id="Property_integrityImpact_sysadmin_3745830199" type="Property_integrityImpact_sysadmin_3745830199" typeName="integrityImpact">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="a5ca3z" name="confidentialityImpact" unique="false">
				<property id="Property_confidentialityImpact_sysadmin_3745830167" type="Property_confidentialityImpact_sysadmin_3745830167" typeName="confidentialityImpact">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(N)one</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(N)one</string>
						<string>(L)ow</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="a27klh" name="breaksSecurityGoals" unique="false">
				<property id="Property_breaksSecurityGoals_sysadmin_3721553847" type="Property_breaksSecurityGoals_sysadmin_3721553847" typeName="breaksSecurityGoals">
					<description></description>
					<dataType>
						<simpleType>Collection</simpleType>
					</dataType>
					<contentsDataType>
						<simpleType>String</simpleType>
					</contentsDataType>
				</property>
			</slot>
			<identProp slotID="a1yd5r"></identProp>
			<objectSymbol offset="19,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="180,155.596 179.392,161.108 177.662,165.781 175.072,168.904 172.016,170 27.9834,170 24.9283,168.904 22.3383,165.781 20.6077,161.108 20,155.596 20,54.4044 20.6077,48.8921 22.3383,44.2189 24.9283,41.0964 27.9834,40 172.016,40 175.072,41.0964 177.662,44.2189 179.392,48.8921 180,54.4044 180,155.596" targetPointX="100" targetPointY="105" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="170" version="1.2" width="180" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="130" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="20" y="40">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="20" y="50">
						PropertyTextSource:a1yd5r
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="30" y="40">
						FinancialGain
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="20" x2="180" y1="80" y2="80">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="20" y="80">
						breaksSecurityGoals:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="80" y="80">
						PropertyTextSource:a27klh
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="22" y="104">
						confidentialityImpact
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="82" y="104">
						PropertyTextSource:a5ca3z
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="19" y="126">
						integrityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="79" y="126">
						PropertyTextSource:a4ca5q
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="22" y="144">
						availabilityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="82" y="144">
						PropertyTextSource:a3ca7a
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_Harm_sysadmin_3718887288" type="Object_Harm_sysadmin_3718887288" typeName="Harm">
			<description>A threat by an attack meant to actively or passively harm passengers and other road users.
</description>
			<slot id="a1ydba" name="Name" unique="false">
				<property type="Property_HarmName_sysadmin_3719471603" typeName="HarmName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="a2fn16" name="breaksSecurityGoals" unique="false">
				<property href="#Property_breaksSecurityGoals_sysadmin_3721553847"></property>
			</slot>
			<slot id="a3cabn" name="availabilityImpact" unique="false">
				<property href="#Property_availabilityImpact_sysadmin_3745830227"></property>
			</slot>
			<slot id="a4caak" name="integrityImpact" unique="false">
				<property href="#Property_integrityImpact_sysadmin_3745830199"></property>
			</slot>
			<slot id="a5ca9w" name="confidentialityImpact" unique="false">
				<property href="#Property_confidentialityImpact_sysadmin_3745830167"></property>
			</slot>
			<identProp slotID="a1ydba"></identProp>
			<objectSymbol offset="36,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="200,156.704 199.392,161.792 197.662,166.106 195.072,168.988 192.016,170 47.9834,170 44.9283,168.988 42.3383,166.106 40.6077,161.792 40,156.704 40,63.2964 40.6077,58.2081 42.3383,53.8944 44.9283,51.0121 47.9834,50 192.016,50 195.072,51.0121 197.662,53.8944 199.392,58.2081 200,63.2964 200,156.704" targetPointX="120" targetPointY="110" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="170" version="1.2" width="200" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="120" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="40" y="50">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="40" y="60">
						PropertyTextSource:a1ydba
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="50" y="50">
						Harm
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="40" x2="200" y1="90" y2="90">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="40" y="90">
						breaksSecurityGoals:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="100" y="90">
						PropertyTextSource:a2fn16
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="39" y="108">
						confidentialityImpact
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="99" y="108">
						PropertyTextSource:a5ca9w
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="36" y="130">
						integrityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="96" y="130">
						PropertyTextSource:a4caak
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="39" y="148">
						availabilityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="99" y="148">
						PropertyTextSource:a3cabn
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_InformationRetrieval_sysadmin_3718887376" type="Object_InformationRetrieval_sysadmin_3718887376" typeName="InformationRetrieval">
			<description></description>
			<slot id="ksyd86" name="Name" unique="false">
				<property type="Property_InformationRetrievalName_sysadmin_3719471547" typeName="InformationRetrievalName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="ktfn5q" name="breaksSecurityGoals" unique="false">
				<property href="#Property_breaksSecurityGoals_sysadmin_3721553847"></property>
			</slot>
			<slot id="kucack" name="confidentialityImpact" unique="false">
				<property href="#Property_confidentialityImpact_sysadmin_3745830167"></property>
			</slot>
			<slot id="kvcad0" name="integrityImpact" unique="false">
				<property href="#Property_integrityImpact_sysadmin_3745830199"></property>
			</slot>
			<slot id="kwcadf" name="availabilityImpact" unique="false">
				<property href="#Property_availabilityImpact_sysadmin_3745830227"></property>
			</slot>
			<identProp slotID="ksyd86"></identProp>
			<objectSymbol offset="48,60" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="210,166.704 209.392,171.792 207.662,176.106 205.072,178.988 202.016,180 57.9834,180 54.9283,178.988 52.3383,176.106 50.6077,171.792 50,166.704 50,73.2964 50.6077,68.2081 52.3383,63.8944 54.9283,61.0121 57.9834,60 202.016,60 205.072,61.0121 207.662,63.8944 209.392,68.2081 210,73.2964 210,166.704" targetPointX="130" targetPointY="120" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="180" version="1.2" width="210" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="120" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="50" y="60">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="50" y="70">
						PropertyTextSource:ksyd86
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="60" y="60">
						InformationRetrieval
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="50" x2="210" y1="100" y2="100">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="50" y="100">
						breaksSecurityGoals:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="110" y="100">
						PropertyTextSource:ktfn5q
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="51" y="116">
						confidentialityImpact
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="111" y="116">
						PropertyTextSource:kucack
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="48" y="138">
						integrityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="108" y="138">
						PropertyTextSource:kvcad0
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="51" y="156">
						availabilityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="111" y="156">
						PropertyTextSource:kwcadf
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_Item_sysadmin_3509259179" type="Object_Item_sysadmin_3509259179" typeName="Item">
			<description>Item represents the scope of safety information and the safety assessment through its reference to one or several Features.</description>
			<slot id="hm2cb5" name="Name" unique="false">
				<property type="Property_ItemName_sysadmin_3509612264" typeName="ItemName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="hln75v" name="DevelopmentCategory" unique="false">
				<property type="Property_DevelopmentCategory_sysadmin_3509259009" typeName="DevelopmentCategory">
					<description>DevelopmentCategoryKind is an enumeration with enumeration literals indicating whether the item 
is a modification of an existing item or if it is a new development.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>New</string>
					</defaultValue>
					<widget>Radio Button Set</widget>
					<listValues>
						<string>New</string>
						<string>Modification</string>
					</listValues>
				</property>
			</slot>
			<slot id="hodn8l" name="Features" unique="false">
				<property type="Property_Features_sysadmin_3548507121" typeName="Features">
					<description></description>
					<dataType>
						<simpleType>Collection</simpleType>
					</dataType>
					<contentsDataType>
						<object id="Object_Feature_user_3399887361" type="Object_Feature_user_3399887361" typeName="Feature">
							<description>Feature is a (non)functional characteristic, constraint or property that can be present or not in a (vehicle) product line.</description>
							<slot id="aeer14" name="Name" unique="false">
								<property id="Property_2ECUName_user_3310972947" type="Property_2ECUName_user_3310972947" typeName="ModelName">
									<description>Name is a mandatory property value.</description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string></string>
									</defaultValue>
									<regex>.+</regex>
									<widget>Input Field</widget>
								</property>
							</slot>
							<slot id="afer4z" name="Cardinality" unique="false">
								<property type="Property_Cardinality_user_3399886960" typeName="Cardinality">
									<description>Specifies the Feature's cardinality stating how often this feature may be selected during configuration.</description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string>0..1</string>
									</defaultValue>
									<widget>Overridable List</widget>
									<listValues>
										<string>1</string>
										<string>0..1</string>
										<string>0..N</string>
										<string>1..N</string>
										<string>0</string>
									</listValues>
								</property>
							</slot>
							<slot id="ang3ks" name="ActualBindingTime" unique="false">
								<property type="Property_BindingTimeKind_user_3399886739" typeName="BindingTimeKind">
									<description>BindingTimeKind represents the set of possible binding times.</description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string>SystemDesignTime</string>
									</defaultValue>
									<widget>Fixed List</widget>
									<listValues>
										<string>SystemDesignTime</string>
										<string>CodeGenerationTime</string>
										<string>PreCompileTime</string>
										<string>LinkTime</string>
										<string>PostBuild</string>
										<string>Runtime</string>
									</listValues>
								</property>
							</slot>
							<slot id="apghsi" name="RequiredBindingTime" unique="false">
								<property type="Property_RequiredBindingTime_user_3461233519" typeName="RequiredBindingTime">
									<description></description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string></string>
									</defaultValue>
									<widget>Fixed List</widget>
									<listValues>
										<string></string>
										<string>SystemDesignTime</string>
										<string>CodeGenerationTime</string>
										<string>PreCompileTime</string>
										<string>LinkTime</string>
										<string>PostBuild</string>
										<string>Runtime</string>
									</listValues>
								</property>
							</slot>
							<slot id="aroldd" name="FeatureParameter" unique="false">
								<property type="Property_FeatureParameter_sysadmin_3537005208" typeName="FeatureParameter">
									<description></description>
									<dataType>
										<object id="Object__EADatatype_sysadmin_3536996100" type="Object__EADatatype_sysadmin_3536996100" typeName="_EADatatype">
											<description></description>
											<slot id="a0o7eh" name="Name" unique="false">
												<property type="Property_EADatatypeName_sysadmin_3536996156" typeName="EADatatypeName">
													<description>EADatatype metaclass is a special kind of classifier, similar to a class. It differs from the class in that instances of a data type are identified only by their value.</description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string></string>
													</defaultValue>
													<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
													<widget>Input Field</widget>
												</property>
											</slot>
											<identProp slotID="a0o7eh"></identProp>
											<icon offset="29,18" xmlns="http://www.metacase.com/icon">
												<svg baseProfile="tiny" height="78" version="1.2" width="129" xmlns="http://www.w3.org/2000/svg">
													<rect fill="rgb(255,255,255)" height="60" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="100" x="29" y="18"></rect>
													<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="70" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="rgb(224,255,255)" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="100" x="29" y="18">DT</textArea>
												</svg>
											</icon>
										</object>
									</dataType>
									<dataTypeSubtype>
										<object id="Object_ArrayDatatype_sysadmin_3536999064" type="Object_ArrayDatatype_sysadmin_3536999064" typeName="ArrayDatatype">
											<description>ArrayDatatype is a datatype for an array of datatypes of the same type.</description>
											<superType>
												<object href="#Object__EADatatype_sysadmin_3536996100"></object>
											</superType>
											<slot id="a6obtp" name="MinLength" unique="false">
												<property type="Property_MinLength_sysadmin_3536999022" typeName="MinLength">
													<description></description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string></string>
													</defaultValue>
													<widget>Input Field</widget>
												</property>
											</slot>
											<slot id="a7obub" name="MaxLength" unique="false">
												<property type="Property_MaxLength_sysadmin_3536999033" typeName="MaxLength">
													<description></description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string></string>
													</defaultValue>
													<widget>Input Field</widget>
												</property>
											</slot>
											<slot id="a8obvv" name="Type" unique="false">
												<property id="Property_isOfType_sysadmin_3537003179" type="Property_isOfType_sysadmin_3537003179" typeName="isOfType">
													<description></description>
													<dataType>
														<object href="#Object__EADatatype_sysadmin_3536996100"></object>
													</dataType>
													<dataTypeSubtype>
														<object href="#Object_ArrayDatatype_sysadmin_3536999064"></object>
													</dataTypeSubtype>
													<dataTypeSubtype>
														<object id="Object_CompositeDatatype_sysadmin_3536998574" type="Object_CompositeDatatype_sysadmin_3536998574" typeName="CompositeDatatype">
															<description>A CompositeDatatype represents a non-scalar datatype. The contained datatypePrototypes act as record variables to identify the ordered datatype instances of the tuple (the CompositeDatatype).</description>
															<superType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</superType>
															<slot id="a0obqc" name="DatatypePrototypes" unique="false">
																<property type="Property_DatatypePrototypes_sysadmin_3536998962" typeName="DatatypePrototypes">
																	<description></description>
																	<dataType>
																		<simpleType>Collection</simpleType>
																	</dataType>
																	<contentsDataType>
																		<object type="Object_EADatatypePrototype_sysadmin_3536998910" typeName="EADatatypePrototype">
																			<description>The EADatatypePrototype represents a typed variable. It acts as an appearance of a datatype.</description>
																			<slot id="j22mmi" name="Name" unique="false">
																				<property href="#Property_2ECUName_user_3310972947"></property>
																			</slot>
																			<slot id="j1obmy" name="Type" unique="false">
																				<property href="#Property_isOfType_sysadmin_3537003179"></property>
																			</slot>
																			<identProp slotID="j22mmi"></identProp>
																			<objectSymbol offset="40,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																				<defaultConnectable isSticky="true" points="40,30 210,30 210,130 40,130 40,30" targetPointX="125" targetPointY="80" usesGrid="false"></defaultConnectable>
																				<svg baseProfile="tiny" height="130" version="1.2" width="210" xmlns="http://www.w3.org/2000/svg">
																					<rect fill="rgb(192,192,255)" height="100" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="40" y="30">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</rect>
																					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="100" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="40" y="30">
																						ReportTextSource:type; newline
:Name; newline
:Type
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</textArea>
																				</svg>
																			</objectSymbol>
																			<icon offset="50,20" xmlns="http://www.metacase.com/icon">
																				<svg baseProfile="tiny" height="70" version="1.2" width="100" xmlns="http://www.w3.org/2000/svg">
																					<rect fill="rgb(192,192,255)" height="50" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="50" x="50" y="20"></rect>
																				</svg>
																			</icon>
																		</object>
																	</contentsDataType>
																</property>
															</slot>
															<identProp slotID="a0o7eh"></identProp>
															<objectSymbol offset="60,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																<defaultConnectable isSticky="true" points="60,40 230,40 230,150 60,150 60,40" targetPointX="145" targetPointY="95" usesGrid="false"></defaultConnectable>
																<svg baseProfile="tiny" height="152" version="1.2" width="233" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="63" y="42">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(255,255,255)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="60" y="40">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="2.12e2" sym:y="4.2e1">
																		<rect fill="rgb(0,128,0)" height="16" rx="0" ry="4" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="212" y="42">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<rect fill="rgb(255,255,255)" height="11.4286" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="11.429" x="214.286" y="44.2857">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<rect fill="rgb(0,0,0)" height="4.5714" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="4.11401" x="217.943" y="47.7143">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</g>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="60" y="40">
																		ReportTextSource:type; newline
:Name
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="60" y="40">
																		ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																</svg>
															</objectSymbol>
															<icon offset="117,43" xmlns="http://www.metacase.com/icon">
																<svg baseProfile="tiny" height="113" version="1.2" width="187" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(0,128,0)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="117" y="43"></rect>
																	<rect fill="rgb(255,255,255)" height="50" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="50" x="127" y="53"></rect>
																	<rect fill="rgb(0,0,0)" height="20" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="18" x="143" y="68"></rect>
																</svg>
															</icon>
														</object>
													</dataTypeSubtype>
													<dataTypeSubtype>
														<object id="Object_EABoolean_sysadmin_3536996172" type="Object_EABoolean_sysadmin_3536996172" typeName="EABoolean">
															<description>EABoolean is the primitive type that holds two literals: true, false.</description>
															<superType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</superType>
															<slot id="a0cure" name="value" unique="false">
																<property type="Property_value_user_3548488669" typeName="value">
																	<description></description>
																	<dataType>
																		<simpleType>String</simpleType>
																	</dataType>
																	<defaultValue>
																		<string>false</string>
																	</defaultValue>
																	<widget>Radio Button Set</widget>
																	<listValues>
																		<string>true</string>
																		<string>false</string>
																	</listValues>
																</property>
															</slot>
															<identProp slotID="a0o7eh"></identProp>
															<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																<defaultConnectable isSticky="true" points="30,30 200,30 200,140 30,140 30,30" targetPointX="115" targetPointY="85" usesGrid="false"></defaultConnectable>
																<svg baseProfile="tiny" height="142" version="1.2" width="203" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="33" y="32">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(229,229,229)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="30" y="30">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																		<rect fill="rgb(255,255,255)" height="16" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="182" y="32">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																			<rect fill="rgb(96,96,96)" height="16" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="8" x="182" y="32">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<rect fill="rgb(255,255,255)" height="16" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="8" x="190" y="32">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</rect>
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</g>
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</g>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="30" y="30">
																		ReportTextSource:'Boolean'; newline
:Name
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="30" y="30">
																		ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																</svg>
															</objectSymbol>
															<icon offset="110,40" xmlns="http://www.metacase.com/icon">
																<svg baseProfile="tiny" height="110" version="1.2" width="180" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(255,255,255)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="110" y="40"></rect>
																	<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="70" sym:width="70" sym:x="1.1e2" sym:y="4.0e1">
																		<rect fill="rgb(96,96,96)" height="70" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="35" x="110" y="40"></rect>
																		<rect fill="rgb(255,255,255)" height="70" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="35" x="145" y="40"></rect>
																	</g>
																</svg>
															</icon>
														</object>
													</dataTypeSubtype>
													<dataTypeSubtype>
														<object id="Object_EANumerical_sysadmin_3536996437" type="Object_EANumerical_sysadmin_3536996437" typeName="EANumerical">
															<description>EANumerical has attributes for modeling of the allowed range.</description>
															<superType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</superType>
															<slot id="a3o7q9" name="Min" unique="false">
																<property type="Property_Min_sysadmin_3509699711" typeName="Min">
																	<description>The minimum value of the range. Decimal values should be specified with .</description>
																	<dataType>
																		<simpleType>String</simpleType>
																	</dataType>
																	<defaultValue>
																		<string></string>
																	</defaultValue>
																	<regex>(0x[0-9a-f]*)|(0[1-7][0-7]*)|(0b[0-1]*)|([+\-]?[0-9]+(\.[0-9]*)?(E([+\-]?)[0-9]*)?)</regex>
																	<widget>Input Field</widget>
																</property>
															</slot>
															<slot id="a4o7qh" name="Max" unique="false">
																<property type="Property_Max_sysadmin_3509699706" typeName="Max">
																	<description>The maximal value of the range. Decimal values should be specified with .</description>
																	<dataType>
																		<simpleType>String</simpleType>
																	</dataType>
																	<defaultValue>
																		<string></string>
																	</defaultValue>
																	<regex>(0x[0-9a-f]*)|(0[1-7][0-7]*)|(0b[0-1]*)|([+\-]?[0-9]+(\.[0-9]*)?(E([+\-]?)[0-9]*)?)</regex>
																	<widget>Input Field</widget>
																</property>
															</slot>
															<slot id="a5o8kn" name="Unit" unique="false">
																<property type="Property_Unit_sysadmin_3536996915" typeName="Unit">
																	<description>The unit of data.</description>
																	<dataType>
																		<object id="Object_Unit_sysadmin_3536996865" type="Object_Unit_sysadmin_3536996865" typeName="Unit">
																			<description>Unit descibes the unit of typed numerical values.</description>
																			<slot id="ino8c4" name="Name" unique="false">
																				<property type="Property_UnitName_sysadmin_3536996762" typeName="UnitName">
																					<description></description>
																					<dataType>
																						<simpleType>String</simpleType>
																					</dataType>
																					<defaultValue>
																						<string></string>
																					</defaultValue>
																					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
																					<widget>Input Field</widget>
																				</property>
																			</slot>
																			<slot id="ioo8dh" name="Factor" unique="false">
																				<property type="Property_Factor_sysadmin_3536996786" typeName="Factor">
																					<description></description>
																					<dataType>
																						<simpleType>String</simpleType>
																					</dataType>
																					<defaultValue>
																						<string></string>
																					</defaultValue>
																					<widget>Input Field</widget>
																				</property>
																			</slot>
																			<slot id="ipo8gu" name="Offset" unique="false">
																				<property type="Property_Offset_sysadmin_3536996847" typeName="Offset">
																					<description></description>
																					<dataType>
																						<simpleType>String</simpleType>
																					</dataType>
																					<defaultValue>
																						<string></string>
																					</defaultValue>
																					<widget>Input Field</widget>
																				</property>
																			</slot>
																			<slot id="iqo8hn" name="Symbol" unique="false">
																				<property type="Property_Symbol_sysadmin_3536996861" typeName="Symbol">
																					<description></description>
																					<dataType>
																						<simpleType>String</simpleType>
																					</dataType>
																					<defaultValue>
																						<string></string>
																					</defaultValue>
																					<widget>Input Field</widget>
																				</property>
																			</slot>
																			<slot id="iso97v" name="Quantity" unique="false">
																				<property type="Property_Quantity_sysadmin_3536997333" typeName="Quantity">
																					<description></description>
																					<dataType>
																						<object type="Object_Quantity_sysadmin_3536997304" typeName="Quantity">
																							<description>The Quantity describes a physical dimension for use in numerical datatypes and expressions to facilitate dimension consistency and control.</description>
																							<slot id="iso8rx" name="Name" unique="false">
																								<property type="Property_QuantityName_sysadmin_3536997046" typeName="QuantityName">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string></string>
																									</defaultValue>
																									<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="ito8vg" name="AmountOfSubstanceExp" unique="false">
																								<property type="Property_AmountOfSubstanceExp_sysadmin_3536997110" typeName="AmountOfSubstanceExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="iuo8wk" name="ElectricCurrentExp" unique="false">
																								<property type="Property_ElectricCurrentExp_sysadmin_3536997130" typeName="ElectricCurrentExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="ivo8xt" name="LengthExp" unique="false">
																								<property type="Property_LengthExp_sysadmin_3536997152" typeName="LengthExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="iwo8zy" name="LuminousIntensityExp" unique="false">
																								<property type="Property_LuminousIntensityExp_sysadmin_3536997191" typeName="LuminousIntensityExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="ixo90o" name="MassExp" unique="false">
																								<property type="Property_MassExp_sysadmin_3536997204" typeName="MassExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="iyo92b" name="ThermodynamicTemperatureExp" unique="false">
																								<property type="Property_ThermodynamicTemperatureExp_sysadmin_3536997233" typeName="ThermodynamicTemperatureExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<slot id="izo92u" name="TimeExp" unique="false">
																								<property type="Property_TimeExp_sysadmin_3536997243" typeName="TimeExp">
																									<description></description>
																									<dataType>
																										<simpleType>String</simpleType>
																									</dataType>
																									<defaultValue>
																										<string>0</string>
																									</defaultValue>
																									<widget>Input Field</widget>
																								</property>
																							</slot>
																							<identProp slotID="iso8rx"></identProp>
																							<objectSymbol offset="30,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																								<defaultConnectable isSticky="true" points="30,20 211,20 211,160 30,160 30,20" targetPointX="120.5" targetPointY="90" usesGrid="true"></defaultConnectable>
																								<svg baseProfile="tiny" height="163" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
																									<rect fill="rgb(213,213,213)" height="140" rx="0" ry="0" stroke="rgb(213,213,213)" stroke-width="1" width="180" x="33" y="23">
																										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																									</rect>
																									<rect fill="rgb(248,240,255)" height="140" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="181" x="30" y="20">
																										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																									</rect>
																									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="140" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="181" x="30" y="20">
																										ReportTextSource:type; newline
:Short name;
																										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																									</textArea>
																									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="140" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="181" x="30" y="20">
																										ReportTextSource:_dataTypeDetails()
																										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																									</textArea>
																								</svg>
																							</objectSymbol>
																							<icon offset="40,30" xmlns="http://www.metacase.com/icon">
																								<svg baseProfile="tiny" height="70" version="1.2" width="90" xmlns="http://www.w3.org/2000/svg">
																									<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="40" font-style="normal" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="rgb(248,240,255)" sym:textboxStroke="rgb(0,0,0)" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="50" x="40" y="30">Q</textArea>
																								</svg>
																							</icon>
																						</object>
																					</dataType>
																				</property>
																			</slot>
																			<slot id="iro8n6" name="UnitReference" unique="false">
																				<property type="Property_UnitReference_sysadmin_3536996961" typeName="UnitReference">
																					<description></description>
																					<dataType>
																						<object href="#Object_Unit_sysadmin_3536996865"></object>
																					</dataType>
																				</property>
																			</slot>
																			<identProp slotID="ino8c4"></identProp>
																			<objectSymbol offset="50,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																				<defaultConnectable isSticky="true" points="50,30 220,30 220,150 50,150 50,30" targetPointX="135" targetPointY="90" usesGrid="true"></defaultConnectable>
																				<svg baseProfile="tiny" height="152" version="1.2" width="222" xmlns="http://www.w3.org/2000/svg">
																					<rect fill="rgb(170,170,170)" height="120" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="52" y="32">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</rect>
																					<rect fill="rgb(255,224,255)" height="120" rx="0" ry="0" stroke="rgb(128,0,128)" stroke-width="1" width="170" x="50" y="30">
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</rect>
																					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="50" y="30">
																						ReportTextSource:type; newline
:Short name;
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</textArea>
																					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="50" y="30">
																						ReportTextSource:_dataTypeDetails()
																						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																					</textArea>
																				</svg>
																			</objectSymbol>
																			<icon offset="70,40" xmlns="http://www.metacase.com/icon">
																				<svg baseProfile="tiny" height="80" version="1.2" width="120" xmlns="http://www.w3.org/2000/svg">
																					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="40" font-style="normal" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="rgb(255,224,255)" sym:textboxStroke="rgb(128,0,128)" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="50" x="70" y="40">U</textArea>
																				</svg>
																			</icon>
																		</object>
																	</dataType>
																</property>
															</slot>
															<identProp slotID="a0o7eh"></identProp>
															<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																<defaultConnectable isSticky="true" points="30,30 200,30 200,140 30,140 30,30" targetPointX="115" targetPointY="85" usesGrid="false"></defaultConnectable>
																<svg baseProfile="tiny" height="142" version="1.2" width="203" xmlns="http://www.w3.org/2000/svg">
																	<defs>
																		<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="PathFill">
																			<stop offset="0" stop-color="rgb(255,255,255)"></stop>
																			<stop offset="0.4" stop-color="rgb(255,255,255)"></stop>
																			<stop offset="1" stop-color="rgb(160,160,255)"></stop>
																		</radialGradient>
																	</defs>
																	<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="33" y="32">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(224,239,255)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="30" y="30">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<g fill="none" stroke="none" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																		<rect fill="url(#gradient1)" height="16" rx="8" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="182" y="32">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="16" font-style="normal" font-weight="bold" height="16" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="16" x="182" y="32">
																			1
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</textArea>
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</g>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="30" y="30">
																		ReportTextSource:'Numerical'; newline
:Name
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="30" y="30">
																		ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																</svg>
															</objectSymbol>
															<icon offset="100,60" xmlns="http://www.metacase.com/icon">
																<svg baseProfile="tiny" height="130" version="1.2" width="170" xmlns="http://www.w3.org/2000/svg">
																	<defs>
																		<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.707107" sym:correctGamma="true" sym:fillType="PathFill">
																			<stop offset="0" stop-color="rgb(255,255,255)"></stop>
																			<stop offset="0.4" stop-color="rgb(255,255,255)"></stop>
																			<stop offset="1" stop-color="rgb(160,160,255)"></stop>
																		</radialGradient>
																	</defs>
																	<rect fill="url(#gradient1)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="100" y="60"></rect>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="80" font-style="normal" font-weight="bold" height="70" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="70" x="100" y="60">1</textArea>
																</svg>
															</icon>
														</object>
													</dataTypeSubtype>
													<dataTypeSubtype>
														<object id="Object_EAString_sysadmin_3536996221" type="Object_EAString_sysadmin_3536996221" typeName="EAString">
															<description>EAString is the primitive type that defines a sequence of characters in some suitable character set used to display information.</description>
															<superType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</superType>
															<identProp slotID="a0o7eh"></identProp>
															<objectSymbol offset="50,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																<defaultConnectable isSticky="true" points="49.75,50.75 220,50.75 220,161 49.75,161 49.75,50.75" targetPointX="134.875" targetPointY="105.875" usesGrid="false"></defaultConnectable>
																<svg baseProfile="tiny" height="163" version="1.2" width="223" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="53" y="53">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(239,255,224)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="50" y="51">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<g fill="none" stroke="none" stroke-width="1" sym:height="15" sym:width="16" sym:x="2.02e2" sym:y="5.2e1">
																		<rect fill="rgb(0,128,0)" height="14" rx="0" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="202" y="53">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<textArea display-align="before" fill="rgb(255,255,255)" font-family="#fixed" font-size="15" font-style="normal" font-weight="bold" height="15" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="16" x="202" y="52">
																			C
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</textArea>
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</g>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="50" y="50">
																		ReportTextSource:'String'; newline
:Name
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="50" y="50">
																		ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																</svg>
															</objectSymbol>
															<icon offset="100,50" xmlns="http://www.metacase.com/icon">
																<svg baseProfile="tiny" height="130" version="1.2" width="170" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(0,128,0)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="100" y="60"></rect>
																	<textArea display-align="before" fill="rgb(255,255,255)" font-family="#fixed" font-size="88" font-style="normal" font-weight="bold" height="80" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="70" x="100" y="50">C</textArea>
																</svg>
															</icon>
														</object>
													</dataTypeSubtype>
													<dataTypeSubtype>
														<object id="Object_Enumeration_sysadmin_3536996326" type="Object_Enumeration_sysadmin_3536996326" typeName="Enumeration">
															<description>Enumeration is a kind of datatype, whose instances may be any number &gt; 1 of user-defined enumeration literals. Enumerations contain at least two literals, otherwise it would be a constant. The contained literals need to be ordered.</description>
															<superType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</superType>
															<slot id="a1o7m9" name="IsMultiValued" unique="false">
																<property type="Property_IsMultiValued_sysadmin_3509699158" typeName="IsMultiValued">
																	<description>This boolean attribute is true, if multiple enumeration values can be selected. It is false, if only one enumeration value is allowed to be selected.</description>
																	<dataType>
																		<simpleType>Boolean</simpleType>
																	</dataType>
																	<defaultValue></defaultValue>
																</property>
															</slot>
															<slot id="a2o7nd" name="Literals" unique="false">
																<property type="Property_Literals_sysadmin_3509696318" typeName="Literals">
																	<description>Collection of literals (value) of the enumeration.</description>
																	<dataType>
																		<simpleType>Collection</simpleType>
																	</dataType>
																	<contentsDataType>
																		<simpleType>String</simpleType>
																	</contentsDataType>
																</property>
															</slot>
															<identProp slotID="a0o7eh"></identProp>
															<objectSymbol offset="30,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																<defaultConnectable isSticky="true" points="30,30 200,30 200,140 30,140 30,30" targetPointX="115" targetPointY="85" usesGrid="false"></defaultConnectable>
																<svg baseProfile="tiny" height="142" version="1.2" width="203" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="33" y="32">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(240,240,240)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="30" y="30">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.82e2" sym:y="3.2e1">
																		<rect fill="rgb(229,229,229)" height="16" rx="0" ry="8" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="182" y="32">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<g fill="none" stroke="rgb(0,0,0)" sym:height="4" sym:width="12.857" sym:x="1.84e2" sym:y="3.49714e1">
																			<ellipse cx="186" cy="36.9714" fill="rgb(0,0,0)" rx="2" ry="2" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</ellipse>
																			<line stroke="rgb(0,0,0)" stroke-width="4" x1="190" x2="196.857" y1="36.9714" y2="36.9714">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</line>
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</g>
																		<g fill="none" stroke="rgb(0,0,0)" sym:height="4" sym:width="12.857" sym:x="1.84e2" sym:y="4.1e1">
																			<ellipse cx="186" cy="43" fill="rgb(0,0,0)" rx="2" ry="2" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</ellipse>
																			<line stroke="rgb(0,0,0)" stroke-width="4" x1="190" x2="196.857" y1="43" y2="43">
																				<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																			</line>
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</g>
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</g>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="30" y="30">
																		ReportTextSource:type; newline
:Name
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="30" y="30">
																		ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																</svg>
															</objectSymbol>
															<icon offset="143,41" xmlns="http://www.metacase.com/icon">
																<svg baseProfile="tiny" height="111" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(229,229,229)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="143" y="41"></rect>
																	<ellipse cx="158" cy="64" fill="rgb(0,0,0)" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2"></ellipse>
																	<ellipse cx="158" cy="94" fill="rgb(0,0,0)" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2"></ellipse>
																	<line stroke="rgb(0,0,0)" stroke-width="5" x1="178" x2="208" y1="64" y2="64"></line>
																	<line stroke="rgb(0,0,0)" stroke-width="5" x1="178" x2="208" y1="94" y2="94"></line>
																</svg>
															</icon>
														</object>
													</dataTypeSubtype>
													<dataTypeSubtype>
														<object id="Object_RangeableValueType_sysadmin_3536997383" type="Object_RangeableValueType_sysadmin_3536997383" typeName="RangeableValueType">
															<description>The RangeableValueType adds the ability to describe the accuracy, resolution, and the significant digits of the baseRangeable datatype.</description>
															<superType>
																<object href="#Object__EADatatype_sysadmin_3536996100"></object>
															</superType>
															<slot id="a0o9f8" name="Accuracy" unique="false">
																<property type="Property_Accuracy_sysadmin_3509699452" typeName="Accuracy">
																	<description>The accuracy of the data (e.g., the FunctionFlowports input or output).</description>
																	<dataType>
																		<simpleType>String</simpleType>
																	</dataType>
																	<defaultValue>
																		<string></string>
																	</defaultValue>
																	<widget>Input Field</widget>
																</property>
															</slot>
															<slot id="a1o9fi" name="Resolution" unique="false">
																<property type="Property_Resolution_sysadmin_3509699465" typeName="Resolution">
																	<description>The resolution of the data expressed as the size of the minimum difference between data values.</description>
																	<dataType>
																		<simpleType>String</simpleType>
																	</dataType>
																	<defaultValue>
																		<string></string>
																	</defaultValue>
																	<widget>Input Field</widget>
																</property>
															</slot>
															<slot id="a2o9g3" name="SignificantDigits" unique="false">
																<property type="Property_SignificantDigits_sysadmin_3509699527" typeName="SignificantDigits">
																	<description>SignificantDigits must be positive interger number.</description>
																	<dataType>
																		<simpleType>String</simpleType>
																	</dataType>
																	<defaultValue>
																		<string>0</string>
																	</defaultValue>
																	<regex>\d+</regex>
																	<widget>Input Field</widget>
																</property>
															</slot>
															<slot id="a3ob1l" name="BaseRangeable" unique="false">
																<property type="Property_BaseRangeable_sysadmin_3536998516" typeName="BaseRangeable">
																	<description>The datatype with additional attributes specified by this concept.</description>
																	<dataType>
																		<object href="#Object_EANumerical_sysadmin_3536996437"></object>
																	</dataType>
																</property>
															</slot>
															<identProp slotID="a0o7eh"></identProp>
															<objectSymbol offset="40,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
																<defaultConnectable isSticky="true" points="40,50 210,50 210,160 40,160 40,50" targetPointX="125" targetPointY="105" usesGrid="false"></defaultConnectable>
																<svg baseProfile="tiny" height="162" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="43" y="52">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<rect fill="rgb(255,255,224)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="40" y="50">
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</rect>
																	<g fill="none" stroke="rgb(0,0,0)" sym:height="16" sym:width="16" sym:x="1.91e2" sym:y="5.2e1">
																		<rect fill="rgb(255,255,255)" height="16" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="191" y="52">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</rect>
																		<polygon fill="rgb(0,0,0)" points="202.429,60 207,56.5714 207,63.4286" stroke="rgb(0,0,0)" stroke-width="0">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</polygon>
																		<polygon fill="rgb(0,0,0)" points="195.571,60 191,56.5714 191,63.4286" stroke="rgb(0,0,0)" stroke-width="0">
																			<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																		</polygon>
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</g>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="40" y="50">
																		ReportTextSource:type; newline
:Name
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																	<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="40" y="50">
																		ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
																		<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
																	</textArea>
																</svg>
															</objectSymbol>
															<icon offset="113,47" xmlns="http://www.metacase.com/icon">
																<svg baseProfile="tiny" height="117" version="1.2" width="183" xmlns="http://www.w3.org/2000/svg">
																	<rect fill="rgb(255,255,255)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="113" y="47"></rect>
																	<polygon fill="rgb(0,0,0)" points="163,82 183,67 183,97" stroke="rgb(0,0,0)" stroke-width="0"></polygon>
																	<polygon fill="rgb(0,0,0)" points="133,82 113,67 113,97" stroke="rgb(0,0,0)" stroke-width="0"></polygon>
																</svg>
															</icon>
														</object>
													</dataTypeSubtype>
												</property>
											</slot>
											<identProp slotID="a0o7eh"></identProp>
											<objectSymbol offset="40,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
												<defaultConnectable isSticky="true" points="40,40 210,40 210,150 40,150 40,40" targetPointX="125" targetPointY="95" usesGrid="false"></defaultConnectable>
												<svg baseProfile="tiny" height="152" version="1.2" width="212" xmlns="http://www.w3.org/2000/svg">
													<rect fill="rgb(170,170,170)" height="110" rx="0" ry="0" stroke="rgb(170,170,170)" stroke-width="1" width="170" x="42" y="42">
														<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
													</rect>
													<rect fill="rgb(255,255,179)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="170" x="40" y="40">
														<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
													</rect>
													<g fill="none" stroke="rgb(0,0,0)" stroke-width="1" sym:height="16" sym:width="16" sym:x="1.92e2" sym:y="4.2e1">
														<rect fill="rgb(255,255,179)" height="16" rx="0" ry="4" stroke="rgb(0,0,0)" stroke-width="1" width="16" x="192" y="42">
															<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
														</rect>
														<g fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" sym:height="3" sym:width="13.514" sym:x="1.93143e2" sym:y="4.81714e1">
															<rect fill="rgb(0,0,0)" height="3" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="3" x="193.143" y="48.1714">
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</rect>
															<rect fill="rgb(0,0,0)" height="3" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="3" x="198.4" y="48.1714">
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</rect>
															<rect fill="rgb(0,0,0)" height="3" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="3" x="203.657" y="48.1714">
																<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
															</rect>
															<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
														</g>
														<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
													</g>
													<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="170" x="40" y="40">
														ReportTextSource:type; newline
:Name
														<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
													</textArea>
													<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="170" x="40" y="40">
														ReportTextSource:newline; newline;
do :() where id&lt;&gt; id;1 {
	type ': ' id newline
}
														<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
													</textArea>
												</svg>
											</objectSymbol>
											<icon offset="117,43" xmlns="http://www.metacase.com/icon">
												<svg baseProfile="tiny" height="113" version="1.2" width="187" xmlns="http://www.w3.org/2000/svg">
													<rect fill="rgb(255,255,179)" height="70" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="70" x="117" y="43"></rect>
													<g fill="rgb(0,0,0)" stroke="rgb(0,0,0)" stroke-width="1" sym:height="15" sym:width="61" sym:x="1.22e2" sym:y="7.0e1">
														<rect fill="rgb(0,0,0)" height="15" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="15" x="122" y="70"></rect>
														<rect fill="rgb(0,0,0)" height="15" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="15" x="145" y="70"></rect>
														<rect fill="rgb(0,0,0)" height="15" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="15" x="168" y="70"></rect>
													</g>
												</svg>
											</icon>
										</object>
									</dataTypeSubtype>
									<dataTypeSubtype>
										<object href="#Object_CompositeDatatype_sysadmin_3536998574"></object>
									</dataTypeSubtype>
									<dataTypeSubtype>
										<object href="#Object_EABoolean_sysadmin_3536996172"></object>
									</dataTypeSubtype>
									<dataTypeSubtype>
										<object href="#Object_EANumerical_sysadmin_3536996437"></object>
									</dataTypeSubtype>
									<dataTypeSubtype>
										<object href="#Object_EAString_sysadmin_3536996221"></object>
									</dataTypeSubtype>
									<dataTypeSubtype>
										<object href="#Object_Enumeration_sysadmin_3536996326"></object>
									</dataTypeSubtype>
									<dataTypeSubtype>
										<object href="#Object_RangeableValueType_sysadmin_3536997383"></object>
									</dataTypeSubtype>
								</property>
							</slot>
							<slot id="aier25" name="Description" unique="false">
								<property id="Property_2Description_user_3310902697" type="Property_2Description_user_3310902697" typeName="Description">
									<description></description>
									<dataType>
										<simpleType>Text</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<identProp slotID="aeer14"></identProp>
							<objectSymbol offset="59,19" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
								<defaultConnectable isSticky="true" points="210,68 209.315,72.5922 207.364,76.4853 204.444,79.0866 201,80 68.75,80 65.3058,79.0866 62.386,76.4853 60.4351,72.5922 59.75,68 59.75,31.75 60.4351,27.1578 62.386,23.2647 65.3058,20.6634 68.75,19.75 201,19.75 204.444,20.6634 207.364,23.2647 209.315,27.1578 210,31.75 210,68" targetPointX="134" targetPointY="49" usesGrid="false"></defaultConnectable>
								<svg baseProfile="tiny" height="83" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
									<defs>
										<linearGradient gradientUnits="objectBoundingBox" id="gradient1" sym:correctGamma="true" x1="0.633333" x2="1.07333" y1="0.5" y2="1.2125">
											<stop offset="0" stop-color="rgb(240,240,240)"></stop>
											<stop offset="1" stop-color="rgb(170,170,170)"></stop>
										</linearGradient>
									</defs>
									<rect fill="rgb(170,170,170)" height="60" rx="9" ry="12" stroke="rgb(170,170,170)" stroke-width="1" width="150" x="63" y="23">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<rect fill="url(#gradient1)" height="60" rx="9" ry="12" stroke="rgb(128,128,128)" stroke-width="1" width="150" x="60" y="20">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="2" sym:wordWrap="true" text-anchor="middle" width="150" x="60" y="20">
										PropertyTextSource:aeer14
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="148" x="60" y="20">
										PropertyTextSource:afer4z
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
									<rect fill="none" height="62" rx="9" ry="12" stroke="rgb(0,0,0)" stroke-width="2" width="152" x="59" y="19">
										<metaInfo xmlns="http://www.metacase.com/symbol">
											<displayCondition conditionOperator="=" matchString="T" xmlns="http://www.w3.org/2000/svg">ReportTextSource:if not (~Child; or containers;) then 'T' endif</displayCondition>
										</metaInfo>
									</rect>
								</svg>
							</objectSymbol>
						</object>
					</contentsDataType>
					<contentsDataTypeSubtype>
						<object id="Object_VehicleFeature_user_3400133821" type="Object_VehicleFeature_user_3400133821" typeName="VehicleFeature">
							<description>A VehicleFeature is a functional or non-functional characteristic, constraint or property that can be present or not in a vehicle product line on the level of the complete system, i.e. vehicle.</description>
							<superType>
								<object href="#Object_Feature_user_3399887361"></object>
							</superType>
							<slot id="ajpbw7" name="IsCustomerVisible" unique="false">
								<property type="Property_IsCustomerVisible_user_3400133691" typeName="IsCustomerVisible">
									<description>This attribute states whether the VehicleFeature is customer visible (in contrast to a VehicleFeature that is e.g. technically driven).</description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<slot id="akpbyx" name="IsDesignVariabilityRationale" unique="false">
								<property type="Property_IsDesignVariabilityRationale_user_3400133740" typeName="IsDesignVariabilityRationale">
									<description>A VehicleFeature marked as a design variability rationale captures a variant showing up on a concrete artifact level that needs to be modeled on the VehicleLevel as well, in order to be directly available for immediate configuration on vehicle level.</description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<slot id="alpc2x" name="IsRemoved" unique="false">
								<property type="Property_IsRemoved_user_3400133812" typeName="IsRemoved">
									<description>This attribute describes if the VehicleFeature is removed (but kept in the database for tracking of evolution, which is required by the multi-level concept).</description>
									<dataType>
										<simpleType>Boolean</simpleType>
									</dataType>
									<defaultValue></defaultValue>
								</property>
							</slot>
							<slot id="am5tj3" name="DeviationAttributeSet" unique="false">
								<property type="Property_DeviationAttributeSet_user_3401358175" typeName="DeviationAttributeSet">
									<description></description>
									<dataType>
										<object type="Object_DeviationAttributeSet_user_3401358127" typeName="DeviationAttributeSet">
											<description></description>
											<slot id="ds5t2u" name="Name" unique="false">
												<property type="Property_AttrubuteSetName_user_3401357883" typeName="AttrubuteSet">
													<description></description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string></string>
													</defaultValue>
													<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
													<widget>Input Field</widget>
												</property>
											</slot>
											<slot id="dt5t3p" name="AllowChangeAttribute" unique="false">
												<property id="Property_DeviationPermissionKind_user_3401355220" type="Property_DeviationPermissionKind_user_3401355220" typeName="DeviationPermissionKind">
													<description>The DeviationPermissionKind is an enumeration with enumeration literals defining possible values
for deviation attributes.</description>
													<dataType>
														<simpleType>String</simpleType>
													</dataType>
													<defaultValue>
														<string>yes</string>
													</defaultValue>
													<widget>Fixed List</widget>
													<listValues>
														<string>no</string>
														<string>append</string>
														<string>subset</string>
														<string>subtree</string>
														<string>widen</string>
														<string>yes</string>
													</listValues>
												</property>
											</slot>
											<slot id="du5t5c" name="AllowChangeCardinality" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dv5t6f" name="AllowChangeDescription" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dw5t7a" name="AllowChangeName" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dx5t8a" name="AllowMove" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dy5t97" name="AllowReduction" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="dz5tac" name="AllowRefinement" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="e05tbe" name="AllowRegrouping" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<slot id="e15tcb" name="AllowRemoval" unique="false">
												<property href="#Property_DeviationPermissionKind_user_3401355220"></property>
											</slot>
											<identProp slotID="ds5t2u"></identProp>
										</object>
									</dataType>
								</property>
							</slot>
							<identProp slotID="aeer14"></identProp>
							<objectSymbol offset="60,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
								<defaultConnectable isSticky="true" points="210,74 209.239,76.2961 207.071,78.2426 203.827,79.5433 200,80 69.75,80 65.9232,79.5433 62.6789,78.2426 60.5112,76.2961 59.75,74 59.75,25.75 60.5112,23.4539 62.6789,21.5074 65.9232,20.2067 69.75,19.75 200,19.75 203.827,20.2067 207.071,21.5074 209.239,23.4539 210,25.75 210,74" targetPointX="134" targetPointY="49" usesGrid="false"></defaultConnectable>
								<svg baseProfile="tiny" height="83" version="1.2" width="213" xmlns="http://www.w3.org/2000/svg">
									<defs>
										<radialGradient cx="0.486667" cy="0.516667" gradientUnits="objectBoundingBox" id="gradient1" r="0.695421" sym:correctGamma="true" sym:fillType="PathFill">
											<stop offset="0" stop-color="rgb(255,255,255)"></stop>
											<stop offset="0.808846" stop-color="rgb(212,235,212)"></stop>
											<stop offset="1" stop-color="rgb(169,225,169)"></stop>
										</radialGradient>
									</defs>
									<rect fill="rgb(0,128,128)" height="60" rx="10" ry="6" stroke="rgb(0,128,128)" stroke-width="1" width="150" x="63" y="23">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<rect fill="url(#gradient1)" height="60" rx="10" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="150" x="60" y="20">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="150" x="60" y="20">
										PropertyTextSource:aeer14
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
									<g fill="none" stroke="none" stroke-width="1" sym:height="21" sym:width="30" sym:x="6.2e1" sym:y="2.2e1">
										<ellipse cx="77" cy="32.5" fill="rgb(0,128,128)" rx="15" ry="10.5" stroke="rgb(0,128,128)" stroke-width="1" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
											<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
										</ellipse>
										<textArea display-align="center" fill="rgb(255,255,255)" font-family="cooper black" font-size="16" font-style="normal" font-weight="normal" height="17" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="28" x="63" y="25">
											VF
											<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
										</textArea>
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</g>
									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="60" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="148" x="60" y="20">
										ReportTextSource:if :Cardinality &lt;&gt; '1' then 
	:Cardinality 
endif
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
								</svg>
							</objectSymbol>
						</object>
					</contentsDataTypeSubtype>
				</property>
			</slot>
			<identProp slotID="hm2cb5"></identProp>
			<objectSymbol offset="80,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="79.75,39.75 190,39.75 190,80 79.75,80 79.75,39.75" targetPointX="134.875" targetPointY="59.875" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="82" version="1.2" width="192" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(0,0,128)" height="40" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="110" x="82" y="42">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="rgb(224,239,255)" height="40" rx="6" ry="6" stroke="rgb(0,0,0)" stroke-width="1" width="110" x="80" y="40">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="110" x="80" y="40">
						PropertyTextSource:hm2cb5
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="110" x="80" y="40">
						
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_ProductModification_sysadmin_3718887531" type="Object_ProductModification_sysadmin_3718887531" typeName="ProductModification">
			<description></description>
			<slot id="a1ycz7" name="Name" unique="false">
				<property type="Property_ProductModificationName_sysadmin_3719471385" typeName="ProductModificationName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="a2fnez" name="breaksSecurityGoals" unique="false">
				<property href="#Property_breaksSecurityGoals_sysadmin_3721553847"></property>
			</slot>
			<slot id="a3caea" name="confidentialityImpact" unique="false">
				<property href="#Property_confidentialityImpact_sysadmin_3745830167"></property>
			</slot>
			<slot id="a4caer" name="integrityImpact" unique="false">
				<property href="#Property_integrityImpact_sysadmin_3745830199"></property>
			</slot>
			<slot id="a5caf5" name="availabilityImpact" unique="false">
				<property href="#Property_availabilityImpact_sysadmin_3745830227"></property>
			</slot>
			<identProp slotID="a1ycz7"></identProp>
			<objectSymbol offset="26,30" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="190,136.704 189.392,141.792 187.662,146.106 185.072,148.988 182.016,150 37.9834,150 34.9283,148.988 32.3383,146.106 30.6077,141.792 30,136.704 30,43.2964 30.6077,38.2081 32.3383,33.8944 34.9283,31.0121 37.9834,30 182.016,30 185.072,31.0121 187.662,33.8944 189.392,38.2081 190,43.2964 190,136.704" targetPointX="110" targetPointY="90" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="152" version="1.2" width="190" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="120" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="30" y="30">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="30" y="40">
						PropertyTextSource:a1ycz7
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="40" y="30">
						ProductModification
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="30" x2="190" y1="70" y2="70">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="30" y="70">
						breaksSecurityGoals:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="90" y="70">
						PropertyTextSource:a2fnez
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="29" y="92">
						confidentialityImpact
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="89" y="92">
						PropertyTextSource:a3caea
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="26" y="114">
						integrityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="86" y="114">
						PropertyTextSource:a4caer
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="29" y="132">
						availabilityImpact:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="89" y="132">
						PropertyTextSource:a5caf5
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_ADLRequirement_user_3400763726" type="Object_ADLRequirement_user_3400763726" typeName="Requirement">
			<description>The Requirement represents a capability or condition that must (or should) be satisfied.</description>
			<slot id="cegc53" name="Name" unique="false">
				<property type="Property_2RequirementName_user_3310903808" typeName="RequirementName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="cilf4e" name="Formalism" unique="false">
				<property type="Property_Formalism_user_3462188263" typeName="Formalism">
					<description>Specifies the language used for the requirement statement. </description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="cjlf5t" name="Url" unique="false">
				<property type="Property_Url_user_3462188288" typeName="Url">
					<description>Reference to possible external file containing the requirement statement. </description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="ck5kxl" name="Modes" unique="false">
				<property type="Property_Modes_sysadmin_3543224568" typeName="Modes">
					<description>The mode(s) where this requirement is valid.</description>
					<dataType>
						<simpleType>Collection</simpleType>
					</dataType>
					<contentsDataType>
						<object id="Object_Mode_sysadmin_3509262593" type="Object_Mode_sysadmin_3509262593" typeName="Mode">
							<description>Modes are a way to introduce various configurations in the system to account for different states of the system, or of a hardware entity, or an application. The use of modes can be used to filter different views of the model. Modes are characterized by a Boolean condition provided as a String, which evaluates to true when the Mode is active. The Mode is active if and only if the condition is true.</description>
							<slot id="hvn6km" name="Mode name" unique="false">
								<property type="Property_Mode_name_sysadmin_3509258627" typeName="Mode name">
									<description></description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string></string>
									</defaultValue>
									<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
									<widget>Input Field</widget>
								</property>
							</slot>
							<slot id="hxn6oj" name="Condition" unique="false">
								<property type="Property_Condition_sysadmin_3509258696" typeName="Condition">
									<description>A Boolean expression that characterizes the Mode, it evaluates to true when the Mode is active. The syntax and grammar of this expression is unspecified.</description>
									<dataType>
										<simpleType>String</simpleType>
									</dataType>
									<defaultValue>
										<string></string>
									</defaultValue>
									<widget>Input Field</widget>
								</property>
							</slot>
							<slot id="hwn6kv" name="Description" unique="false">
								<property href="#Property_2Description_user_3310902697"></property>
							</slot>
							<identProp slotID="hvn6km"></identProp>
							<objectSymbol offset="90,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
								<defaultConnectable isSticky="true" points="230,80 229.239,83.8268 227.071,87.0711 223.827,89.2388 220,90 99.75,90 95.9232,89.2388 92.6789,87.0711 90.5112,83.8268 89.75,80 89.75,59.75 90.5112,55.9232 92.6789,52.6789 95.9232,50.5112 99.75,49.75 220,49.75 223.827,50.5112 227.071,52.6789 229.239,55.9232 230,59.75 230,80" targetPointX="159.875" targetPointY="69.875" usesGrid="false"></defaultConnectable>
								<svg baseProfile="tiny" height="90" version="1.2" width="230" xmlns="http://www.w3.org/2000/svg">
									<rect fill="rgb(192,224,255)" height="40" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="140" x="90" y="50">
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</rect>
									<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="90" y="50">
										PropertyTextSource:hvn6km
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
									<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="136" x="94" y="50">
										Mode
										<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
									</textArea>
								</svg>
							</objectSymbol>
						</object>
					</contentsDataType>
				</property>
			</slot>
			<slot id="ch5a4q" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identProp slotID="cegc53"></identProp>
			<objectSymbol offset="30,20" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="30,20 210,20 210,140 30,140 30,20" targetPointX="120" targetPointY="80" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="142" version="1.2" width="212" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="RadialFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(192,192,255)"></stop>
						</radialGradient>
					</defs>
					<rect fill="rgb(128,128,255)" height="120" rx="0" ry="0" stroke="rgb(128,128,255)" stroke-width="1" width="180" x="32" y="22">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<rect fill="url(#gradient1)" height="120" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="180" x="30" y="20">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="180" x="30" y="20">
						Req
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="180" x="30" y="20">
						ReportTextSource:newline newline newline
if :Description; then :Description; newline endif;

						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="13" font-style="normal" font-weight="normal" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="false" text-anchor="start" width="180" x="30" y="20">
						ReportTextSource:newline newline newline
'¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯'
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="120" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="30" y="20">
						ReportTextSource:newline
id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
			<icon offset="110,70" xmlns="http://www.metacase.com/icon">
				<svg baseProfile="tiny" height="180" version="1.2" width="290" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient1" r="0.70711" sym:correctGamma="true" sym:fillType="RadialFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(192,192,255)"></stop>
						</radialGradient>
					</defs>
					<rect fill="url(#gradient1)" height="110" rx="0" ry="0" stroke="rgb(0,0,0)" stroke-width="1" width="180" x="110" y="70"></rect>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="96" font-style="normal" font-weight="bold" height="110" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="180" x="110" y="70">R</textArea>
				</svg>
			</icon>
		</object>
		<object href="#Object_VehicleFeature_user_3400133821"></object>
		<object id="Object_Vulnerability_sysadmin_3718887241" type="Object_Vulnerability_sysadmin_3718887241" typeName="Vulnerability">
			<description>In order to represent the weak spots in the system architecture, Vulnerability describes the weakness and affiliation to one or more Items.
</description>
			<slot id="krydg5" name="Name" unique="false">
				<property type="Property_VulnerabilityName_sysadmin_3719471690" typeName="VulnerabilityName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="kscann" name="scope" unique="false">
				<property type="Property_scope_sysadmin_3745830521" typeName="scope">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(U)nchanged</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(C)hanged</string>
						<string>(U)nchanged</string>
					</listValues>
				</property>
			</slot>
			<slot id="ktcata" name="exploitCodeMaturity" unique="false">
				<property type="Property_exploitCodeMaturity_sysadmin_3745830623" typeName="exploitCodeMaturity">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(X) Not Defined</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(X) Not Defined</string>
						<string>(U)nproven</string>
						<string>(P)roof-of-Concept</string>
						<string>(F)unctional</string>
						<string>(H)igh</string>
					</listValues>
				</property>
			</slot>
			<slot id="kucaxa" name="remediationLevel" unique="false">
				<property type="Property_remediationLevel_sysadmin_3745830695" typeName="remediationLevel">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(X) Not Defined</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(X) Not Defined</string>
						<string>(O)fficial Fix</string>
						<string>(T)emporary Fix</string>
						<string>(W)orkaround</string>
						<string>(U)navailable</string>
					</listValues>
				</property>
			</slot>
			<slot id="kvcazb" name="reportConfidence" unique="false">
				<property type="Property_reportConfidence_sysadmin_3745830731" typeName="reportConfidence">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>(X) Not Defined</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>(X) Not Defined</string>
						<string>(U)nknown</string>
						<string>(R)easonable</string>
						<string>(C)onfirmed</string>
					</listValues>
				</property>
			</slot>
			<identProp slotID="krydg5"></identProp>
			<objectSymbol offset="40,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="200,146.704 199.392,151.792 197.662,156.106 195.072,158.988 192.016,160 47.9834,160 44.9283,158.988 42.3383,156.106 40.6077,151.792 40,146.704 40,53.2964 40.6077,48.2081 42.3383,43.8944 44.9283,41.0121 47.9834,40 192.016,40 195.072,41.0121 197.662,43.8944 199.392,48.2081 200,53.2964 200,146.704" targetPointX="120" targetPointY="100" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="160" version="1.2" width="200" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="120" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="40" y="40">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="40" y="50">
						PropertyTextSource:krydg5
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="50" y="40">
						Vulnerability
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="48" y="80">
						scope:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="108" y="80">
						PropertyTextSource:kscann
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="44" y="100">
						exploitCodeMaturity:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="104" y="100">
						PropertyTextSource:ktcata
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="44" y="121">
						remediationLevel:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="104" y="121">
						PropertyTextSource:kucaxa
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="48" y="139">
						reportConfidence:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="30" x="108" y="139">
						PropertyTextSource:kvcazb
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_UseCase_user_3462616740" type="Object_UseCase_user_3462616740" typeName="UseCase">
			<description>A UseCase identifies a usage of its corresponding system. </description>
			<slot id="go3sbs" name="Name" unique="false">
				<property type="Property_UseCase_name_user_3462616724" typeName="UseCase name">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="gp3sck" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identProp slotID="go3sbs"></identProp>
			<objectSymbol offset="100,40" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="222.5,76 222.31,73.1362 221.743,70.2901 220.801,67.4792 219.49,64.7209 217.819,62.0321 215.797,59.4293 213.437,56.9288 210.755,54.5458 207.765,52.2952 204.487,50.1906 200.941,48.2452 197.149,46.4709 193.134,44.8786 188.92,43.4783 184.535,42.2784 180.004,41.2864 175.357,40.5085 170.621,40 165.825,40 161,40 156.175,40 151.379,40 146.643,40.5085 141.996,41.2864 137.465,42.2784 133.08,43.4783 128.866,44.8786 124.851,46.4709 121.059,48.2452 117.513,50.1906 114.235,52.2951 111.246,54.5458 108.563,56.9288 106.203,59.4293 104.181,62.0321 102.51,64.7209 101.199,67.4792 100.257,70.2901 100,73.1362 100,76 100,78.8638 100.257,81.7098 101.199,84.5207 102.51,87.2791 104.181,89.9679 106.203,92.5706 108.563,95.0712 111.246,97.4542 114.235,99.7048 117.513,101.809 121.059,103.755 124.851,105.529 128.866,107.121 133.08,108.522 137.465,109.722 141.995,110.714 146.643,111.492 151.379,112.051 156.175,112.388 161,112.5 165.825,112.388 170.621,112.051 175.357,111.492 180.004,110.714 184.535,109.722 188.92,108.522 193.134,107.121 197.149,105.529 200.941,103.755 204.487,101.809 207.765,99.7048 210.755,97.4542 213.437,95.0712 215.797,92.5707 217.819,89.9679 219.49,87.2791 220.801,84.5208 221.743,81.7099 222.31,78.8638 222.5,76" targetPointX="161" targetPointY="76" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="115" version="1.2" width="226" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<radialGradient cx="0.630081" cy="0.59589" gradientUnits="objectBoundingBox" id="gradient1" r="0.80943" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(128,192,255)"></stop>
							<stop offset="0.740865" stop-color="rgb(192,224,255)"></stop>
							<stop offset="1" stop-color="rgb(255,255,255)"></stop>
						</radialGradient>
						<radialGradient cx="0.5" cy="0.5" gradientUnits="objectBoundingBox" id="gradient2" r="0.707107" sym:correctGamma="true" sym:fillType="PathFill">
							<stop offset="0" stop-color="rgb(255,255,255)"></stop>
							<stop offset="1" stop-color="rgb(192,224,255)"></stop>
						</radialGradient>
					</defs>
					<ellipse cx="164.5" cy="78.5" fill="url(#gradient1)" rx="61.5" ry="36.5" stroke="none" stroke-width="0" sym:startAngle="0.0e0" sym:sweepAngle="3.6e2">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</ellipse>
					<ellipse cx="161.5" cy="76.5" fill="url(#gradient2)" rx="61.5" ry="36.5" stroke="rgb(128,128,255)" stroke-width="0" sym:startAngle="3.6e2" sym:sweepAngle="-3.6e2">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</ellipse>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="50" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="100" x="110" y="50">
						PropertyTextSource:go3sbs
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_Score_sysadmin_3745830848" type="Object_Score_sysadmin_3745830848" typeName="Score">
			<description></description>
			<slot id="mbcb5i" name="value" unique="false">
				<property type="Property_value_sysadmin_3745830843" typeName="value">
					<description></description>
					<dataType>
						<simpleType>Number</simpleType>
					</dataType>
					<defaultValue>
						<int>1</int>
					</defaultValue>
				</property>
			</slot>
			<slot id="mccb3a" name="ScoreName" unique="false">
				<property type="Property_ScoreName_sysadmin_3745830803" typeName="ScoreName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<identProp slotID="mccb3a"></identProp>
			<objectSymbol offset="213,89" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="373,177.92 372.392,182.16 370.662,185.755 368.072,188.157 365.016,189 220.983,189 217.928,188.157 215.338,185.755 213.608,182.16 213,177.92 213,100.08 213.608,95.8401 215.338,92.2453 217.928,89.8434 220.983,89 365.016,89 368.072,89.8434 370.662,92.2453 372.392,95.8401 373,100.08 373,177.92" targetPointX="293" targetPointY="139" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="189" version="1.2" width="373" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="100" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="213" y="89">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="213" y="99">
						PropertyTextSource:mccb3a
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="223" y="89">
						Score
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="213" x2="373" y1="129" y2="129">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="215" y="136">
						value:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="40" x="275" y="136">
						PropertyTextSource:mbcb5i
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_OperationalSituation_sysadmin_3509602770" type="Object_OperationalSituation_sysadmin_3509602770" typeName="OperationalSituation">
			<description>An operational situation is a state, condition or scenario in the environment that may influence the vehicle. The Operational Situation may be further detailed by a functional definition in the EnvironmentModel.</description>
			<slot id="iac6bi" name="__UUID" unique="false">
				<property type="Property___UUID_sysadmin_3604668056" typeName="__UUID">
					<description>Globally unique identifier.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<widget>UUID Base64</widget>
				</property>
			</slot>
			<slot id="i81xm5" name="Short name" unique="false">
				<property type="Property_OperationalSituationName_sysadmin_3509602742" typeName="OperationalSituationName">
					<description>Short name is mandatory and must start with an alphabetical character. It may contain characters, numbers or underscores.</description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<regex>[a-zA-Z]([a-zA-Z0-9]|_[a-zA-Z0-9])*_?</regex>
					<widget>Input Field</widget>
				</property>
			</slot>
			<slot id="ibc6bz" name="Name" unique="false">
				<property href="#Property_Name_sysadmin_3536998876"></property>
			</slot>
			<slot id="i91xnc" name="Description" unique="false">
				<property href="#Property_2Description_user_3310902697"></property>
			</slot>
			<identReport>if :Name; then :Name; else :Short name; endif</identReport>
			<objectSymbol offset="90,50" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="230,80 229.239,83.8268 227.071,87.0711 223.827,89.2388 220,90 99.75,90 95.9232,89.2388 92.6789,87.0711 90.5112,83.8268 89.75,80 89.75,59.75 90.5112,55.9232 92.6789,52.6789 95.9232,50.5112 99.75,49.75 220,49.75 223.827,50.5112 227.071,52.6789 229.239,55.9232 230,59.75 230,80" targetPointX="159.875" targetPointY="69.875" usesGrid="true"></defaultConnectable>
				<svg baseProfile="tiny" height="90" version="1.2" width="230" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(0,128,0)" height="40" rx="10" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="140" x="90" y="50">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="center" fill="rgb(255,255,255)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="bold" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="90" y="50">
						ReportTextSource:id
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="before" fill="rgb(255,255,255)" font-family="#sans serif" font-size="12" font-style="italic" font-weight="normal" height="40" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="137" x="90" y="50">
						OperationalSituation
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<object id="Object_SecurityConcept_sysadmin_3745832015" type="Object_SecurityConcept_sysadmin_3745832015" typeName="SecurityConcept">
			<description></description>
			<slot id="a0cd17" name="motivatedBy" unique="false">
				<property type="Property_motivatedBy_sysadmin_3745832061" typeName="motivatedBy">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string>standard</string>
					</defaultValue>
					<widget>Fixed List</widget>
					<listValues>
						<string>standard</string>
						<string>certification</string>
						<string>documentedAttacks</string>
					</listValues>
				</property>
			</slot>
			<slot id="a1cgcz" name="SecurityConceptName" unique="false">
				<property type="Property_SecurityConceptName_sysadmin_3745834217" typeName="SecurityConceptName">
					<description></description>
					<dataType>
						<simpleType>String</simpleType>
					</dataType>
					<defaultValue>
						<string></string>
					</defaultValue>
					<widget>Input Field</widget>
				</property>
			</slot>
			<identProp slotID="a1cgcz"></identProp>
			<objectSymbol offset="212,170" scaleFilter="1,1" xmlns="http://www.metacase.com/symbol">
				<defaultConnectable isSticky="true" points="372,258.92 371.392,263.16 369.662,266.755 367.072,269.157 364.016,270 219.983,270 216.928,269.157 214.338,266.755 212.608,263.16 212,258.92 212,181.08 212.608,176.84 214.338,173.245 216.928,170.843 219.983,170 364.016,170 367.072,170.843 369.662,173.245 371.392,176.84 372,181.08 372,258.92" targetPointX="292" targetPointY="220" usesGrid="false"></defaultConnectable>
				<svg baseProfile="tiny" height="270" version="1.2" width="372" xmlns="http://www.w3.org/2000/svg">
					<rect fill="rgb(255,224,192)" height="100" rx="6" ry="10" stroke="rgb(0,0,0)" stroke-width="1" width="160" x="212" y="170">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</rect>
					<textArea display-align="after" fill="rgb(0,0,0)" font-family="#sans serif" font-size="20" font-style="normal" font-weight="normal" height="30" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="160" x="212" y="180">
						PropertyTextSource:a1cgcz
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="11" font-style="normal" font-weight="normal" height="10" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="140" x="222" y="170">
						SecurityConcept
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<line stroke="rgb(0,0,0)" stroke-width="1" x1="212" x2="372" y1="210" y2="210">
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</line>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="60" x="214" y="217">
						motivatedBy:
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="start" width="40" x="274" y="217">
						PropertyTextSource:a0cd17
						<metaInfo xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</objectSymbol>
		</object>
		<relationship id="Relationship_Association_sysadmin_3719758098" type="Relationship_Association_sysadmin_3719758098" typeName="Association">
			<description></description>
		</relationship>
		<role id="Role_operationalSituationUseCase_sysadmin_3719752696" type="Role_operationalSituationUseCase_sysadmin_3719752696" typeName="operationalSituationUseCase">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="150" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="150" x="0" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_attackFrom_sysadmin_3719755018" type="Role_attackFrom_sysadmin_3719755018" typeName="attack">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="middle" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_Mode_sysadmin_3509604357" type="Role_Mode_sysadmin_3509604357" typeName="operatingMode">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_subAttacks_sysadmin_3719753425" type="Role_subAttacks_sysadmin_3719753425" typeName="subAttacks">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_mode_sysadmin_3719753575" type="Role_mode_sysadmin_3719753575" typeName="mode">
			<description>The mode where this requirement is valid.</description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_nonFulfilledRequirement_sysadmin_3719752909" type="Role_nonFulfilledRequirement_sysadmin_3719752909" typeName="nonFulfilledRequirement">
			<description>Identifies the requirements that are not fulfilled.</description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_derived_sysadmin_3719753631" type="Role_derived_sysadmin_3719753631" typeName="derived">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_vehicleFeature_sysadmin_3719754145" type="Role_vehicleFeature_sysadmin_3719754145" typeName="vehicleFeature">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="80" version="1.2" width="140" xmlns="http://www.w3.org/2000/svg">
					<textArea display-align="center" fill="rgb(0,0,0)" font-family="#sans serif" font-size="14" font-style="normal" font-weight="normal" height="20" sym:characterBackgroundFill="none" sym:textboxFill="none" sym:textboxStroke="none" sym:textboxStroke-width="1" sym:wordWrap="true" text-anchor="end" width="130" x="10" y="60">
						ReportTextSource:type
						<metaInfo shouldRotate="false" xmlns="http://www.metacase.com/symbol"></metaInfo>
					</textArea>
				</svg>
			</roleSymbol>
		</role>
		<role id="Role_Attack_Motivation_sysadmin_3721997780" type="Role_Attack_Motivation_sysadmin_3721997780" typeName="attackMotivation">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="0" version="1.2" width="0" xmlns="http://www.w3.org/2000/svg"></svg>
			</roleSymbol>
		</role>
		<role id="Role_AttackableProperty_sysadmin_3719760707" type="Role_AttackableProperty_sysadmin_3719760707" typeName="attackableProperty">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="0" version="1.2" width="0" xmlns="http://www.w3.org/2000/svg"></svg>
			</roleSymbol>
		</role>
		<role id="Role_Item_sysadmin_3719760555" type="Role_Item_sysadmin_3719760555" typeName="item">
			<description></description>
			<roleSymbol xmlns="http://www.metacase.com/symbol">
				<rolelineGOs stroke="rgb(0,0,0)" stroke-width="1">
					<metaInfo shouldRotate="false"></metaInfo>
				</rolelineGOs>
				<svg baseProfile="tiny" height="0" version="1.2" width="0" xmlns="http://www.w3.org/2000/svg"></svg>
			</roleSymbol>
		</role>
		<role id="Role_attackOwner_sysadmin_3723882296" type="Role_attackOwner_sysadmin_3723882296" typeName="attack_from">
			<description></description>
		</role>
		<role id="Role_attackablePropertyOwner_sysadmin_3723882311" type="Role_attackablePropertyOwner_sysadmin_3723882311" typeName="attackableProperty_from">
			<description></description>
		</role>
		<role id="Role_attackMotivationOwner_sysadmin_3723882324" type="Role_attackMotivationOwner_sysadmin_3723882324" typeName="attackMotivation_from">
			<description></description>
		</role>
		<role id="Role_derivedOwner_sysadmin_3723882339" type="Role_derivedOwner_sysadmin_3723882339" typeName="derived_from">
			<description></description>
		</role>
		<role id="Role_item_from_sysadmin_3723882583" type="Role_item_from_sysadmin_3723882583" typeName="item_from">
			<description></description>
		</role>
		<role id="Role_mode_from_sysadmin_3723882589" type="Role_mode_from_sysadmin_3723882589" typeName="mode_from">
			<description></description>
		</role>
		<role id="Role_nonFulfilledRequirement_from_sysadmin_3723882605" type="Role_nonFulfilledRequirement_from_sysadmin_3723882605" typeName="nonFulfilledRequirement_from">
			<description></description>
		</role>
		<role id="Role_operatingMode_from_sysadmin_3723882618" type="Role_operatingMode_from_sysadmin_3723882618" typeName="operatingMode_from">
			<description></description>
		</role>
		<role id="Role_operationalSituationUseCase_from_sysadmin_3723882638" type="Role_operationalSituationUseCase_from_sysadmin_3723882638" typeName="operationalSituationUseCase_from">
			<description></description>
		</role>
		<role id="Role_subAttacks_from_sysadmin_3723882661" type="Role_subAttacks_from_sysadmin_3723882661" typeName="subAttacks_from">
			<description></description>
		</role>
		<role id="Role_vehicleFeature_from_sysadmin_3723882672" type="Role_vehicleFeature_from_sysadmin_3723882672" typeName="vehicleFeature_from">
			<description></description>
		</role>
		<role id="Role_vulnerability_from_sysadmin_3723886223" type="Role_vulnerability_from_sysadmin_3723886223" typeName="vulnerability_from">
			<description></description>
		</role>
		<role id="Role_vulnerability_sysadmin_3723886255" type="Role_vulnerability_sysadmin_3723886255" typeName="vulnerability">
			<description></description>
		</role>
		<role id="Role__score_sysadmin_3745830875" type="Role__score_sysadmin_3745830875" typeName="score">
			<description></description>
		</role>
		<role id="Role_score_from_sysadmin_3746280042" type="Role_score_from_sysadmin_3746280042" typeName="score_from">
			<description></description>
		</role>
		<role id="Role_concept_from_sysadmin_3746282210" type="Role_concept_from_sysadmin_3746282210" typeName="concept_from">
			<description></description>
		</role>
		<role id="Role_concept_sysadmin_3746282328" type="Role_concept_sysadmin_3746282328" typeName="concept">
			<description></description>
		</role>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackFrom_sysadmin_3719755018"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackOwner_sysadmin_3723882296"></role>
				<object href="#Object_Adversary_sysadmin_3718889113"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_AttackableProperty_sysadmin_3719760707"></role>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackablePropertyOwner_sysadmin_3723882311"></role>
				<object href="#Object_FinancialGain_sysadmin_3718887415"></object>
				<object href="#Object_Harm_sysadmin_3718887288"></object>
				<object href="#Object_InformationRetrieval_sysadmin_3718887376"></object>
				<object href="#Object_ProductModification_sysadmin_3718887531"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackablePropertyOwner_sysadmin_3723882311"></role>
				<object href="#Object_FinancialGain_sysadmin_3718887415"></object>
				<object href="#Object_Harm_sysadmin_3718887288"></object>
				<object href="#Object_InformationRetrieval_sysadmin_3718887376"></object>
				<object href="#Object_ProductModification_sysadmin_3718887531"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_AttackableProperty_sysadmin_3719760707"></role>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Attack_Motivation_sysadmin_3721997780"></role>
				<object href="#Object_FinancialGain_sysadmin_3718887415"></object>
				<object href="#Object_Harm_sysadmin_3718887288"></object>
				<object href="#Object_InformationRetrieval_sysadmin_3718887376"></object>
				<object href="#Object_ProductModification_sysadmin_3718887531"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackMotivationOwner_sysadmin_3723882324"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackMotivationOwner_sysadmin_3723882324"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Attack_Motivation_sysadmin_3721997780"></role>
				<object href="#Object_FinancialGain_sysadmin_3718887415"></object>
				<object href="#Object_Harm_sysadmin_3718887288"></object>
				<object href="#Object_InformationRetrieval_sysadmin_3718887376"></object>
				<object href="#Object_ProductModification_sysadmin_3718887531"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackOwner_sysadmin_3723882296"></role>
				<object href="#Object_Adversary_sysadmin_3718889113"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_attackFrom_sysadmin_3719755018"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_sysadmin_3746282328"></role>
				<object href="#Object_SecurityConcept_sysadmin_3745832015"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_from_sysadmin_3746282210"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_sysadmin_3746282328"></role>
				<object href="#Object_SecurityConcept_sysadmin_3745832015"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_from_sysadmin_3746282210"></role>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_from_sysadmin_3746282210"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_sysadmin_3746282328"></role>
				<object href="#Object_SecurityConcept_sysadmin_3745832015"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_from_sysadmin_3746282210"></role>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_concept_sysadmin_3746282328"></role>
				<object href="#Object_SecurityConcept_sysadmin_3745832015"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_derived_sysadmin_3719753631"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_derivedOwner_sysadmin_3723882339"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_derivedOwner_sysadmin_3723882339"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_derived_sysadmin_3719753631"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Item_sysadmin_3719760555"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_item_from_sysadmin_3723882583"></role>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_item_from_sysadmin_3723882583"></role>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Item_sysadmin_3719760555"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_mode_sysadmin_3719753575"></role>
				<object href="#Object_Mode_sysadmin_3509262593"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_mode_from_sysadmin_3723882589"></role>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_mode_from_sysadmin_3723882589"></role>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_mode_sysadmin_3719753575"></role>
				<object href="#Object_Mode_sysadmin_3509262593"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_nonFulfilledRequirement_sysadmin_3719752909"></role>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_nonFulfilledRequirement_from_sysadmin_3723882605"></role>
				<object href="#Object_Vulnerability_sysadmin_3718887241"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_nonFulfilledRequirement_from_sysadmin_3723882605"></role>
				<object href="#Object_Vulnerability_sysadmin_3718887241"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_nonFulfilledRequirement_sysadmin_3719752909"></role>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Mode_sysadmin_3509604357"></role>
				<object href="#Object_Mode_sysadmin_3509262593"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operatingMode_from_sysadmin_3723882618"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Mode_sysadmin_3509604357"></role>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operatingMode_from_sysadmin_3723882618"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operatingMode_from_sysadmin_3723882618"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_Mode_sysadmin_3509604357"></role>
				<object href="#Object_Mode_sysadmin_3509262593"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operationalSituationUseCase_sysadmin_3719752696"></role>
				<object href="#Object_UseCase_user_3462616740"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operationalSituationUseCase_from_sysadmin_3723882638"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operationalSituationUseCase_from_sysadmin_3723882638"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_operationalSituationUseCase_sysadmin_3719752696"></role>
				<object href="#Object_UseCase_user_3462616740"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role__score_sysadmin_3745830875"></role>
				<object href="#Object_Score_sysadmin_3745830848"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_score_from_sysadmin_3746280042"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_score_from_sysadmin_3746280042"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role__score_sysadmin_3745830875"></role>
				<object href="#Object_Score_sysadmin_3745830848"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_subAttacks_from_sysadmin_3723882661"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_subAttacks_sysadmin_3719753425"></role>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vehicleFeature_sysadmin_3719754145"></role>
				<object href="#Object_VehicleFeature_user_3400133821"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vehicleFeature_from_sysadmin_3723882672"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vehicleFeature_from_sysadmin_3723882672"></role>
				<object href="#Object_Item_sysadmin_3509259179"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vehicleFeature_sysadmin_3719754145"></role>
				<object href="#Object_VehicleFeature_user_3400133821"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vulnerability_sysadmin_3723886255"></role>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vulnerability_from_sysadmin_3723886223"></role>
				<object href="#Object_Vulnerability_sysadmin_3718887241"></object>
			</connection>
		</binding>
		<binding>
			<relationship href="#Relationship_Association_sysadmin_3719758098"></relationship>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vulnerability_from_sysadmin_3723886223"></role>
				<object href="#Object_Vulnerability_sysadmin_3718887241"></object>
			</connection>
			<connection>
				<cardinality start="1" stop="1"></cardinality>
				<role href="#Role_vulnerability_sysadmin_3723886255"></role>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
			</connection>
		</binding>
		<constraints>
			<connectivity>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
				<role href="#Role_attackMotivationOwner_sysadmin_3723882324"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
				<role href="#Role_operatingMode_from_sysadmin_3723882618"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
				<role href="#Role_operationalSituationUseCase_from_sysadmin_3723882638"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Attack_sysadmin_3718888403"></object>
				<role href="#Role_subAttacks_from_sysadmin_3723882661"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_AttackableProperty_sysadmin_3718886755"></object>
				<role href="#Role_AttackableProperty_sysadmin_3719760707"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_FinancialGain_sysadmin_3718887415"></object>
				<role href="#Role_Attack_Motivation_sysadmin_3721997780"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Harm_sysadmin_3718887288"></object>
				<role href="#Role_Attack_Motivation_sysadmin_3721997780"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_InformationRetrieval_sysadmin_3718887376"></object>
				<role href="#Role_Attack_Motivation_sysadmin_3721997780"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Item_sysadmin_3509259179"></object>
				<role href="#Role_vehicleFeature_from_sysadmin_3723882672"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_OperationalSituation_sysadmin_3509602770"></object>
				<role href="#Role_attackFrom_sysadmin_3719755018"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_ProductModification_sysadmin_3718887531"></object>
				<role href="#Role_Attack_Motivation_sysadmin_3721997780"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_ADLRequirement_user_3400763726"></object>
				<role href="#Role_mode_from_sysadmin_3723882589"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Vulnerability_sysadmin_3718887241"></object>
				<role href="#Role_nonFulfilledRequirement_from_sysadmin_3723882605"></role>
				<max>1</max>
			</connectivity>
			<connectivity>
				<object href="#Object_Vulnerability_sysadmin_3718887241"></object>
				<role href="#Role_vulnerability_from_sysadmin_3723886223"></role>
				<max>1</max>
			</connectivity>
		</constraints>
	</graph>
</gxl>