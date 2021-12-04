<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
        <title>Admin</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', { 'packages': ['corechart'] });
            google.charts.setOnLoadCallback(drawVisualization);

            function drawVisualization() {
                var data = google.visualization.arrayToDataTable([
                    ['연령별', '남자', '여자'],
                    ['10대', 14, 12],
                    ['20대', 12, 10],
                    ['30대', 10, 8],
                    ['40대', 8, 6],
                    ['50대', 6, 4]
                ]);
                var options = {
                    title: '연령별 성별 통계',
                    vAxis: { title: '합계' },
                    hAxis: { title: '연령별' },
                    seriesType: 'bars',
                    series: { 5: { type: 'line' } }
                };

                var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
                chart.draw(data, options);
            }
        </script>
        <script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/loader.js"></script>
        <link id="load-css-0" rel="stylesheet" type="text/css"
            href="https://www.gstatic.com/charts/51/css/core/tooltip.css">
        <link id="load-css-1" rel="stylesheet" type="text/css"
            href="https://www.gstatic.com/charts/51/css/util/util.css">
        <script type="text/javascript" charset="UTF-8"
            src="https://www.gstatic.com/charts/51/js/jsapi_compiled_default_module.js"></script>
        <script type="text/javascript" charset="UTF-8"
            src="https://www.gstatic.com/charts/51/js/jsapi_compiled_graphics_module.js"></script>
        <script type="text/javascript" charset="UTF-8"
            src="https://www.gstatic.com/charts/51/js/jsapi_compiled_ui_module.js"></script>
        <script type="text/javascript" charset="UTF-8"
            src="https://www.gstatic.com/charts/51/js/jsapi_compiled_corechart_module.js"></script>
    </head>

    <body>
        <div id="chart_div" style="width:900px; height: 500px;">
            <div style="position: relative;">
                <div dir="ltr" style="position: relative; width: 900px; height: 500px;">
                    <div aria-label="A chart."
                        style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="900"
                            height="500" aria-label="A chart." style="overflow: hidden;">
                            <defs id="_ABSTRACT_RENDERER_ID_0">
                                <clipPath id="_ABSTRACT_RENDERER_ID_1">
                                    <rect x="161" y="96" width="579" height="309"></rect>
                                </clipPath>
                                <filter id="_ABSTRACT_RENDERER_ID_2">
                                    <feGaussianBlur in="SourceAlpha" stdDeviation="2"></feGaussianBlur>
                                    <feOffset dx="1" dy="1"></feOffset>
                                    <feComponentTransfer>
                                        <feFuncA type="linear" slope="0.1"></feFuncA>
                                    </feComponentTransfer>
                                    <feMerge>
                                        <feMergeNode></feMergeNode>
                                        <feMergeNode in="SourceGraphic"></feMergeNode>
                                    </feMerge>
                                </filter>
                            </defs>
                            <rect x="0" y="0" width="900" height="500" stroke="none" stroke-width="0" fill="#ffffff">
                            </rect>
                            <g><text text-anchor="start" x="161" y="70.9" font-family="Arial" font-size="14"
                                    font-weight="bold" stroke="none" stroke-width="0" fill="#000000">연령별 성별 통계</text>
                                <rect x="161" y="59" width="579" height="14" stroke="none" stroke-width="0"
                                    fill-opacity="0" fill="#ffffff"></rect>
                            </g>
                            <g>
                                <rect x="754" y="96" width="132" height="147" stroke="none" stroke-width="0"
                                    fill-opacity="0" fill="#ffffff"></rect>
                                <g>
                                    <rect x="754" y="96" width="132" height="14" stroke="none" stroke-width="0"
                                        fill-opacity="0" fill="#ffffff"></rect>
                                    <g><text text-anchor="start" x="787" y="107.9" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#222222">남자</text></g>
                                    <rect x="754" y="96" width="28" height="14" stroke="none" stroke-width="0"
                                        fill="#3366cc"></rect>
                                </g>
                                <g>
                                    <rect x="754" y="119" width="132" height="14" stroke="none" stroke-width="0"
                                        fill-opacity="0" fill="#ffffff"></rect>
                                    <g><text text-anchor="start" x="787" y="130.9" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#222222">여자</text></g>
                                    <rect x="754" y="119" width="28" height="14" stroke="none" stroke-width="0"
                                        fill="#dc3912"></rect>
                                </g>
                            </g>
                            <g>
                                <rect x="161" y="96" width="579" height="309" stroke="none" stroke-width="0"
                                    fill-opacity="0" fill="#ffffff"></rect>
                                <g
                                    clip-path="url(file:///C:/Users/ldkko/Downloads/googleChart%20(1).html#_ABSTRACT_RENDERER_ID_1)">
                                    <g>
                                        <rect x="161" y="404" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="360" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="316" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="272" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="228" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="184" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="140" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="96" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#cccccc"></rect>
                                        <rect x="161" y="382" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                        <rect x="161" y="338" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                        <rect x="161" y="294" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                        <rect x="161" y="250" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                        <rect x="161" y="206" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                        <rect x="161" y="162" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                        <rect x="161" y="118" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#ebebeb"></rect>
                                    </g>
                                    <g>
                                        <rect x="184" y="369" width="13" height="35" stroke="none" stroke-width="0"
                                            fill="#3366cc"></rect>
                                        <rect x="299" y="375" width="14" height="29" stroke="none" stroke-width="0"
                                            fill="#3366cc"></rect>
                                        <rect x="415" y="370" width="13" height="34" stroke="none" stroke-width="0"
                                            fill="#3366cc"></rect>
                                        <rect x="530" y="374" width="14" height="30" stroke="none" stroke-width="0"
                                            fill="#3366cc"></rect>
                                        <rect x="646" y="375" width="13" height="29" stroke="none" stroke-width="0"
                                            fill="#3366cc"></rect>
                                        <rect x="198" y="199" width="14" height="205" stroke="none" stroke-width="0"
                                            fill="#dc3912"></rect>
                                        <rect x="314" y="159" width="13" height="245" stroke="none" stroke-width="0"
                                            fill="#dc3912"></rect>
                                        <rect x="429" y="148" width="14" height="256" stroke="none" stroke-width="0"
                                            fill="#dc3912"></rect>
                                        <rect x="545" y="161" width="13" height="243" stroke="none" stroke-width="0"
                                            fill="#dc3912"></rect>
                                        <rect x="660" y="253" width="14" height="151" stroke="none" stroke-width="0"
                                            fill="#dc3912"></rect>
                                        <rect x="213" y="290" width="13" height="114" stroke="none" stroke-width="0"
                                            fill="#ff9900"></rect>
                                        <rect x="328" y="273" width="14" height="131" stroke="none" stroke-width="0"
                                            fill="#ff9900"></rect>
                                        <rect x="444" y="276" width="13" height="128" stroke="none" stroke-width="0"
                                            fill="#ff9900"></rect>
                                        <rect x="559" y="270" width="14" height="134" stroke="none" stroke-width="0"
                                            fill="#ff9900"></rect>
                                        <rect x="675" y="267" width="13" height="137" stroke="none" stroke-width="0"
                                            fill="#ff9900"></rect>
                                        <rect x="227" y="185" width="14" height="219" stroke="none" stroke-width="0"
                                            fill="#109618"></rect>
                                        <rect x="343" y="126" width="13" height="278" stroke="none" stroke-width="0"
                                            fill="#109618"></rect>
                                        <rect x="458" y="227" width="14" height="177" stroke="none" stroke-width="0"
                                            fill="#109618"></rect>
                                        <rect x="574" y="192" width="13" height="212" stroke="none" stroke-width="0"
                                            fill="#109618"></rect>
                                        <rect x="689" y="179" width="14" height="225" stroke="none" stroke-width="0"
                                            fill="#109618"></rect>
                                        <rect x="242" y="306" width="13" height="98" stroke="none" stroke-width="0"
                                            fill="#990099"></rect>
                                        <rect x="357" y="342" width="14" height="62" stroke="none" stroke-width="0"
                                            fill="#990099"></rect>
                                        <rect x="473" y="318" width="13" height="86" stroke="none" stroke-width="0"
                                            fill="#990099"></rect>
                                        <rect x="588" y="358" width="14" height="46" stroke="none" stroke-width="0"
                                            fill="#990099"></rect>
                                        <rect x="704" y="324" width="13" height="80" stroke="none" stroke-width="0"
                                            fill="#990099"></rect>
                                    </g>
                                    <g>
                                        <rect x="161" y="404" width="579" height="1" stroke="none" stroke-width="0"
                                            fill="#333333"></rect>
                                    </g>
                                    <g>
                                        <path
                                            d="M219.3,269.288L334.9,254.46L450.5,267.44L566.0999999999999,270.432L681.6999999999999,279.188"
                                            stroke="#0099c6" stroke-width="2" fill-opacity="1" fill="none"></path>
                                    </g>
                                </g>
                                <g></g>
                                <g>
                                    <g><text text-anchor="middle" x="219.3" y="425.9" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#222222">10대</text></g>
                                    <g><text text-anchor="middle" x="334.9" y="425.9" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#222222">20대</text></g>
                                    <g><text text-anchor="middle" x="450.5" y="425.9" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#222222">30대</text></g>
                                    <g><text text-anchor="middle" x="566.0999999999999" y="425.9" font-family="Arial"
                                            font-size="14" stroke="none" stroke-width="0" fill="#222222">30대</text>
                                    </g>
                                    <g><text text-anchor="middle" x="681.6999999999999" y="425.9" font-family="Arial"
                                            font-size="14" stroke="none" stroke-width="0" fill="#222222">40대</text>
                                    </g>
                                    <g><text text-anchor="end" x="147" y="409.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">0</text></g>
                                    <g><text text-anchor="end" x="147" y="365.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">2</text></g>
                                    <g><text text-anchor="end" x="147" y="321.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">4</text></g>
                                    <g><text text-anchor="end" x="147" y="277.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">6</text></g>
                                    <g><text text-anchor="end" x="147" y="233.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">8</text></g>
                                    <g><text text-anchor="end" x="147" y="189.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">10</text></g>
                                    <g><text text-anchor="end" x="147" y="145.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">12</text></g>
                                    <g><text text-anchor="end" x="147" y="101.4" font-family="Arial" font-size="14"
                                            stroke="none" stroke-width="0" fill="#444444">14</text></g>
                                </g>
                            </g>
                            <g>
                                <g><text text-anchor="middle" x="450.5" y="468.9" font-family="Arial" font-size="14"
                                        font-style="italic" stroke="none" stroke-width="0" fill="#222222">연령별</text>
                                    <rect x="161" y="457" width="579" height="14" stroke="none" stroke-width="0"
                                        fill-opacity="0" fill="#ffffff"></rect>
                                </g>
                                <g><text text-anchor="middle" x="60.9" y="250.5" font-family="Arial" font-size="14"
                                        font-style="italic" transform="rotate(-90 60.9 250.5)" stroke="none"
                                        stroke-width="0" fill="#222222">합계</text>
                                    <path
                                        d="M48.99999999999999,405L49.00000000000001,96L63.00000000000001,96L62.99999999999999,405Z"
                                        stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path>
                                </g>
                            </g>
                            <g></g>
                        </svg>
                        <div aria-label="A tabular representation of the data in the chart."
                            style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;">
                            <table>
                                <thead>
                                    <tr>
                                        <th>연령별</th>
                                        <th>남자</th>
                                        <th>여자</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>10대</td>
                                        <td>14</td>
                                        <td>12</td>
                                    </tr>
                                    <tr>
                                        <td>20대</td>
                                        <td>12</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>30대</td>
                                        <td>10</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>40대</td>
                                        <td>8</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>50대</td>
                                        <td>6</td>
                                        <td>4</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div aria-hidden="true"
                    style="display: none; position: absolute; top: 510px; left: 910px; 
                    white-space: nowrap; font-family: Arial; 
                    font-size: 14px; font-weight: bold;">
                    366</div>
                <div></div>
            </div>
        </div>