var cauHoi = ["Nhóm thằn lằn con là gì", "khi gặp Thúy Kiều , Kim Trọng trao cho vật gì làm tin ?", "Quốc hiệu đầu tiên của nước ta là gì ?", "Trong tác phẩm nhớ rừng của Thế Lữ khi say con hổ uống cái gì ?", "Đại vương ếch trong tác phẩm Dế mèn phưu lưu ký có tên là gì ?", "Vũ điệu truyền thống của đảo Hawaii là ?", "Vịnh nào của Việt Nam được coi là 1 trong 3 vịnh đẹp nhất thế giới", "Loài chim nào có khả năng bay lùi lại phía sau ?", "Người sinh ra đầu tiên từ ống nghiệm là người nước nào ?", "Việt Nam có bao nhiêu di sản văn hóa thế giới ?"]
        var traLoi = ["Con người", "Bò sát", "Thi Hackathon", "Không biết", "Dải yếm", "Miếng Lụa", "Chiếc châm cài tóc", "Chiếc khăn hồng", "Văn Lang", "Đại Việt", "Đại Nam", "Đáp án khác", "Ánh trăng tan", "Nước suối", "Rượu", "Không uống gì", "Ếch ương", "Ếch cốm", "Ếch đồng", "Ếch rừng", "Ếch rừng", "Điệu nhảy cha cha cha", "Vũ điệu SamBa", "Vũ điệu Tango", "Vịnh Hạ Long", "Vịnh Lăng Cô", "Vịnh Xuân Đài", "Vịnh Cam Ranh", "Chim ruồi", "Chim gõ kiến", "Chim cu", "Chim rái cá", "Nước Anh", "Nước Đức", "Nước Mỹ", "Nước Pháp", "6 di sản", "7 di sản", "8 di sản", "9 di sản"]
        var ketQua = ["Thi Hackathon", "Chiếc châm cài tóc", "Đại Việt", "Rượu", "Ếch ương", "Vũ điệu SamBa", "Vịnh Hạ Long", "Chim rái cá", "Nước Anh", "7 di sản"]
        var dapAn = [];
        var tienDoSe = 0;
        var t = 0;
        window.onload = taoDivDapAn(cauHoi.length)
        window.onload = myFunctionDapAn(cauHoi.length);
        window.onload = taoDivCauHoi(cauHoi.length);
        var k = 0;
        for (i = 0; i < cauHoi.length; i++) {
            var noiDungCauHoi = `
                                <div class="card-body" style="width: 80%;margin-left: 10%;">
                                    <div class="row " style="border-bottom: 1px solid">
                                        <div class="col-sm-2">
                                            <h5>Câu ${i + 1}: </h5>
                                        </div>
                                        <div class="col-sm-10">
                                            <p>${cauHoi[i]}</p>
                                        </div>
                                        
                                    </div>
                                    <div class="inputGroup xoaBG" id="Th_CH${k}"></div>
                                        <div class="inputGroup xoaBG" id="Th_CH${k + 1}"></div>
                                        <div class="inputGroup xoaBG" id="Th_CH${k + 2}"></div>
                                        <div class="inputGroup xoaBG" id="Th_CH${k + 3}"></div>
                                </div>`
            var element2 = document.getElementById("Th_TracNghiem" + i);
            element2.innerHTML = noiDungCauHoi;
            // console.log("i=" + i)
            var h = i + 1;
            var sessionS = sessionStorage.getItem("CH" + h);
            if (sessionS != undefined) {
                var chuoi = sessionS.split(",")
                if (chuoi[1] != "") {
                    var element = document.getElementById("CH" + h);
                    element.innerHTML = chuoi[1];
                    tienDo.innerHTML = h + "/" + cauHoi.length;
                    tienDoSe++;
                }
            }

            //console.log("Kett=====>"+elDA);
            for (j = k; j < k + 4; j++) {
                if (sessionS != undefined) {
                    if (chuoi[0] == `MTL${j}`) {
                        var noiDungTraLoi = `
                                        <input id="MTL${j}" name="CH${i + 1}" type="radio" value="${traLoi[j]}" checked
                                            onclick="myFunction('MTL${j}','CH${i + 1}') "/>
                                        <label for="MTL${j}">${traLoi[j]}</label>`
                    }

                    else {
                        var noiDungTraLoi = `
                                        <input id="MTL${j}" name="CH${i + 1}" type="radio" value="${traLoi[j]}"
                                            onclick="myFunction('MTL${j}','CH${i + 1}')"/>
                                        <label for="MTL${j}">${traLoi[j]}</label>`
                    }
                }
                else {
                    var noiDungTraLoi = `
                                        <input id="MTL${j}" name="CH${i + 1}" type="radio" value="${traLoi[j]}"
                                            onclick="myFunction('MTL${j}','CH${i + 1}')"/>
                                        <label for="MTL${j}">${traLoi[j]}</label>`
                }


                var element3 = document.getElementById("Th_CH" + j);
                element3.innerHTML = noiDungTraLoi;
                //console.log(j)
            }

            k = k + 4;
        }

        function taoDivCauHoi(soCauHoi) {
            var toAdd = document.createDocumentFragment();
            for (var i = 0; i < soCauHoi; i++) {
                var newDiv = document.createElement('div');
                newDiv.id = 'Th_TracNghiem' + i;
                newDiv.className = 'card text-left';
                newDiv.style = `border-bottom: none;border-left: none;border-right: none;background-image: url('resources/img/baithi2.jpg');
                background-position: center;
                background-size: cover; margin-bottom: 10px`;
                toAdd.appendChild(newDiv);
            }
            CauHoiTest.appendChild(toAdd);
        }

        function taoDivDapAn(soCauHoi) {
            var toAdd = document.createDocumentFragment();
            for (var i = 0; i < soCauHoi; i++) {
                var newDiv = document.createElement('div');
                newDiv.id = 'Th_DapAn' + i;
                toAdd.appendChild(newDiv);
            }
            DivDapAn.appendChild(toAdd);
        }

        function myFunctionDapAn(SoCau) {
            for (i = 0; i < SoCau; i++) {
                var noiDungHTML = `
                <div class="row" id="TL${i + 1}">
                            <div class="col-sm-3">
                                <a href="#Th_TracNghiem${i}" >Câu ${i + 1}:</a>
                            </div>
                            <div class="col-sm-9" style="margin-left: -30px;">
                                <p style="margin-bottom: 0%;" id="CH${i + 1}"></p>
                            </div>
                        </div>`
                var element = document.getElementById("Th_DapAn" + i);
                element.innerHTML = noiDungHTML;
            }
        }

        function myFunction(MaTL, MaCH) {

            var radios = document.getElementsByName(MaCH);
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    var element = document.getElementById(MaCH);
                    var check = document.getElementById(MaCH).innerHTML;
                    if (check == "") {
                        tienDoSe++;
                        tienDo.innerHTML = tienDoSe + "/" + cauHoi.length;
                    }
                    element.innerHTML = radios[i].value;
                    var ds = [MaTL, radios[i].value]
                    sessionStorage.setItem(MaCH, ds);
                    break;
                }
            }
        }


        function countdown(elementName, minutes, seconds) {
            var element, endTime, hours, mins, msLeft, time;
            function twoDigits(n) {
                return (n <= 9 ? "0" + n : n);
            }
            function updateTimer() {
                msLeft = endTime - (+new Date);
                if (msLeft < 1000) {
                    element.innerHTML = "finished";
                    for (i = 1; i <= cauHoi.length; i++) {
                        //var dapAn = [];
                        dapAn.push(sessionStorage.getItem("CH" + i));
                        //  console.log(dapAn);
                    }
                } else {
                    time = new Date(msLeft);
                    hours = time.getUTCHours();
                    mins = time.getUTCMinutes();
                    element.innerHTML = (hours ? hours + ':' + twoDigits(mins) : mins) + ':' + twoDigits(time.getUTCSeconds());
                    setTimeout(updateTimer, time.getUTCMilliseconds() + 500);
                     console.log(element.innerHTML)
                     sessionStorage.setItem("time",element.innerHTML)
                }
            }
            element = document.getElementById(elementName);
            endTime = (+new Date) + 1000 * (60 * minutes + seconds) + 500;
            updateTimer();

        }
        var time = sessionStorage.getItem("time")
        //console.log("------>" + getTime[0])
        //console.log("------>" + getTime[1])
        if(time != undefined)
        {
            var getTime = time.split(":")
            countdown("countdown", parseInt(getTime[0]), parseInt(getTime[1]));
            countdown("countdown2", parseInt(getTime[0]), parseInt(getTime[1]));
        }
        else
        {
            countdown("countdown",30,0);
            countdown("countdown2",30,0);
        }

        nopBai.onclick = () => {
            for (i = 1; i <= cauHoi.length; i++) {
                dapAn.push(sessionStorage.getItem("CH" + i));
            }
            // console.log(dapAn);
        }

        /*$(document).scroll(function () {
            var y = $(this).scrollTop();
            if (y > 600) {
                $('.bottomMenu').fadeIn();
            } else {
                $('.bottomMenu').fadeOut();
            }
        });*/