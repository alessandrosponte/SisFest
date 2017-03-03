<!-- Based on http://bootsnipp.com/snippets/featured/responsive-sidebar-menu -->

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<nav class="navbar navbar-m2p sidebar" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-sidebar-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> Logo<b>Sistema</b>
			</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">
			
				<!-- Dashboard -->
				<li class="active open"><a href="home.jsp"> <span
						class="pull-right hidden-xs showopacity glyphicon material-icons">av_timer</span>
						Dashboard
				</a></li>
				
				<!-- Separador -->
				<li class="separator"></li>
				
				<!-- Eventos -->
				<li class=""><a href="#"> <span
						class="pull-right hidden-xs showopacity glyphicon material-icons">cake</span>
						Eventos
				</a></li>
				
				<!-- Parceiro -->
				<li class=""><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span
						class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">burst_mode</span>
						Parceiros <span class="caret"></span>
				</a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#"><i class="material-icons">add</i> Add</a></li>
						<li><a href="#"><i class="material-icons">sort</i> List</a></li>
					</ul></li>				
				
				<!-- Clientes -->
				<li class=""><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span
						class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">account_circle</span>
						Clientes <span class="caret"></span>
				</a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#" data-toggle="modal"
							data-target="#cliente-modal"><i class="material-icons">add</i>
								Novo Cliente</a></li>
						<li><a href="controller.do?command=ListarClientesBuscar"><i
								class="material-icons">person</i> Consultar</a></li>
					</ul></li>
					
				<!-- Blog -->
				<li class=""><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span
						class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">chat_bubble_outline</span>
						Blog <span class="caret"></span>
				</a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#"><i class="material-icons">add</i> Add</a></li>
						<li><a href="#"><i class="material-icons">sort</i> List</a></li>
					</ul></li>
					
				<!-- Tags -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span style="font-size: 16px;"
						class="pull-right hidden-xs showopacity glyphicon material-icons">label</span>
						Tags <span class="caret"></span>
				</a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#"> <i class="material-icons">add</i> Add
						</a></li>
						<li><a href="#"> <i class="material-icons">sort</i> List
						</a></li>
					</ul></li>
					
				<!-- Separador -->
				<li class="separator"></li>
				
				<!-- Usuário -->
				<li class="#"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span
						class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">group</span>
						Usuário <span class="caret"></span>
				</a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#"><i class="material-icons">add</i> Add</a></li>
						<li><a href="#"><i class="material-icons">sort</i> List</a></li>
					</ul></li>
					
					
				<!-- Sair -->
				<li><a href="#"> <span
						class="menu-icon pull-right hidden-xs showopacity glyphicon material-icons">exit_to_app</span>
						Sair
				</a></li>
			</ul>
		</div>
	</div>
</nav>
