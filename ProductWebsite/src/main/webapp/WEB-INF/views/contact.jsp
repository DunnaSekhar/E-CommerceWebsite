<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title}</title>
</head>
<body>
	<div class="hero-wrap hero-bread"
		style="background-image: url('${images}/contactus.jpg');"></div>

	<section class="ftco-section contact-section bg-light">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="w-100"></div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span><b>Address:</b></span>Q City,B- Block, 1st Floor 109,110,111/112
							Serilingampally, Nanakaramguda, Telangana 500032
						</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span><b>Phone:</b></span> <a href="tel://1234567920">+91 8847833713</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span><b>Email:</b></span> <a href="mailto:dsekhar-gemini-us.com">dsekhar@gemini-us.com</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span><b>Website:</b></span> <a href="#">happyhaltwebsite.com</a>
						</p>
					</div>
				</div>
			</div>
			<div class="row block-9">
				<div class="col-md-6 order-md-last d-flex">
					<form action="#" class="bg-white p-5 contact-form">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Subject">
						</div>
						<div class="form-group">
							<textarea name="" id="" cols="30" rows="7" class="form-control"
								placeholder="Message"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" onclick="myFunction()" value="Send Message"
								class="btn btn-primary py-3 px-5">
						</div>
					</form>
					<script>
						function myFunction() {
							alert("Thanks For Reaching Us!!");
						}
					</script>
				</div>

				<div class="col-md-6 d-flex">
					<!-- <div id="map" class="bg-white"></div> -->
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.6742585352413!2d78.32949321418809!3d17.427413306238165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb912ceb96f37b%3A0x6bf9ecb6d6364f52!2sGemini%20Consulting%20%26%20Services%20India%20Pvt%20Ltd!5e0!3m2!1sen!2sin!4v1636085692710!5m2!1sen!2sin"
						width="600" height="450" style="border: 0;" allowfullscreen=""
						loading="lazy"></iframe>
				</div>
			</div>
		</div>
	</section>

</body>
</html>


