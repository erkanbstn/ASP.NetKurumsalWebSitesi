<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="FirmaTanitim.aspx.cs" Inherits="HandM.FirmaTanitim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div class="main-w3pvt">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 style-banner">
                        <div class="style-banner-inner">
                            <h3 class="font-weight-bold text-uppercase"><span class="font-weight-normal">KALİTELİ</span> Ürünler İÇİN <span class="font-weight-normal">YAŞIYORUZ</span></h3>
                            <p class="mt-3">Kaliteli Ürünler İçin Yaşa</p>
                            <a href="about.html" class="btn button-style mt-sm-5 mt-4">Daha Fazlası</a>
                        </div>
                    </div>
                    <div class="col-lg-6 img-banner-w3 text-center">
                        <div class="csslider infinity" id="slider1">
                            <input type="radio" name="slides" checked="checked" id="slides_1" />
                            <ul class="banner_slide_bg">
                                <li>
                                    <img src="SiteWeb/images/hm.jpg" alt="" class="img-fluid">
                                </li>
                            </ul>
                            <div class="navigation">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>






	<section class="about-inner py-5">
		<div class="container pt-xl-5 pt-lg-3">
			<h3 class="title-w3 mb-5 font-weight-bold">HAKKIMIZDA<span>İNDİRİM</span></h3>
			<div class="row">
				<div class="col-lg-6 w3lsits_works-grid mt-xl-4">
					<div class="wthree-bottom">
						<h6 class="subheading-w3ls text-uppercase text-dark mb-4">GİYİMDE %50<span class="font-weight-bold">'YE VARAN</span>
							<span class="font-weight-bold">HAFTALIK </span>İNDİRİM</h6>
						<p>Erkek - Bayan Pamuk Tişörtlerimizde Günlük ve Haftalık %50 'ye Varan İndirim Fırsatını Kaçırmayın.!</p>
					</div>
				</div>
				<div class="col-lg-6 w3lsits_works-grid1 mt-lg-0 mt-sm-5 mt-4">
					<img src="SiteWeb/images/Pamuk.jpg" alt="" class="img-fluid" />
				</div>
			</div>
		</div>
	</section>



    <div class="testimonials py-5" id="testi">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title-w3 mb-5 text-wh font-weight-bold">Müşterilerimizin Hakkımızda Düşündükleri
				<span>Web Sitemiz İçin Mükemmel Yorumlar</span>
			</h3>
			<div class="carousel-inner">
				<div class="row">
					<div class="col-lg-6 w3_testimonials_grid">
						<div class="bg-wh p-sm-5 p-4">
							<p class="sub-test-w3ls">En Kaliteli ve Ucuz Ürünleri Bulabildiğim Tek Yer !
							</p>
							<div class="row mt-5">
								<div class="col-3 testi-img-res">
									<img src="SiteWeb/images/te1.jpg" style="width:100px; height:100px" alt=" " class="img-fluid" />
								</div>
								<div class="col-9 w3_testi_grid mt-xl-3 mt-lg-2 mt-md-4 mt-2">
									<h5 class="mb-2">Büşra Ünal</h5>
									<p>Müşteri</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 w3_testimonials_grid mt-lg-0 mt-4">
						<div class="bg-wh p-sm-5 p-4">
							<p class="sub-test-w3ls">Müşteri Memnuniyetini Önemseyen ve Çalışanlarına Değer Veren Tek Firma.!
							</p>
							<div class="row mt-5">
								<div class="col-3 testi-img-res">
									<img src="SiteWeb/images/te2.jpg" alt=" " class="img-fluid" />
								</div>
								<div class="col-9 w3_testi_grid  mt-xl-3 mt-lg-2 mt-md-4 mt-2">
									<h5 class="mb-2">Gizem Çelik</h5>
									<p>Müşteri</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    
</asp:Content>
