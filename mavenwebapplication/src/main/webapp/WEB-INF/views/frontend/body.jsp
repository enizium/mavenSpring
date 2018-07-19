 <!-- Widget -->
      <div id="heading-box">
        <div id="heading-box-cnt">
          <div class="cl">&nbsp;</div>
          <!-- Main Slide Item -->
          <div class="featured-main"> <a href="#"><img src="${pageContext.request.contextPath}/gear/css/images/featured-main.jpg" alt="" /></a>
            <div class="featured-main-details">
              <div class="featured-main-details-cnt">
                <h4><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque turpis urna, rhoncus a tempus in, blandit vel nibh. Sed interdum erat eget lacus commodo mattis.</p>
              </div>
            </div>
          </div>
          <!-- End Main Slide Item -->
          <div class="featured-side">
            <!-- Slide Item 1 -->
            <div class="featured-side-item">
              <div class="cl">&nbsp;</div>
              <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/featured-side-1.jpg" alt="" /></a>
              <h4><a href="#">Lorem ipsum dolor sit ame</a></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque turpis urna, rhoncus a tempus in</p>
              <div class="cl">&nbsp;</div>
            </div>
            <!-- End Slide Item 1 -->
            <!-- Slide Item 2 -->
            <div class="featured-side-item">
              <div class="cl">&nbsp;</div>
              <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/featured-side-2.jpg" alt="" /></a>
              <h4><a href="#">Pellentesque tirpis urna</a></h4>
              <p>Pellentesque turpis urna, rhoncus eget lacus commodo mattis.</p>
              <div class="cl">&nbsp;</div>
            </div>
            <!-- End Slide Item 2 -->
            <!-- Slide Item 3 -->
            <div class="featured-side-item">
              <div class="cl">&nbsp;</div>
              <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/featured-side-3.jpg" alt="" /></a>
              <h4><a href="#">Dolor si atema commodo</a></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque turpis urna</p>
              <div class="cl">&nbsp;</div>
            </div>
            <!-- End Slide Item 3 -->
            <!-- Slide Item 4 -->
            <div class="featured-side-item">
              <div class="cl">&nbsp;</div>
              <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/featured-side-4.jpg" alt="" /></a>
              <h4><a href="#">Adipsicing elit dolor una leo</a></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque turpis urna, rhoncus a tempus in</p>
              <div class="cl">&nbsp;</div>
            </div>
            <!-- End Slide Item 4 -->
          </div>
          <div class="cl">&nbsp;</div>
        </div>
      </div>
      <!-- End Widget -->
    </div>
  </div>
</div>
<!-- End Heading -->
<!-- Main -->
<div id="main">
  <div class="shell">
    <div class="cl">&nbsp;</div>
    <div id="sidebar">
      <h2>news spot</h2>
      <ul>
        <li> <small class="date">12.05.09</small>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </li>
        <li> <small class="date">12.05.09</small>
          <p>Donec venenatis varius urna vitae congue.</p>
        </li>
        <li> <small class="date">12.05.09</small>
          <p>Ullam vel neque ut lectus cursus dapibus.</p>
        </li>
        <li> <small class="date">12.05.09</small>
          <p>Praesent pellentesque arcu convallis ante dignissim quis ultrices felis iaculis.</p>
        </li>
        <li> <small class="date">12.05.09</small>
          <p>Ut eget lorem elit. Donec lorem eros, congue vel mollis non, tincidunt a nisl.</p>
        </li>
        <li> <small class="date">12.05.09</small>
          <p>Curabitur consectetur tellus a diam tincidunt pellentesque. </p>
        </li>
      </ul>
      <a href="#" class="archives">News Archives</a> </div>
    <div id="content">
      <div class="cl">&nbsp;</div>
      
      
      <c:forEach items="${newslist}" var="newslist">
      <div class="grey-box">
      <div><h3><a href="#/">${newslist.title}</a></h3></div>
        
        <a href="#"><img src="images/${newslist.image}" alt="" width="200px" height="150px"/></a>
        <div style="display: inline-block;"> <span>${newslist.date}</span> <a href="#" class="button" style="float-left;">Read more</a></div>
       
      </div>
      </c:forEach>
      
      <div class="cl">&nbsp;</div>
      <div class="video-box">
        <div class="cl">&nbsp;</div>
        <h2 class="left">video spot</h2>
        <a href="#" class="button">All videos</a>
        <div class="cl">&nbsp;</div>
        <div class="video-item-box"> <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/video-1.jpg" alt="" /></a>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
          <a href="#" class="watch-now">Watch now</a> </div>
        <div class="video-item-box second"> <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/video-2.jpg" alt="" /></a>
          <p>Curabitur consectetur tellus a diam tincidunt pellentesque</p>
          <a href="#" class="watch-now">Watch now</a> </div>
        <div class="video-item-box"> <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/video-3.jpg" alt="" /></a>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
          <a href="#" class="watch-now">Watch now</a> </div>
        <div class="video-item-box second"> <a href="#" class="left"><img src="${pageContext.request.contextPath}/gear/css/images/video-4.jpg" alt="" /></a>
          <p>Aliquam erat volutpat. Nam tortor justo, pretium eget iaculis et</p>
          <a href="#" class="watch-now">Watch now</a> </div>
        <div class="cl">&nbsp;</div>
      </div>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<!-- End Main -->