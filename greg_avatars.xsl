<?xml version="1.0" encoding="UTF-8"?><!-- DWXMLSource="greg_avatars.xml" -->

<!--SHEET STYLE
===============-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method = "html" doctype-system = "sbout:legacy-compat"/>
	
<!--TEMPLATE
===============-->
<xsl:template match="/">

<html>
	<head>
		<!--<meta charset="utf-8" />-->
		<link rel="stylesheet" type="text/css" href="css/greg.css" />
		<script type="text/javascript" src="gregAvatars.js"></script>
		<title>Greg's Gambits | The Avatars</title>
	</head>

	<!--BODY CONTAINER
	 ==================================================================-->

	<body>
		<div id="container" style="width: 900px;">
			<img src="images/superhero.jpg" class="floatleft" />
			<h1 align="center">Avatar Options</h1>
			<div style="clear:both;"></div>

			<!--NAV-SIDEBAR
		 ==================================================================-->
			<div id="nav">
				<p>
									<a href="index.html">Home</a>
									<a href="gregabout.html">About Greg</a>
									<a href="play_games.html">Play a Game</a>
									<a href="signin.html">Sign In</a>
									<a href="contact.html">Contact Us</a>
									<a href="aboutyou.html">Tell Greg about you</a>
					<p class="active"><a href="sign_up.html" style="color:#D0FF14;">SIGN UP NOW!</a></p>
				</p>
			</div>

			<!--PAGE-CONTENT
		 ==================================================================-->
			<div id="content">
				<table border="1" align="center" width="100%" cellpadding="5">

					<!--ROW-1
				===============-->
					<tr bgcolor="#007FFF">
						<!-- avatar's names in the table heading -->
						<th>Avatar</th>
						<th>Special Powers</th>
						<th>Home Base</th>
						<th>Accessories</th>
						<th>Partner</th>
					</tr>
					<!--XLS CODE-->
					<xsl:for-each select="greg/avatar" 
								xmlns:bunny='images/bunny.jpg'
								xmlns:princess='images/princess.jpg' 
								xmlns:ghost='images/ghost.jpg' 
								xmlns:wizard='images/wizard.jpg' 
								xmlns:elf='images/elf.jpg'>

						<!--ROW-2
				===============-->
						<tr>
							<!-- avatar's information into a table row -->
							<td>
								<xsl:value-of select="name" />
							</td>
							<td>
								<xsl:value-of select="powers" />
							</td>
							<td>
								<xsl:value-of select="home" />
							</td>
							<td>
								<xsl:value-of select="carry" />
							</td>
							<td>
								<xsl:value-of select="partner" />
							</td>
						</tr>
					</xsl:for-each>
					
					<!--ROW-4
				===============-->
					<tr>
						<!-- buttons and images to call appropriate functions -->
						<td align="center">
					    	<img src="images/bunny.jpg" width="75" height="116" alt="Bunny"/>
							<input type="button" id="bunny" value="Bunny Details" onclick="getMore('bunny')" />
						</td>
						<td align="center">
							<img src="images/princess.jpg" width="75" height="102" alt=""/>
							<input type="button" id="princess" value="Princess Details" onclick="getMore('princess')" />
					  </td>
						<td align="center">
							<img src="images/ghost.jpg" width="100" height="100" alt=""/>
							<input type="button" id="ghost" value="Ghost Details" onclick="getMore('ghost')" />
					  </td>
						<td align="center">
							<img src="images/wizard.jpg" width="100" height="100" alt=""/>
							<input type="button" id="wizard" value="Wizard Details" onclick="getMore('wizard')" />
					  </td>
						<td align="center">
							<img src="images/elf.jpg" width="75" height="116" alt=""/>
							<input type="button" id="elf" value="Elf Details" onclick="getMore('elf')" />
					  </td>
						
					</tr>

					<!--ROW-3
				===============-->
					<tr>
						<td colspan="5">Select an avatar to view more details.</td>
					</tr>
					
					<!--ROW-5
				===============-->
					<tr>
						<td id="details" colspan="5">Details</td>
					</tr>

				</table>
			</div>

		</div>
	</body>
</html>
	
</xsl:template><!--END OF TEMPLATE-->
	
</xsl:stylesheet><!--END OF SHEET STYLE-->
