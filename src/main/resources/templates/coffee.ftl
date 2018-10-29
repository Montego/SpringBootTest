<#import "parts/common.ftl" as c>

<@c.page>

<h5 class="pt-3"> Hello, ${userName}</h5>
    <div> This is the coffee helper. Choose filter (not necessary)
        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-roulette-tab" data-toggle="tab" href="#nav-roulette" role="tab" aria-controls="nav-roulettte" aria-selected="true">Coffee Roulette</a>
                            <a class="nav-item nav-link" id="nav-history-tab" data-toggle="tab" href="#nav-history" role="tab" aria-controls="nav-history" aria-selected="false">History</a>
                            <a class="nav-item nav-link" id="nav-liked-tab" data-toggle="tab" href="#nav-liked" role="tab" aria-controls="nav-liked" aria-selected="false">Liked</a>
                        </div>
                    </nav>
                    <div class="tab-content mt-2" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-roulette" role="tabpanel" aria-labelledby="nav-roulette-tab">
                            <p class="bg-info clearfix rounded">
                                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                    Add filter
                                </button>
                            </p>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <select class="form-control form-control-sm">
                                        <option>All size</option>
                                        <option>Small size</option>
                                        <option>Medium size</option>
                                        <option>Large size</option>
                                    </select>
                                </div>
                                <div class="card card-body">
                                    <select class="form-control form-control-sm">
                                        <option>All coffee</option>
                                        <option>Espresso</option>
                                        <option>Cappuccino</option>
                                        <option>Fredo</option>
                                        <option>Tripplo</option>
                                    </select>
                                </div>
                                <form>
                                    <div class="form-row align-items-center">
                                        <div class="col-auto my-1">
                                            <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
                                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                                <option selected>One syrup</option>
                                                <option value="2">Two syrups</option>
                                                <option value="3">Three syrops</option>
                                            </select>
                                        </div>
                                        <div class="col-auto my-1">
                                            <div class="custom-control custom-checkbox mr-sm-2">
                                                <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                                <label class="custom-control-label" for="customControlAutosizing">Use syrup</label>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                            <div class="bg-info clearfix rounded">
                                <button type="button" class="btn btn-success ml-2 float-right">Start roulette</button>
                                <button type="button" class="btn btn-primary float-right">Clean filter</button>
                            </div>
                            <div id="carouselExampleSlidesOnly" class="carousel slide pt-5" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="/static/img/coffee_type/cappuccino.jpg" alt="First slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>first</h5>
                                            <p>...</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="/static/img/coffee_type/cappuccino.jpg" alt="Second slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>second</h5>
                                            <p>...</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="/static/img/coffee_type/cappuccino.jpg" alt="Third slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>third</h5>
                                            <p>...</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane fade" id="nav-history" role="tabpanel" aria-labelledby="nav-history-tab">
                            <table class="table">
                                <caption>History</caption>
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Coffee Result</th>
                                    <th scope="col">Have you liked it?</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>28/10/2018 21:38</td>
                                    <td>Cappuccino with Chocolate</td>
                                    <td>
                                        <a class="col align-self-right" href="#">
                                            <i class="fas fa-smile"></i>
                                        </a>
                                        <a class="col align-self-right" href="#">
                                            <i class="fas fa-meh"></i>
                                        </a>
                                        <a class="col align-self-right" href="#">
                                            <i class="fas fa-poo"></i>
                                        </a>
                                    </td>

                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Cappuccino with Chocolate, Coco, Rawsberry</td>
                                    <td>
                                        <a class="col align-self-right" href="#">
                                            <i class="fas fa-smile"></i>
                                        </a>
                                        <a class="col align-self-right" href="#">
                                            <i class="fas fa-meh"></i>
                                        </a>
                                        <a class="col align-self-right" href="#">
                                            <i class="fas fa-poo"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Larry</td>

                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-liked" role="tabpanel" aria-labelledby="nav-liked-tab">
                            ...Liked List here...
                        </div>

                    </div>


                </div>

                <div class="col-md-4">
                    <img src="/static/img/coffee_schema.jpg" class=".img-fluid" alt="coffee schema image">
                </div>
                <#--<button type="button" class="btn btn-primary">Give me my coffee</button>-->
                    <#--<img src="/static/img/coffee.png" class=".img-fluid pull-right" alt="Responsive image">-->
                </div>
            </div>
        </div>
</@c.page>