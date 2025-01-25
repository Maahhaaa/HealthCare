<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Service</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Lexend+Tera:wght@400;500;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" />
    <link rel="stylesheet" href="Css/style.css" />
    <link rel="stylesheet" href="Css/Home.css" />
    <style>
      .wrapper-ec {
        position: relative !important;
      }
      .home{
        color: #000000 !important;
      }
      .service{
        color: #007e85 !important;
      }
      .rectangle {
        position: absolute;
        width: 70px;
        height: 3px;
        top: 40px;
        left: 490px;
        background: #007e85;
        z-index: 2;
        border-radius: 7px;

        .main-container {
          height: 1400px !important;
        }
      }
    </style>
  </head>
  <body>
    <div class="main-container">
      <div class="flex-row-e">
        <div class="frame">
          <div class="image"></div>
          <div class="healthcare">
            <span class="health">health</span><span class="care">care</span>
          </div>
        </div>
        <div class="frame-1"><span class="log-in"><a href="signIn.jsp">Log in</a></span></div>
        <div class="frame-2">
          <div class="frame-3">
            <span class="home"><a href="index.jsp">home</a></span>
            <span class="service"><a href="Service.jsp">Service</a></span>
            <span class="contact-us"><a href="contact.jsp">contact us</a></span>
            <span class="help">help</span>
            <span class="blogs">blogs</span>
          </div>
        </div>
        <span class="sign-up"><a href="signUp.jsp">sign Up</a></span>
        <div class="rectangle"></div>
      </div>
      <div class="rectangle-4">
        <div class="col-md">
          <div class="card-item">
            <span class="h">Book Appointment</span>
            <div class="card-content">
              <div class="form-group">
                <div class="form-control">Full Name *</div>
                <div class="input-style">
                  <div class="input-form-control">
                    <label for="fullname" class="email"></label>
                    <input type="text" id="fullname" placeholder="Enter your full name">
                  </div>

                </div>
              </div>
              <div class="form-group-5">
                <div class="form-control-6">Email *</div>
                <div class="input-style-7">
                  <div class="input-form-control-8">
                    <label for="email-8" class="email"></label>
                    <input type="email" id="email-8" placeholder="Enter your email">
                  </div>

                </div>
                </div>
              </div>
              <div class="form-group-custom-select">
                <span class="form-control-a">Departement *</span>
                <div class="custom-select">
                  <div class="select">
                    <div class="option">
                      <span class="dropdown">Please Select</span>
                      <div class="vector"></div>
                      <ul class="dropdown-menu">
                        <li>Cardiology</li>
                        <li>Neurology</li>
                        <li>Orthopedics</li>
                        <li>Pediatrics</li>
                        <li>Radiology</li>
                      </ul>
                    </div>

                  </div>
                </div>
              </div>
              <div class="form-group-custom-select-b">
                <span class="form-control-c">Time *</span>
                <div class="custom-select-d">
                  <div class="select-e">
                    <div class="option-f">
                      <input
                              type="time"
                              id="appointment-time"
                              class="dropdown-10"
                              value="16:00"
                              onchange="storeAppointmentTime()"
                      />
                      <div class="vector-11"></div>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          <div class="button-primary-color">
            <button id="book-appointment" disabled>
              <span class="btn-text">Book Appointment</span>
            </button>
          </div>

          <div id="message" class="success-message" style="display: none;">Appointment booked successfully!</div>

        </div>
        </div>
        <div class="flex-column-ca">
          <span class="h-headline">Meet the Best Hospital</span
          ><span class="h-12"
            >We know how large objects will act, <br />but things on a small
            scale.</span
          >
          <div class="cta">
            <div class="button-primary-color-btn-round">
              <span class="btn-text-13">Get Quote Now</span>
            </div>
            <div class="button-primary-color-btn-outline-btn-round">
              <span class="btn-text-14">Learn More</span>
            </div>
          </div>
        </div>
      <div class="wrapper-ec">
        <div class="container-ed"></div>
        <div class="footer-content">
          <div class="footer-section">
            <span class="footer-title-ee">Product</span>
            <div class="links-group">
              <div class="link-ef">
                <div class="master-link-f0">
                  <span class="features">Features</span>
                </div>
              </div>
              <div class="link-f1">
                <div class="master-link-f2">
                  <span class="pricing">Pricing</span>
                </div>
              </div>
              <div class="link-f3">
                <div class="master-link-f4">
                  <span class="case-studies">Case studies</span>
                </div>
              </div>
              <div class="link-f5">
                <div class="master-link-f6">
                  <span class="reviews">Reviews</span>
                </div>
              </div>
              <div class="link-f7">
                <div class="master-link-f8">
                  <span class="updates">Updates</span>
                </div>
              </div>
            </div>
          </div>
          <div class="footer-section-f9">
            <span class="footer-title-fa">Company</span>
            <div class="links-group-fb">
              <div class="link-fc">
                <div class="master-link-fd">
                  <span class="about">About</span>
                </div>
              </div>
              <div class="link-fe">
                <div class="master-link-ff">
                  <span class="contact-us-100">Contact us</span>
                </div>
              </div>
              <div class="link-101">
                <div class="master-link-102">
                  <span class="careers">Careers</span>
                </div>
              </div>
              <div class="link-103">
                <div class="master-link-104">
                  <span class="culture">Culture</span>
                </div>
              </div>
              <div class="link-105">
                <div class="master-link-106">
                  <span class="blog">Blog</span>
                </div>
              </div>
            </div>
          </div>
          <div class="footer-section-107">
            <span class="footer-title-108">Support</span>
            <div class="links-group-109">
              <div class="link-10a">
                <div class="master-link-10b">
                  <span class="getting-started">Getting started</span>
                </div>
              </div>
              <div class="link-10c">
                <div class="master-link-10d">
                  <span class="help-center">Help center</span>
                </div>
              </div>
              <div class="link-10e">
                <div class="master-link-10f">
                  <span class="server-status">Server status</span>
                </div>
              </div>
              <div class="link-110">
                <div class="master-link-111">
                  <span class="report-a-bug">Report a bug</span>
                </div>
              </div>
              <div class="link-112">
                <div class="master-link-113">
                  <span class="chat-support">Chat support</span>
                </div>
              </div>
            </div>
          </div>
          <div class="footer-section-114">
            <span class="footer-title-115">Follow us</span>
            <div class="links-group-116">
              <div class="facebook">
                <div class="social-media-icon"></div>
                <div class="link-117">
                  <div class="master-link-118">
                    <span class="facebook-119">Facebook</span>
                  </div>
                </div>
              </div>
              <div class="twitter">
                <div class="social-media-icon-11a"></div>
                <div class="link-11b">
                  <div class="master-link-11c">
                    <span class="twitter-11d">Twitter</span>
                  </div>
                </div>
              </div>
              <div class="instagram">
                <div class="social-media-icon-11e"></div>
                <div class="link-11f">
                  <div class="master-link-120">
                    <span class="instagram-121">Instagram</span>
                  </div>
                </div>
              </div>
              <div class="linked-in">
                <div class="social-media-icon-122">
                  <div class="group-123"></div>
                </div>
                <div class="link-124">
                  <div class="master-link-125">
                    <span class="linked-in-126">LinkedIn</span>
                  </div>
                </div>
              </div>
              <div class="youtube">
                <div class="social-media-icon-127">
                  <div class="group-128"></div>
                </div>
                <div class="link-129">
                  <div class="master-link-12a">
                    <span class="you-tube">YouTube</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <span class="copyright"
        >Copyright © 2022 BRIX Templates | All Rights Reserved
          </span>
      </div>
      </div>

    <script src="js/home.js">
      document.querySelectorAll('a').forEach(link => {
        link.style.color = 'inherit';
        link.style.textDecoration = 'none';
      });
    </script>
  </body>
</html>
