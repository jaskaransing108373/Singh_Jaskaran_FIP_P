<?php
//ini_set('display_errors', 1);

// TODO: Take care the form submission

header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');
$results = [];
$visitor_name = '';
$visitor_email = '';
$visitor_message = '';
$department = '';

// 1. Check the submission out - validate the code 
// $_POST['firstname']


    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
    $visitor_name .= ' '.filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
    $visitor_email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
    //this department is the option were user can select different areas 
    $department = filter_var($_POST['department'], FILTER_SANITIZE_STRING);

    //2nd condition, now this if and else conditions are used to make all the fields mandatory
 if(empty($visitor_name)) {
		$empty[] = "<b>firstname</b>";		
    }
    else {
         $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
    }
     if(empty($visitor_name)) {
		$empty[] = "<b>lastname</b>";		
	}
	if(empty($visitor_email)) {
		$empty[] = "<b>Email</b>";
	}	
	if(empty($visitor_message)) {
		$empty[] = "<b>message</b>";
	}
	
	if(!empty($empty)) {
		$output = json_encode(array('type'=>'error', 'text' => implode(", ",$empty) . ' Required!'));
        die($output);
	}
	//email validation start here 
	if(!filter_var($visitor_email, FILTER_VALIDATE_EMAIL)){ 
	    $output = json_encode(array('type'=>'error', 'text' => '<b>'.$visitor_email.'</b> is an invalid Email, please try again.'));
		die($output);
    }
    
	//  3rd condition, here we are redirecting mails to different departments using if and else functions. 
 if($department == "design") {
        $email_recipient = "jaskaran_walia25@yahoo.in";
    }
    else if($department == "coding") {
        $email_recipient = "jaskaran_walia25@yahoo.in";
    }
    else if($department == "technical support") {
        $email_recipient = "jaskaran_walia25@yahoo.in";
    }
    else if($department == "Website Development") {
        $email_recipient = "jaskaran_walia25@yahoo.in";
    }
    else {
        $email_recipient = "jaskaran_walia25@yahoo.in";
    }

    // 4th condition, I tried implement captcha in line 71 to 75.
    

  //  if(empty($_POST['g-recaptcha']))
  //   {
//		$captcha_error = 'pleae verify captcha';
//    }
 //   else { $secret_key = '6Lcc9fAZAAAAAINBM88PCjsyWSkZ_xfTxeEicm3K'}
    

$results['name'] = $visitor_name;
$results['message'] = $visitor_message;
$results['email'] = $visitor_email;
$results['department'] = $email_recipient;

// 2. Prepare the email.
$email_subject = 'Inquiry from Portfolio Site';
//$email_recipient = 'jaskaran_walia25@yahoo.in'; // my email is uncommented here because i already mentioned it above. 
$email_message = sprintf('Name: %s, Email: %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);

// Make sure you run the code in PHP 7.4+
// Otherwise, you would need to make $email_headers as string https://www.php.net/manual/en/function.mail.php
$email_headers = array(
    // Best practise, but it may need you to have a mail set up in noreply@yourdomain.ca
    // 'From'=>'noreply@yourdomain.ca,
    // 'Reply-To'=>$visitor_email,

    // we can still use this for portfolio
    'From'=>$visitor_email
    
);


// 3. Send out the email.
$email_result = mail($email_recipient, $email_subject, $email_message, $email_headers);
if ($email_result) {
    $results['message'] = sprintf('Thank you for contacting us, %s. You will get a reply within 24 hours.', $visitor_name);
} else {
    $results['message'] = sprintf('We are sorry but the email did not go through.');
}



echo json_encode($results);
