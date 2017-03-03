<!-- Based on http://bootsnipp.com/snippets/featured/responsive-sidebar-menu -->

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<div id="menuSuperior" class="container-fluid">
			<div class="row">
				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3 col-lg-offset-5 col-md-offset-5 col-sm-offset-4">
					<div id="ferramenta" class="btn-toolbar" role="toolbar" aria-label="...">
					<div class="btn-group" role="group" aria-label="...">
							<form id="buscarNav" role="search">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Buscar">
									<span class="input-group-btn">
										<button class="btn btn-default" type="submit">
											<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
										</button>
									</span>
								</div>
							</form>
						</div>
						
					</div>
				</div>
				<div class="col-xs-8 col-sm-4 col-md-4 col-lg-4">
					<div  style="float: right; padding-right:12px;" id="ferramenta" class="btn-toolbar" role="toolbar" aria-label="...">
						<div class="btn-group" role="group" aria-label="...">
							<div class="btn-group" role="group">
								<a class="btn dropdown-toggle" href="" id="flag" data-toggle="dropdown">
								<span class="fa-stack"><i
										class="fa fa-circle fa-stack-2x"></i><i
										class="fa fa-plus fa-stack-1x fa-inverse"></i></span>
								</a>
								<ul class="dropdown-menu dropdown-menu-flag" role="menu">
									<li><a href="#" data-toggle="modal"
										data-target="#cliente-modal"><span class="fa fa-users"></span>
											Novo Cliente</a></li>
									<li><a href="#"><span class="fa fa-handshake-o"></span>
											Novo Parceiro</a></li>
									<li><a href="#"> <img
											src="http://www.country-dialing-codes.net/img/png-country-4x2-flat-res-640x480/gf.png"
											alt="Français" width="28px" height="18px"> <span>Français</span>
									</a></li>
								</ul>
							</div>
							<div class="btn-group" role="group">
								<a id="user-profile" href="#" class=" btn dropdown-toggle"
									data-toggle="dropdown"><img
									src="http://lorempixel.com/100/100/people/9/"
									class="img-responsive img-thumbnail img-circle"> Username</a>
								<ul class="dropdown-menu dropdown-block" role="menu">
									<li><a href="#">Profil edition</a></li>
									<li><a href="#">Admin</a></li>
									<li><a href="#">Logout</a></li>
								</ul>
							</div>

						</div>



					</div>

				</div>
			</div>
		</div>