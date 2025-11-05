<%@ Page MasterPageFile="~/template.master" Inherits="OWTL_SFL1" CodeFile="OWTL_SFL1.aspx.cs" Language="C#" %>

<%@ Register TagPrefix="gx" Namespace="com.sabratec.dotnet.framework.web.controls" Assembly="GXDotnet" %>

<asp:Content ID="data" ContentPlaceHolderID="GXPagePlaceHolder" runat="server">
    <div class="headline-container modal-header">
        <h1 class="headline" id="monYear_DSC" runat="server"></h1>
        <button class="modal-exit" onclick="gx_SubmitKey('[pf3]');"></button>
    </div>
    <div id="gx_screenArea" class="form-grey-BG">
        <div class="main-area-form-modal">
            <div class="centered-flex">
                <gal-input label-text="Month:" label-size="auto" input-size="xsmall" no-description>
                    <select id="month_MM" runat="server" onchange="gx_SubmitKey('[ENTER]')">
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </gal-input>
                <gal-input label-text="Year:" label-size="auto" input-size="xxsmall" no-description>
                    <input id="year_YY" runat="server" onchange="gx_SubmitKey('[ENTER]')" />
                </gal-input>
            </div>
            <div class="line"></div>
            <div class="calendar">
                <div class="calendar__date">
                    <div class="calendar__day week">Week</div>
                    <div class="calendar__day">Sun</div>
                    <div class="calendar__day">Mon</div>
                    <div class="calendar__day">Tue</div>
                    <div class="calendar__day">Wed</div>
                    <div class="calendar__day">Thu</div>
                    <div class="calendar__day">Fri</div>
                    <div class="calendar__day sat">Sat</div>
                    <input class="calendar__number week no-color" id="week_WEEK1" runat="server" onclick="gx_SubmitKeyInPos('week_WEEK1,'[enter]');" />
                    <input class="calendar__number" id="day00_DAY1" runat="server" onclick="gx_SubmitKeyInPos('day00_DAY1','[enter]');" />
                    <input class="calendar__number" id="day01_DAY2" runat="server" onclick="gx_SubmitKeyInPos('day01_DAY2','[enter]');" />
                    <input class="calendar__number" id="day02_DAY3" runat="server" onclick="gx_SubmitKeyInPos('day02_DAY3','[enter]');" />
                    <input class="calendar__number" id="day03_DAY4" runat="server" onclick="gx_SubmitKeyInPos('day03_DAY4','[enter]');" />
                    <input class="calendar__number" id="day04_DAY5" runat="server" onclick="gx_SubmitKeyInPos('day04_DAY5','[enter]');" />
                    <input class="calendar__number" id="day05_DAY6" runat="server" onclick="gx_SubmitKeyInPos('day05_DAY6','[enter]');" />
                    <input class="calendar__number sat" id="day06_DAY7" runat="server" onclick="gx_SubmitKeyInPos('day06_DAY7','[enter]');" />
                    <input class="calendar__number week no-color" id="week_WEEK2" runat="server" onclick="gx_SubmitKeyInPos('week_WEEK2,'[enter]');" />
                    <input class="calendar__number" id="day10_DAY1" runat="server" onclick="gx_SubmitKeyInPos('day10_DAY1','[enter]');" />
                    <input class="calendar__number" id="day11_DAY2" runat="server" onclick="gx_SubmitKeyInPos('day11_DAY2','[enter]');" />
                    <input class="calendar__number" id="day12_DAY3" runat="server" onclick="gx_SubmitKeyInPos('day12_DAY3','[enter]');" />
                    <input class="calendar__number" id="day13_DAY4" runat="server" onclick="gx_SubmitKeyInPos('day13_DAY4','[enter]');" />
                    <input class="calendar__number" id="day14_DAY5" runat="server" onclick="gx_SubmitKeyInPos('day14_DAY5','[enter]');" />
                    <input class="calendar__number" id="day15_DAY6" runat="server" onclick="gx_SubmitKeyInPos('day15_DAY6','[enter]');" />
                    <input class="calendar__number sat" id="day16_DAY7" runat="server" onclick="gx_SubmitKeyInPos('day16_DAY7','[enter]');" />
                    <input class="calendar__number week no-color" id="week_WEEK3" runat="server" onclick="gx_SubmitKeyInPos('week_WEEK3','[enter]');" />
                    <input class="calendar__number" id="day20_DAY1" runat="server" onclick="gx_SubmitKeyInPos('day20_DAY1','[enter]');" />
                    <input class="calendar__number" id="day21_DAY2" runat="server" onclick="gx_SubmitKeyInPos('day21_DAY2','[enter]');" />
                    <input class="calendar__number" id="day22_DAY3" runat="server" onclick="gx_SubmitKeyInPos('day22_DAY3','[enter]');" />
                    <input class="calendar__number" id="day23_DAY4" runat="server" onclick="gx_SubmitKeyInPos('day23_DAY4','[enter]');" />
                    <input class="calendar__number" id="day24_DAY5" runat="server" onclick="gx_SubmitKeyInPos('day24_DAY5','[enter]');" />
                    <input class="calendar__number" id="day25_DAY6" runat="server" onclick="gx_SubmitKeyInPos('day25_DAY6','[enter]');" />
                    <input class="calendar__number sat" id="day26_DAY7" runat="server" onclick="gx_SubmitKeyInPos('day26_DAY7','[enter]');" />
                    <input class="calendar__number week no-color" id="week_WEEK4" runat="server" onclick="gx_SubmitKeyInPos('week_WEEK4,'[enter]');" />
                    <input class="calendar__number" id="day30_DAY1" runat="server" onclick="gx_SubmitKeyInPos('day30_DAY1','[enter]');" />
                    <input class="calendar__number" id="day31_DAY2" runat="server" onclick="gx_SubmitKeyInPos('day31_DAY2','[enter]');" />
                    <input class="calendar__number" id="day32_DAY3" runat="server" onclick="gx_SubmitKeyInPos('day32_DAY3','[enter]');" />
                    <input class="calendar__number" id="day33_DAY4" runat="server" onclick="gx_SubmitKeyInPos('day33_DAY4','[enter]');" />
                    <input class="calendar__number" id="day34_DAY5" runat="server" onclick="gx_SubmitKeyInPos('day34_DAY5','[enter]');" />
                    <input class="calendar__number" id="day35_DAY6" runat="server" onclick="gx_SubmitKeyInPos('day35_DAY6','[enter]');" />
                    <input class="calendar__number sat" id="day36_DAY7" runat="server" onclick="gx_SubmitKeyInPos('day36_DAY7,'[enter]');" />
                    <input class="calendar__number week no-color" id="week_WEEK5" runat="server" onclick="gx_SubmitKeyInPos('week_WEEK5,'[enter]');" />
                    <input class="calendar__number" id="day40_DAY1" runat="server" onclick="gx_SubmitKeyInPos('day40_DAY1','[enter]');" />
                    <input class="calendar__number" id="day41_DAY2" runat="server" onclick="gx_SubmitKeyInPos('day41_DAY2','[enter]');" />
                    <input class="calendar__number" id="day42_DAY3" runat="server" onclick="gx_SubmitKeyInPos('day42_DAY3','[enter]');" />
                    <input class="calendar__number" id="day43_DAY4" runat="server" onclick="gx_SubmitKeyInPos('day43_DAY4','[enter]');" />
                    <input class="calendar__number" id="day44_DAY5" runat="server" onclick="gx_SubmitKeyInPos('day44_DAY5','[enter]');" />
                    <input class="calendar__number" id="day45_DAY6" runat="server" onclick="gx_SubmitKeyInPos('day45_DAY6','[enter]');" />
                    <input class="calendar__number sat" id="day46_DAY7" runat="server" onclick="gx_SubmitKeyInPos('day46_DAY7,'[enter]');" />
                    <input class="calendar__number week no-color" id="week_WEEK6" runat="server" onclick="gx_SubmitKeyInPos('week_WEEK6','[enter]');" />
                    <input class="calendar__number" id="day50_DAY1" runat="server" onclick="gx_SubmitKeyInPos('day50_DAY1','[enter]');" />
                    <input class="calendar__number" id="day51_DAY2" runat="server" onclick="gx_SubmitKeyInPos('day51_DAY2','[enter]');" />
                    <%--     <input class="calendar__number" id="day52_DAY3" runat="server" onclick="gx_SubmitKeyInPos('day52_DAY3','[enter]');" />
                    <input class="calendar__number" id="day53_DAY4" runat="server" onclick="gx_SubmitKeyInPos('day53_DAY4','[enter]');" />
                    <input class="calendar__number" id="day54_DAY5" runat="server" onclick="gx_SubmitKeyInPos('day54_DAY5','[enter]');" />
                    <input class="calendar__number" id="day55_DAY6" runat="server" onclick="gx_SubmitKeyInPos('day55_DAY6','[enter]');" />
                    <input class="calendar__number sat" id="day56_DAY7" runat="server" onclick="gx_SubmitKeyInPos('day56_DAY7','[enter]');" />--%>
                </div>
            </div>
            <div class="modal-bottom">
                <button type="button" class="btn btn-primary btn-galweb big-button" onclick="gx_SubmitKey('[pf5]');">Today</button>
            </div>
            <div class="nav left-arrow" onclick="gx_SubmitKey('[pageup]');">
                <img src="../../../../images/arrow-down.svg" />
            </div>
            <div class="legend-div legend-modal">
                <legend-block text="Today" color="red"></legend-block>
                <legend-block text="Holiday" color="yellow"></legend-block>
                <legend-block text="Holiday + Work Day" color="green"></legend-block>
            </div>
            <div class="nav right-arrow" onclick="gx_SubmitKey('[pagedn]');">
                <img src="../../../../images/arrow-down.svg" />
            </div>
        </div>
    </div>
    <input id="hiddenField" runat="server" style="display: none;" />
    <style>
        .main-area-form-modal {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            border-radius: 10px;
            position: relative;
        }

        .line {
            width: 100%;
            margin: 5px;
            text-align: left;
            display: block;
            padding: 0px;
            border-bottom: 0.5px solid #d0d4e4;
        }

        .modal-content {
            margin: auto 30px 30px auto;
        }

        .nav {
            display: flex;
            justify-content: center;
            align-content: center;
            position: absolute;
            padding: 5px 10px 5px 10px;
            border-radius: 10px;
            top: 20px;
        }

            .nav img {
                height: 12px
            }

            .nav:hover {
                background-color: #dfdcdca1;
                cursor: pointer;
            }

            .nav.left-arrow {
                transform: rotate(90deg);
                left: 20px;
            }

            .nav.right-arrow {
                right: 20px;
                transform: rotate(-90deg);
            }

        .legend-square-hover {
            bottom: 2px !important;
            left: 0px !important;
        }

        .calendar {
            position: relative;
            width: 450px;
            box-sizing: border-box;
            border-radius: 8px;
            overflow: hidden;
        }

        .calendar__date {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(46px, 1fr));
            grid-gap: 5px;
            box-sizing: border-box;
        }

        .calendar__day {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 25px;
            font-weight: 600;
            text-decoration: underline
        }

        .calendar__number {
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 400;
            text-align: center;
        }

        .sat {
            color: #ec5dff;
        }

        .week {
            color: #ff685d;
            border-radius: 0;
        }

        .seperator {
            position: absolute;
            top: 120px;
            left: 60px;
            width: 1px;
            height: 210px;
            background-color: rgba(0, 0, 0, 0.082);
        }

        .calendar__number:hover {
            background-color: #009688 !important;
            color: #fff !important;
            font-weight: 700;
            cursor: pointer;
        }
    </style>
    <script>

        function pageOnLoad(gx_event) {
            deflectFocus();
            let calendarNumbers = document.querySelectorAll('.calendar__number');
            calendarNumbers.forEach((element) => {
                if (element.style.backgroundColor == 'rgb(255, 186, 237)') {
                    element.style.backgroundColor = '#95d6fb'
                }
                else if (element.style.backgroundColor == 'rgb(255, 172, 170)') {
                    element.style.backgroundColor = '#FF6E6A'
                }
            });
        }


        const calendarNumbers = document.querySelectorAll('.calendar__number');
        calendarNumbers.forEach((element) => {
            if (element.value == '') {
                element.style.backgroundColor = 'transparent';
                element.style.cursor = 'default';
                element.classList.remove('calendar__number');
            }
        });

    </script>
</asp:Content>
