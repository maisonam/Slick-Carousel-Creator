<%
on error resume next


'---------------------------
'---------------------------
'--- VALIDATION ROUTINES ---
'---------------------------
'---------------------------

'#1 EMAIL ADDRESS
function validateEmail(emailvalue)
	set regex = new regexp
	    regex.global = true
	    regex.pattern = "^(.)+@(.)+[\.](.)+$"
	set regmatch = regex.execute(emailvalue)
	if regmatch.count<1 then
		validateEmail = "error"
	end if
end function

'#2 URL
function validateURL(urlvalue)
	set regex = new regexp
	    regex.global = true
	    regex.pattern = "^(http)+(s?)+(:\/\/)+[A-Z0-9a-z\.\/\:\-\~\#\&\?]+$"
	set regmatch = regex.execute(urlvalue)
	if regmatch.count<1 then
		validateURL = "error"
	end if
end function

'#3 NUMERIC (ID)
function validateNumeric(numericvalue)
	set regex = new regexp
	    regex.global = true
	    regex.pattern = "^[0-9]+$"
	set regmatch = regex.execute(numericvalue)
	if regmatch.count<1 then
		validateNumeric = "error"
	end if
end function

'#4 STRING
function validateString(stringvalue)
	set regex = new regexp
	    regex.global = true
	    regex.pattern = "^[a-z0-9\s\'\?\&\#\:\;\,\.\£\!\$\%\^\*\(\)\{\}\[\]\-\+\=þðàáâãäåæçèéêëìíîïðñòóôõöøùúûüýÿšœ]+$"
	set regmatch = regex.execute(lcase(stringvalue))
	if regmatch.count<1 then
		validateString = "error"
	end if
end function



'--------------------------
'--------------------------
'--- VALUE SANITISATION ---
'--------------------------
'--------------------------

'#1 FIELDNAME
function sanitiseField(sfieldname)
	Set regex = new RegExp
	    regex.Global = true
	    regex.IgnoreCase = True
	    regex.Pattern = "[^\w_]"
	sfieldname = regex.Replace(sfieldname,"")
	set regex = Nothing
	sanitiseField = sfieldname
end function

