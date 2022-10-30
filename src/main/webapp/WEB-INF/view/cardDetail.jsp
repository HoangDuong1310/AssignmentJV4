<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Chi Tiet</title>
</head>
<style>
    *
    {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    html 
    {
        font-size: 62.5%;
        font-family: 'K2D', sans-serif;
    }
    .nav 
    {
        width: 77px;
        display: flex;
        justify-content: center;
        background-color: #1a1a1a;
        position: fixed;
        top: 0;
        left: 0;
        bottom: 0;
        border-right: 1px solid #2F2F2F;
    }
    .nav ul
    {
        list-style: none;
        text-decoration: none;
    }
    .nav ul .logo 
    {
        width: 50px;
        margin: 30px auto 25px;
    }
    .nav ul .logo a img
    {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .nav ul li a i
    {
        font-size: 2rem;
        color: #fff;
    }
    .nav ul .item
    {
        background-color: #39393f;
        text-align: center;
        margin-bottom: 18px;
        border-radius: 18px;
    }
    .active
    {
        background-color: #7b68ee !important;
    }
    .nav ul .item a
    
    {
        padding: 15px;
        display: block;
    }
    /* sidebar  */
    .sidebar
    {
        width: 300px;
        background-color: #1a1a1a;
        position: fixed;
        top: 0;
        bottom: 0;
        left: 77px;
        color: #fff;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        z-index: 99;
    }
    .sidebar__title
    {
        padding: 20px;
        font-size: 1.6rem;
        border-bottom: 1px solid #2F2F2F;
        display: block;
        width: 100%;
    }
    .sidebar__login
    {
    display: flex;
        margin-top: auto;
        width: 100%;
    }
    .sidebar__login i 
    {
        margin-right: 5px;
    }
    .sidebar__login-btn
    {
        border: transparent;
        width: 100%;
        padding: 15px 0;
        background-color: #343A3F;
        color: #fff;
        font-size: 1.6rem;
        border-radius: 10px 10px 0 0;
        cursor: pointer;
    }
    .sidebar__login-btn:hover {
        filter: brightness(110%);
    }
    /* content  */
    .content__wrap
    {
        background-color: #000;
        padding-left: 377px;
    }
    .content 
    {
        min-height: 100vh;

    }
    .banner
    {
        
        height: 520px !important;
        /* width: 100%; */
        background-size: cover;
        height: 100%;
        padding: 20px;
        box-shadow: 0 0 5px 0 rgba(0,0,0,0.5);
        display: flex;
        align-items: center;
        position: relative;
    }
    .banner__content
    {
        color: #fff;
    }
    .banner__content h2 
    {
        font-size: 3.2rem;
        margin-bottom: 10px;
    }
    .banner__content p
    {
        font-size: 1.6rem;
    }
    .btn-action .btn
    {
        padding: 15px 50px;
        border: none;
        outline: none;
        border-radius: 5px;
        margin: 20px 10px;
        cursor: pointer;
    }
    .btn-action .btn:hover
    {
        opacity: 0.7;
    }
    .btn-action .btn i 
    {
        margin-right: 5px;
    }
    .btn-edit
    {
        background-color: rgb(44, 54, 197);
        color: #fff;
    }
    .btn-delete 
    {
        background-color: #c52727;
        color: #fff;
    }
    .info
    {
        margin: 20px;
        padding: 20px;
    }
    .info__title
    {
        color: #fff;
        width: 100%;
        font-size: 3.4rem;
        font-weight: 550;
        margin-bottom: 20px;
    }
    .info__content
    {
        color: #fff;
        width: 100%;
    }
    .info__content-header
    {
        background-color: #23272A;
        padding: 40px;
        border-radius: 14px 14px 0 0;
        display: flex;
        flex-direction: column;
    }
    .info__content-header p 
    {
        font-size: 1.6rem;
        margin-bottom: 20px;
    }
    .video
    {
        margin: 10px auto;
    }
    .info__content-main
    {
        background-color: #1A1A1A;
        border-radius: 0 0 14px 14px;
        padding: 40px;
        font-size: 1.6rem;
        display: flex;
    }
    .col
    {
        width: 22%;
        margin-right: 10px;
    }
    .col__item
    {
        margin-bottom: 20px;
        padding-right: 10px;
    }
    .item__title
    {
        font-size: 1.8rem;
        font-weight: 500;
        margin-bottom: 10px;
    }
    .item__content
    {
        font-weight: 100;
    }




</style>
<body>
    <div class="main__wrapper">
        <div class="nav">
            <ul>
                <li class="logo">
                    <a href="#">
                        <img src="https://upload.motgame.vn/photos/motgame-vn/2022/05/Spy-x-family-Anya_3.jpg" alt="logo">
                    </a>
                </li>
                <li class="item">
                    <a href="">
                        <i class="fa-solid fa-house"></i>
                    </a>
                </li>
                <li class="item">
                    <a href="list-card.html">
                        <i class="fa-solid fa-tag"></i>
                    </a>
                </li>
                <li class="item">
                    <a href="">
                        <i class="fa-solid fa-book"></i>
                    </a>
                </li>
                <li class="item">
                    <a href="">
                        <i class="fa-solid fa-message"></i>
                    </a>
                </li>
            </ul>
        </div>
        <div class="sidebar">
            <div class="sidebar__title">
                <h1>Chi tiet</h1>
            </div>
            <div class="sidebar__login">
                <button class="sidebar__login-btn">
                    <i class="fa-solid fa-right-to-bracket"></i>
                    <span>Đăng nhập</span>
                </button>
            </div>
        </div>
        <div class="content__wrap">
            <div class="content">
                <div class="banner" style="background-image: linear-gradient(100deg, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2) 28%, rgba(30, 38, 44, 0) 50%), linear-gradient(rgba(0, 0, 0, 0) 10%, rgb(0, 0, 0) 100%), url(${pageContext.request.contextPath}/img/${list.img});">
                    <div class="banner__content">
                        <h2>${list.name }</h2>
                        <p>${list.description }</p>
                        <div class="btn-action">
                            <button class="btn btn-edit"><i class="fa-solid fa-pen-to-square"></i> Sửa</button>
                            <button class="btn btn-delete"><i class="fa-solid fa-trash"></i>Xoá</button>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <div class="info__title">
                        <span>Thông tin</span>
                    </div>
                    <div class="info__content">
                        <div class="info__content-header">
                            <div class="video">
                                <iframe width="560" height="315" src="${list.video}" title="YouTube video player"
                                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe>
                            </div>
                        </div>
                        <div class="info__content-main">
                            <div class="col">
                               <div class="col__item">
                                   <div class="item__title">ID</div>
                                   <div class="item__content">${list.id }</div>
                               </div>
                            <div class="col__item">
                                <div class="item__title">Price</div>
                                <div class="item__content">${list.price }</div>
                            </div>
                            </div>
                            <div class="col">
                                <div class="col__item">
                                    <div class="item__title">Quantity</div>
                                    <div class="item__content">${list.quantity }</div>
                                </div>
                                <div class="col__item">
                                    <div class="item__title">CreatedUser</div>
                                    <div class="item__content">${list.createdUser }</div>
                                </div>
                                <div class="col__item">
                                    <div class="item__title">CreatedDate</div>
                                    <div class="item__content">${list.createdDate }</div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="col__item">
                                    <div class="item__title">LastModifiedUser</div>
                                    <div class="item__content">${list.lastModifiedUser }</div>
                                </div>
                                <div class="col__item">
                                    <div class="item__title">LastModifiedDate</div>
                                    <div class="item__content">${list.lastModifiedDate }</div>
                                </div>
                                <div class="col__item">
                                    <div class="item__title">IsDeleted</div>
                                    <div class="item__content">${list.isDeleted }</div>
                                </div>
                            </div>
                            
                            <div class="col">
                                <div class="col__item">
                                    <div class="item__title">Custom</div>
                                    <div class="item__content">${list.custom }</div>
                                </div>
                                 <div class="col__item">
                                    <div class="item__title">Custom</div>
                                    <div class="item__content">${list.custom }</div>
                                </div>
                                <div class="col__item">
                                    <div class="item__title">AmountHarem</div>
                                    <div class="item__content">${list.amountHarem }</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>