'#2 HTML DEFAULT
function sanitiseValue(sfieldvalue)
	sfieldvalue=replace(sfieldvalue,"&","&#38;")
	sfieldvalue=replace(sfieldvalue,"`","&#8216;")
	sfieldvalue=replace(sfieldvalue,"‘","&#8216;")
	sfieldvalue=replace(sfieldvalue,"’","&#8217;")
	sfieldvalue=replace(sfieldvalue,"""","&#34;")
	sfieldvalue=replace(sfieldvalue,"“","&#8220;")
	sfieldvalue=replace(sfieldvalue,"”","&#8221;")
	sfieldvalue=replace(sfieldvalue,"¬","&#172;")
	sfieldvalue=replace(sfieldvalue,"!","&#33;")
	sfieldvalue=replace(sfieldvalue,"£","&#163;")
	sfieldvalue=replace(sfieldvalue,"$","&#36;")
	sfieldvalue=replace(sfieldvalue,"%","&#37;")
	sfieldvalue=replace(sfieldvalue,"^","&#710;")
	sfieldvalue=replace(sfieldvalue,"ˆ","&#710;")
	sfieldvalue=replace(sfieldvalue,"*","&#42;")
	sfieldvalue=replace(sfieldvalue,"(","&#40;")
	sfieldvalue=replace(sfieldvalue,")","&#41;")
	sfieldvalue=replace(sfieldvalue,"_","&#95;")
	sfieldvalue=replace(sfieldvalue,"+","&#43;")
	sfieldvalue=replace(sfieldvalue,"-","&#45;")
	sfieldvalue=replace(sfieldvalue,"=","&#61;")
	sfieldvalue=replace(sfieldvalue,"[","&#91;")
	sfieldvalue=replace(sfieldvalue,"]","&#93;")
	sfieldvalue=replace(sfieldvalue,"{","&#123;")
	sfieldvalue=replace(sfieldvalue,"}","&#125;")
	sfieldvalue=replace(sfieldvalue,"'","&#39;")
	sfieldvalue=replace(sfieldvalue,",","&#44;")
	sfieldvalue=replace(sfieldvalue,".","&#46;")
	sfieldvalue=replace(sfieldvalue,"/","&#47;")
	sfieldvalue=replace(sfieldvalue,"<","&#60;")
	sfieldvalue=replace(sfieldvalue,">","&#62;")
	sfieldvalue=replace(sfieldvalue,"?","&#63;")
	sfieldvalue=replace(sfieldvalue,":","&#58;")
	sfieldvalue=replace(sfieldvalue,"@","&#64;")
	sfieldvalue=replace(sfieldvalue,"~","&#126;")
	sfieldvalue=replace(sfieldvalue,"\","&#92;")
	sfieldvalue=replace(sfieldvalue,"|","&#124;")
	sfieldvalue=replace(sfieldvalue,"¿","&#191;")
	sfieldvalue=replace(sfieldvalue,Chr(13),"")
	sfieldvalue=replace(sfieldvalue,Chr(10),"")
	sfieldvalue=replace(sfieldvalue,Chr(34),"&#34;")
	sfieldvalue=replace(sfieldvalue,Chr(39),"&#39;")
	sfieldvalue=replace(sfieldvalue,"%27","&#39;")
	sfieldvalue=replace(sfieldvalue,"'","&#39;")
	sfieldvalue=replace(sfieldvalue,"%3C","&#60;")
	sfieldvalue=replace(sfieldvalue,"%3E","&#62;")
	sanitiseValue = sfieldvalue
end function

'#3 URL Encoding
function sanitiseURL(surlvalue)
	surlvalue = server.urlencode(surlvalue)
	sanitiseURL = surlvalue
end function







'--------------------------------------------
'--------------------------------------------
'--- VALIDATION/VARIABLE CREATION ROUTINE ---
'--------------------------------------------
'--------------------------------------------

function getUserInput(inputtype)

	'------------------------------
	'--- SET VALIDATION SOURCE TYPE 
	'------------------------------
	type_cookie		= False
	type_querystring	= False
	type_form		= False

	'SELECT TYPE TO RUN (ELSE EXIT)
	select case inputtype
		case "cookie","cookies"
			'CHECK COOKIES EXIST (ELSE EXIT)
			if request.cookies<>"" then
				type_cookie = True
				type_keytype = "cookies"
				type_prefix = "ck"
			else
				exit function
			end if

		case "querystring"
			'CHECK QUERYSTRING EXISTS (ELSE EXIT)
			if request.querystring<>"" then
				type_querystring = True
				type_keytype = "querystring"
				type_prefix = "qs"
			else
				exit function
			end if

		case "form"
			'CHECK FORM EXISTS (ELSE EXIT)
			if request.form<>"" then
				type_form = True
				type_keytype = "form"
				type_prefix = "frm"
			else
				exit function
			end if

		case else
			exit function
	end select


	'-----------------------------------------------------------
	'--- ONLY RUN VALIDATION WHEN VARIABLES EXIST IN CALLED TYPE
	'-----------------------------------------------------------
	if type_cookie or type_querystring or type_form then

		'--------------------
		' SET VALIDATION VARS
		'--------------------
		execute(type_prefix&"_validationfailed="",""")
		if type_form then
			frm_submittedfields = ","
			if frm_requiredfields<>"" then
				frm_requiredfields=","&frm_requiredfields&","
				arr_requiredfields=split(frm_requiredfields,",")
			end if
		end if

		'-----------------
		' SET KEYSTRUCTURE
		'-----------------
		set keystructure = eval("request."&type_keytype)

		'----------------------------
		' LOOP THROUGH KEY VALUE PAIR
		'----------------------------
		for each key in keystructure

			'------------------
			' KEYNAME AND VALUE
			'------------------
			keyname			= lcase(key)
			keyvalue		= trim(keystructure(keyname))
			keyprocess		= True

			'SANITISE THE KEY
			keyname			= replace(keyname,".","")
			keyname			= replace(keyname,"amp;","")
			keyname			= sanitiseField(keyname)

			'---------------------------------------
			' CHECK IF IT SHOULD BE PROCESSED AT ALL
			'---------------------------------------
			keynamecheck		= keyname
			if len(keynamecheck)>10 then keynamecheck = left(keynamecheck,10) end if
			if left(keynamecheck,3)="404" then keyprocess = False end if
			select case keynamecheck
				case "requiredfi","_jsuid","_utma","_utmb","_utmc","_utmz","acookie","aether","aspsession","cfid","cftoken","cluid","guest_id","jsessionid","k","s_cc","s_sq","s_vi","sifrfetch","ssuserid"
					keyprocess = False
			end select

			if keyprocess then

				'---------------
				' VARIABLE SETUP
				'---------------

				'CREATE NEW VARIABLE TO HOLD RAW VALUE
				keyvalue_temp		= keyvalue
				keyname_raw		= type_prefix&"_"&keyname
				execute(keyname_raw&"=keyvalue_temp")

				'CREATE NEW URL ENCODED VARIABLE
				keyvalue_temp		= keyvalue
				keyname_url		= type_prefix&"URL_"&keyname
				keyvalue_url		= sanitiseURL(keyvalue_temp)
				execute(keyname_url&"=keyvalue_url")

				'CREATE NEW HTML ENCODED VARIABLE
				keyvalue_temp		= keyvalue
				keyname_html		= type_prefix&"Encoded_"&keyname
				keyvalue_html		= sanitiseValue(keyvalue_temp)
				execute(keyname_html&"=keyvalue_html")

				'-----------
				' VALIDATION
				'-----------

				'SET VALIDATION TYPE
				validationtype = "string"
				validationerror = ""
				if instr(keyname,"url") then validationtype = "url" end if
				if instr(keyname,"email") then validationtype = "email" end if
				if right(keyname,2)="id" then validationtype = "numeric" end if
				if right(keyname,4)="year" then validationtype = "numeric" end if

				if keyvalue<>"" then
					'ADD TO SUBMITTED LIST FOR FORMS
					if type_form then frm_submittedfields = frm_submittedfields&keyname&"," end if

					'VALIDATE ACCORDING TO TYPE
					select case validationtype
						case "url"
							validationerror = validateURL(keyvalue)
						case "email"
							validationerror = validateEmail(keyvalue)
						case "numeric"
							validationerror = validateNumeric(keyvalue)
						case else
							validationerror = validateString(keyvalue)
					end select
				end if

				'PASS ERRORS TO STRING
				if validationerror<>"" then
					execute(type_prefix&"_validationfailed="&type_prefix&"_validationfailed&keyname&"",""")
				end if
			end if
		next

		'------------------
		' KILL KEYSTRUCTURE
		'------------------
		set keystructure = Nothing

		'--------------------------------------------------------------------------
		' SPECIFIC FORM CHECK - TEST THAT ALL REQUIRED FIELDS ACTUALLY EXIST AT ALL
		'--------------------------------------------------------------------------
		if type_form and isArray(arr_requiredfields) then
			for i=0 to uBound(arr_requiredfields)
				if inStr(frm_submittedfields,arr_requiredfields(i))<1 then
					frm_validationfailed=frm_validationfailed&arr_requiredfields(i)&","
				end if
			next
		end if
	end if
end function


on error goto 0
%>