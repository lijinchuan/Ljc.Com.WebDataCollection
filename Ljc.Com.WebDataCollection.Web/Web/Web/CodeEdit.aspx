<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CodeEdit.aspx.cs" Inherits="Ljc.Com.WebDataCollection.Web.CodeEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="eidit-container" id="vueArea">
    <div class="eidit-con-title clearfix">
        <div class="eidit-main">
            <ul class="result-list mod-result clearfix">
                <li class="add-li-col">
                    <a href="https://quant.jd.com/strategy/edit/101397" class="state">编辑策略</a>
                </li>
                <li>
                    <a href="https://quant.jd.com/run/history/101397" class="state state-end">回测历史</a>
                </li>
            </ul>
        </div>
        <div class="new-eidit clearfix">
            <a href="https://quant.jd.com/strategy/index" class="left-return"></a>
            <input type="text" id="strategyName" maxlength="35" class="eidit-text" value="新建策略2017-11-19 20:21:01">
        </div>
    </div>
    <div class="edit-container clearfix">
        <div id="j_leftCon" style="height: 100%" class="edit-container-leftbar edt-gai">
            <div class="edit-left-con clearfix">
                <div class="error-tishi" id="editMessage" style="display: none"></div>
                <div class="write-eidit">
                    <a href="javascript:void(0);" onclick="strategy.copyStrategy()" class="copy">克隆策略</a>
                        <a href="javascript:void(0);" onclick="strategy.save()" id="strategySaveBtn" data-disabled="false" class="preservation">保存</a>
                    <a href="javascript:void(0);" onclick="strategy.compile()" class="bianyi ad-bian">编译</a>
                    <div class="tool clearfix">
                        <div class="x-quan" id="x-quan"></div>
                        <div onclick="strategy.openSearch();" class="x-search"></div>
                        <a href="https://quant.jd.com/help#?text=7" target="_blank" class="xin"></a>
                        <div class="shezhi"></div>
                        <ul style="display: none" class="tool-list">
                            <li id="minFontSize" onclick="strategy.changeFontSize(12);">小号字体</li>
                            <li id="midFontSize" onclick="strategy.changeFontSize(14);" class="col-red">中号字体</li>
                            <li id="maxFontSize" onclick="strategy.changeFontSize(16);" class="add-bottom">大号字体</li>
                            <li id="xcodeTheme" onclick="strategy.changeTheme('xcode');" class="col-red">浅色背景</li>
                            <li id="monokaiTheme" onclick="strategy.changeTheme('monokai');" class="add-bottom">深色背景
                            </li>
                            <li id="defaultKey" onclick="strategy.changeKeyboard('default');" class="col-red">默认</li>
                            <li id="vimKey" onclick="strategy.changeKeyboard('vim');">Vim</li>
                            <li id="emacsKey" onclick="strategy.changeKeyboard('emacs');" class="add-bottom">Emacs</li>
                        </ul>
                    </div>
                </div>
            </div>
            <pre id="sourceCode" class="path-biao ace_editor ace-xcode" placeholder="请编写自己的策略" required="" style="font-size: 14px;"><textarea class="ace_text-input" wrap="off" autocorrect="off" autocapitalize="off" spellcheck="false" style="opacity: 0; height: 17px; width: 7.6975px; left: 183.857px; top: 646px;"></textarea><div class="ace_gutter"><div class="ace_layer ace_gutter-layer ace_folding-enabled" style="margin-top: 0px; height: 772px; width: 49px;"><div class="ace_gutter-cell " style="height: 17px;">1</div><div class="ace_gutter-cell " style="height: 17px;">2</div><div class="ace_gutter-cell " style="height: 17px;">3</div><div class="ace_gutter-cell " style="height: 17px;">4</div><div class="ace_gutter-cell " style="height: 17px;">5</div><div class="ace_gutter-cell " style="height: 17px;">6</div><div class="ace_gutter-cell " style="height: 17px;">7</div><div class="ace_gutter-cell " style="height: 17px;">8</div><div class="ace_gutter-cell " style="height: 17px;">9</div><div class="ace_gutter-cell " style="height: 17px;">10<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">11</div><div class="ace_gutter-cell " style="height: 17px;">12</div><div class="ace_gutter-cell " style="height: 17px;">13</div><div class="ace_gutter-cell " style="height: 17px;">14</div><div class="ace_gutter-cell " style="height: 17px;">15</div><div class="ace_gutter-cell " style="height: 17px;">16</div><div class="ace_gutter-cell " style="height: 17px;">17</div><div class="ace_gutter-cell " style="height: 17px;">18</div><div class="ace_gutter-cell " style="height: 17px;">19</div><div class="ace_gutter-cell " style="height: 17px;">20</div><div class="ace_gutter-cell " style="height: 17px;">21</div><div class="ace_gutter-cell " style="height: 17px;">22</div><div class="ace_gutter-cell " style="height: 17px;">23</div><div class="ace_gutter-cell " style="height: 17px;">24</div><div class="ace_gutter-cell " style="height: 17px;">25<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">26</div><div class="ace_gutter-cell " style="height: 17px;">27</div><div class="ace_gutter-cell " style="height: 17px;">28</div><div class="ace_gutter-cell " style="height: 17px;">29<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">30</div><div class="ace_gutter-cell " style="height: 17px;">31</div><div class="ace_gutter-cell " style="height: 17px;">32</div><div class="ace_gutter-cell " style="height: 17px;">33<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">34</div><div class="ace_gutter-cell " style="height: 17px;">35</div><div class="ace_gutter-cell " style="height: 17px;">36<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">37</div><div class="ace_gutter-cell " style="height: 17px;">38</div><div class="ace_gutter-cell " style="height: 17px;">39</div><div class="ace_gutter-cell " style="height: 17px;">40<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">41</div><div class="ace_gutter-cell " style="height: 17px;">42</div><div class="ace_gutter-cell " style="height: 17px;">43</div><div class="ace_gutter-cell " style="height: 17px;">44<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">45<span class="ace_fold-widget ace_start ace_open" style="height: 17px;"></span></div><div class="ace_gutter-cell " style="height: 17px;">46</div></div><div class="ace_gutter-active-line" style="top: 646px; height: 17px;"></div></div><div class="ace_scroller" style="left: 49px; right: 16px; bottom: 16px;"><div class="ace_content" style="margin-top: 0px; width: 1309px; height: 772px; margin-left: 0px;"><div class="ace_layer ace_print-margin-layer"><div class="ace_print-margin" style="left: 619.8px; visibility: hidden;"></div></div><div class="ace_layer ace_marker-layer"><div class="ace_active-line" style="height:17px;top:646px;left:0;right:0;"></div></div><div class="ace_layer ace_text-layer" style="padding: 0px 4px;"><div class="ace_line" style="height:17px"><span class="ace_keyword">import</span> <span class="ace_identifier">talib</span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">import</span> <span class="ace_identifier">numpy</span> <span class="ace_keyword">as</span> <span class="ace_identifier">np</span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">import</span> <span class="ace_identifier">math</span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">import</span> <span class="ace_identifier">pandas</span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">import</span> <span class="ace_identifier">time</span> </div><div class="ace_line" style="height:17px"><span class="ace_keyword">import</span> <span class="ace_identifier">datetime</span> </div><div class="ace_line" style="height:17px"><span class="ace_keyword">from</span> <span class="ace_identifier">functools</span> <span class="ace_keyword">import</span> <span class="ace_support ace_function">reduce</span> </div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"><span class="ace_comment">#init<span class="ace_cjk" style="width:15.395px">方</span><span class="ace_cjk" style="width:15.395px">法</span><span class="ace_cjk" style="width:15.395px">是</span><span class="ace_cjk" style="width:15.395px">您</span><span class="ace_cjk" style="width:15.395px">的</span><span class="ace_cjk" style="width:15.395px">初</span><span class="ace_cjk" style="width:15.395px">始</span><span class="ace_cjk" style="width:15.395px">化</span><span class="ace_cjk" style="width:15.395px">逻</span><span class="ace_cjk" style="width:15.395px">辑</span><span class="ace_cjk" style="width:15.395px">，</span>context<span class="ace_cjk" style="width:15.395px">对</span><span class="ace_cjk" style="width:15.395px">象</span><span class="ace_cjk" style="width:15.395px">可</span><span class="ace_cjk" style="width:15.395px">以</span><span class="ace_cjk" style="width:15.395px">在</span><span class="ace_cjk" style="width:15.395px">任</span><span class="ace_cjk" style="width:15.395px">何</span><span class="ace_cjk" style="width:15.395px">函</span><span class="ace_cjk" style="width:15.395px">数</span><span class="ace_cjk" style="width:15.395px">之</span><span class="ace_cjk" style="width:15.395px">间</span><span class="ace_cjk" style="width:15.395px">传</span><span class="ace_cjk" style="width:15.395px">递</span></span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">def</span> <span class="ace_identifier">init</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span><span class="ace_paren ace_rparen">)</span>: </div><div class="ace_line" style="height:17px">    <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">滑</span><span class="ace_cjk" style="width:15.395px">点</span><span class="ace_cjk" style="width:15.395px">默</span><span class="ace_cjk" style="width:15.395px">认</span><span class="ace_cjk" style="width:15.395px">值</span><span class="ace_cjk" style="width:15.395px">为</span>2‰</span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">context</span>.<span class="ace_identifier">set_slippage</span><span class="ace_paren ace_lparen">(</span><span class="ace_constant ace_numeric">0.002</span><span class="ace_paren ace_rparen">)</span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">交</span><span class="ace_cjk" style="width:15.395px">易</span><span class="ace_cjk" style="width:15.395px">费</span><span class="ace_cjk" style="width:15.395px">默</span><span class="ace_cjk" style="width:15.395px">认</span><span class="ace_cjk" style="width:15.395px">值</span><span class="ace_cjk" style="width:15.395px">为</span>0.25‰</span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">context</span>.<span class="ace_identifier">set_commission</span><span class="ace_paren ace_lparen">(</span><span class="ace_constant ace_numeric">0.00025</span><span class="ace_paren ace_rparen">)</span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">基</span><span class="ace_cjk" style="width:15.395px">准</span><span class="ace_cjk" style="width:15.395px">默</span><span class="ace_cjk" style="width:15.395px">认</span><span class="ace_cjk" style="width:15.395px">为</span><span class="ace_cjk" style="width:15.395px">沪</span><span class="ace_cjk" style="width:15.395px">深</span>300</span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">context</span>.<span class="ace_identifier">set_benchmark</span><span class="ace_paren ace_lparen">(</span><span class="ace_string">"000300.SH"</span><span class="ace_paren ace_rparen">)</span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">调</span><span class="ace_cjk" style="width:15.395px">仓</span><span class="ace_cjk" style="width:15.395px">周</span><span class="ace_cjk" style="width:15.395px">期</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">task</span>.<span class="ace_identifier">weekly</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">option_stock</span>, <span class="ace_identifier">weekday</span><span class="ace_keyword ace_operator">=</span><span class="ace_constant ace_numeric">2</span>, <span class="ace_identifier">time_rule</span><span class="ace_keyword ace_operator">=</span><span class="ace_identifier">market_open</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">minute</span><span class="ace_keyword ace_operator">=</span><span class="ace_constant ace_numeric">5</span><span class="ace_paren ace_rparen">))</span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">下</span><span class="ace_cjk" style="width:15.395px">面</span><span class="ace_cjk" style="width:15.395px">为</span><span class="ace_cjk" style="width:15.395px">几</span><span class="ace_cjk" style="width:15.395px">个</span><span class="ace_cjk" style="width:15.395px">定</span><span class="ace_cjk" style="width:15.395px">时</span><span class="ace_cjk" style="width:15.395px">执</span><span class="ace_cjk" style="width:15.395px">行</span><span class="ace_cjk" style="width:15.395px">的</span><span class="ace_cjk" style="width:15.395px">策</span><span class="ace_cjk" style="width:15.395px">略</span><span class="ace_cjk" style="width:15.395px">代</span><span class="ace_cjk" style="width:15.395px">码</span><span class="ace_cjk" style="width:15.395px">，</span><span class="ace_cjk" style="width:15.395px">可</span><span class="ace_cjk" style="width:15.395px">放</span><span class="ace_cjk" style="width:15.395px">开</span><span class="ace_cjk" style="width:15.395px">注</span><span class="ace_cjk" style="width:15.395px">释</span><span class="ace_cjk" style="width:15.395px">替</span><span class="ace_cjk" style="width:15.395px">换</span><span class="ace_cjk" style="width:15.395px">上</span><span class="ace_cjk" style="width:15.395px">面</span><span class="ace_cjk" style="width:15.395px">的</span><span class="ace_cjk" style="width:15.395px">执</span><span class="ace_cjk" style="width:15.395px">行</span><span class="ace_cjk" style="width:15.395px">时</span><span class="ace_cjk" style="width:15.395px">间</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#task.daily(option_stock, time_rule=market_close(minute=5))  #<span class="ace_cjk" style="width:15.395px">每</span><span class="ace_cjk" style="width:15.395px">天</span><span class="ace_cjk" style="width:15.395px">收</span><span class="ace_cjk" style="width:15.395px">盘</span><span class="ace_cjk" style="width:15.395px">前</span>5<span class="ace_cjk" style="width:15.395px">分</span><span class="ace_cjk" style="width:15.395px">钟</span><span class="ace_cjk" style="width:15.395px">运</span><span class="ace_cjk" style="width:15.395px">行</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#task.weekly(option_stock, weekday=2, time_rule=market_open(minute=5))  #<span class="ace_cjk" style="width:15.395px">每</span><span class="ace_cjk" style="width:15.395px">周</span><span class="ace_cjk" style="width:15.395px">周</span><span class="ace_cjk" style="width:15.395px">二</span><span class="ace_cjk" style="width:15.395px">开</span><span class="ace_cjk" style="width:15.395px">盘</span><span class="ace_cjk" style="width:15.395px">后</span>5<span class="ace_cjk" style="width:15.395px">分</span><span class="ace_cjk" style="width:15.395px">钟</span><span class="ace_cjk" style="width:15.395px">运</span><span class="ace_cjk" style="width:15.395px">行</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_comment">#task.monthly(option_stock, tradingday=1 ,time_rule=market_open(minute=5))  #<span class="ace_cjk" style="width:15.395px">每</span><span class="ace_cjk" style="width:15.395px">月</span><span class="ace_cjk" style="width:15.395px">第</span>1<span class="ace_cjk" style="width:15.395px">个</span><span class="ace_cjk" style="width:15.395px">交</span><span class="ace_cjk" style="width:15.395px">易</span><span class="ace_cjk" style="width:15.395px">日</span><span class="ace_cjk" style="width:15.395px">开</span><span class="ace_cjk" style="width:15.395px">盘</span><span class="ace_cjk" style="width:15.395px">后</span>5<span class="ace_cjk" style="width:15.395px">分</span><span class="ace_cjk" style="width:15.395px">运</span><span class="ace_cjk" style="width:15.395px">行</span></span></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"><span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">每</span><span class="ace_cjk" style="width:15.395px">天</span><span class="ace_cjk" style="width:15.395px">开</span><span class="ace_cjk" style="width:15.395px">盘</span><span class="ace_cjk" style="width:15.395px">前</span><span class="ace_cjk" style="width:15.395px">进</span><span class="ace_cjk" style="width:15.395px">行</span><span class="ace_cjk" style="width:15.395px">选</span><span class="ace_cjk" style="width:15.395px">股</span>    </span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">def</span> <span class="ace_identifier">before_trade</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span><span class="ace_paren ace_rparen">)</span>:</div><div class="ace_line" style="height:17px">    <span class="ace_identifier">context</span>.<span class="ace_identifier">stock_list</span> <span class="ace_keyword ace_operator">=</span> <span class="ace_identifier">choose_stock_finance</span><span class="ace_paren ace_lparen">(</span><span class="ace_paren ace_rparen">)</span></div><div class="ace_line" style="height:17px">    </div><div class="ace_line" style="height:17px"><span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">日</span><span class="ace_cjk" style="width:15.395px">或</span><span class="ace_cjk" style="width:15.395px">分</span><span class="ace_cjk" style="width:15.395px">钟</span><span class="ace_cjk" style="width:15.395px">或</span><span class="ace_cjk" style="width:15.395px">实</span><span class="ace_cjk" style="width:15.395px">时</span><span class="ace_cjk" style="width:15.395px">数</span><span class="ace_cjk" style="width:15.395px">据</span><span class="ace_cjk" style="width:15.395px">更</span><span class="ace_cjk" style="width:15.395px">新</span><span class="ace_cjk" style="width:15.395px">，</span><span class="ace_cjk" style="width:15.395px">将</span><span class="ace_cjk" style="width:15.395px">会</span><span class="ace_cjk" style="width:15.395px">调</span><span class="ace_cjk" style="width:15.395px">用</span><span class="ace_cjk" style="width:15.395px">这</span><span class="ace_cjk" style="width:15.395px">个</span><span class="ace_cjk" style="width:15.395px">函</span><span class="ace_cjk" style="width:15.395px">数</span></span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">def</span> <span class="ace_identifier">handle_data</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span>,<span class="ace_identifier">data_dict</span><span class="ace_paren ace_rparen">)</span>:</div><div class="ace_line" style="height:17px">    <span class="ace_keyword">pass</span></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"><span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">操</span><span class="ace_cjk" style="width:15.395px">作</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span></span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">def</span> <span class="ace_identifier">option_stock</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span>,<span class="ace_identifier">data_dict</span><span class="ace_paren ace_rparen">)</span>:</div><div class="ace_line" style="height:17px">    <span class="ace_identifier">stock_list</span> <span class="ace_keyword ace_operator">=</span> <span class="ace_identifier">context</span>.<span class="ace_identifier">stock_list</span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">sell_stock</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span>,<span class="ace_identifier">stock_list</span>,<span class="ace_identifier">data_dict</span><span class="ace_paren ace_rparen">)</span>  <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">先</span><span class="ace_cjk" style="width:15.395px">卖</span><span class="ace_cjk" style="width:15.395px">出</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span><span class="ace_cjk" style="width:15.395px">再</span><span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_keyword">for</span> <span class="ace_identifier">stock</span> <span class="ace_keyword">in</span> <span class="ace_identifier">stock_list</span>:</div><div class="ace_line" style="height:17px"><span class="ace_indent-guide">    </span><span class="ace_indent-guide">    </span> <span class="ace_identifier">buy_stock</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span>,<span class="ace_identifier">stock</span><span class="ace_paren ace_rparen">)</span>  <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span></span></div><div class="ace_line" style="height:17px"></div><div class="ace_line" style="height:17px"><span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">策</span><span class="ace_cjk" style="width:15.395px">略</span><span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span><span class="ace_cjk" style="width:15.395px">信</span><span class="ace_cjk" style="width:15.395px">号</span><span class="ace_cjk" style="width:15.395px">函</span><span class="ace_cjk" style="width:15.395px">数</span></span></div><div class="ace_line" style="height:17px"><span class="ace_keyword">def</span> <span class="ace_identifier">buy_stock</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span>, <span class="ace_identifier">stock</span><span class="ace_paren ace_rparen">)</span>:</div><div class="ace_line" style="height:17px">    <span class="ace_identifier">context</span>.<span class="ace_identifier">percentage</span> <span class="ace_keyword ace_operator">=</span> <span class="ace_constant ace_numeric">1</span>  <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">设</span><span class="ace_cjk" style="width:15.395px">置</span><span class="ace_cjk" style="width:15.395px">单</span><span class="ace_cjk" style="width:15.395px">支</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span><span class="ace_cjk" style="width:15.395px">最</span><span class="ace_cjk" style="width:15.395px">大</span><span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span><span class="ace_cjk" style="width:15.395px">仓</span><span class="ace_cjk" style="width:15.395px">位</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">stock_buy_num</span> <span class="ace_keyword ace_operator">=</span> <span class="ace_constant ace_numeric">10</span> <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">最</span><span class="ace_cjk" style="width:15.395px">多</span><span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span><span class="ace_cjk" style="width:15.395px">数</span><span class="ace_cjk" style="width:15.395px">量</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_identifier">stock_percentage</span> <span class="ace_keyword ace_operator">=</span> <span class="ace_constant ace_numeric">0.99</span><span class="ace_keyword ace_operator">/</span><span class="ace_identifier">stock_buy_num</span>  <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">每</span><span class="ace_cjk" style="width:15.395px">支</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span><span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span><span class="ace_cjk" style="width:15.395px">的</span><span class="ace_cjk" style="width:15.395px">最</span><span class="ace_cjk" style="width:15.395px">大</span><span class="ace_cjk" style="width:15.395px">仓</span><span class="ace_cjk" style="width:15.395px">位</span></span></div><div class="ace_line" style="height:17px">    <span class="ace_keyword">if</span> <span class="ace_support ace_function">len</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">context</span>.<span class="ace_identifier">portfolio</span>.<span class="ace_identifier">positions</span><span class="ace_paren ace_rparen">)</span> <span class="ace_keyword ace_operator">&lt;</span> <span class="ace_identifier">stock_buy_num</span>:</div><div class="ace_line" style="height:17px"><span class="ace_indent-guide">    </span>   <span class="ace_keyword">if</span> <span class="ace_identifier">stock_percentage</span> <span class="ace_keyword ace_operator">&gt;</span> <span class="ace_identifier">context</span>.<span class="ace_identifier">percentage</span>:  <span class="ace_comment">#<span class="ace_cjk" style="width:15.395px">设</span><span class="ace_cjk" style="width:15.395px">置</span><span class="ace_cjk" style="width:15.395px">单</span><span class="ace_cjk" style="width:15.395px">支</span><span class="ace_cjk" style="width:15.395px">股</span><span class="ace_cjk" style="width:15.395px">票</span><span class="ace_cjk" style="width:15.395px">最</span><span class="ace_cjk" style="width:15.395px">大</span><span class="ace_cjk" style="width:15.395px">买</span><span class="ace_cjk" style="width:15.395px">入</span><span class="ace_cjk" style="width:15.395px">仓</span><span class="ace_cjk" style="width:15.395px">位</span></span></div></div><div class="ace_layer ace_marker-layer"></div><div class="ace_layer ace_cursor-layer ace_hidden-cursors"><div class="ace_cursor" style="left: 134.857px; top: 646px; width: 7.6975px; height: 17px;"></div></div></div></div><div class="ace_scrollbar ace_scrollbar-v" style="width: 21px; bottom: 16px;"><div class="ace_scrollbar-inner" style="width: 21px; height: 1292px;"></div></div><div class="ace_scrollbar ace_scrollbar-h" style="height: 21px; left: 49px; right: 16px;"><div class="ace_scrollbar-inner" style="height: 21px; width: 12871px;"></div></div><div style="height: auto; width: auto; top: 0px; left: 0px; visibility: hidden; position: absolute; white-space: pre; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; overflow: hidden;"><div style="height: auto; width: auto; top: 0px; left: 0px; visibility: hidden; position: absolute; white-space: pre; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; overflow: visible;"></div><div style="height: auto; width: auto; top: 0px; left: 0px; visibility: hidden; position: absolute; white-space: pre; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; overflow: visible;">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</div></div></pre>
            <textarea id="sourceCode1" name="sourceCode" style="display: none">import talib
import numpy as np
import math
import pandas
import time 
import datetime 
from functools import reduce 

#init方法是您的初始化逻辑，context对象可以在任何函数之间传递
def init(context): 
    #滑点默认值为2‰
    context.set_slippage(0.002)
    #交易费默认值为0.25‰
    context.set_commission(0.00025)
    #基准默认为沪深300
    context.set_benchmark("000300.SH")
    #调仓周期
    task.weekly(option_stock, weekday=2, time_rule=market_open(minute=5))
    #下面为几个定时执行的策略代码，可放开注释替换上面的执行时间
    #task.daily(option_stock, time_rule=market_close(minute=5))  #每天收盘前5分钟运行
    #task.weekly(option_stock, weekday=2, time_rule=market_open(minute=5))  #每周周二开盘后5分钟运行
    #task.monthly(option_stock, tradingday=1 ,time_rule=market_open(minute=5))  #每月第1个交易日开盘后5分运行

#每天开盘前进行选股    
def before_trade(context):
    context.stock_list = choose_stock_finance()
    
#日或分钟或实时数据更新，将会调用这个函数
def handle_data(context,data_dict):
    pass

#操作股票
def option_stock(context,data_dict):
    stock_list = context.stock_list
    sell_stock(context,stock_list,data_dict)  #先卖出股票再买入
    for stock in stock_list:
         buy_stock(context,stock)  #买入股票

#策略买入信号函数
def buy_stock(context, stock):
    context.percentage = 1  #设置单支股票最大买入仓位
    stock_buy_num = 10 #最多买入股票数量
    stock_percentage = 0.99/stock_buy_num  #每支股票买入的最大仓位
    if len(context.portfolio.positions) &lt; stock_buy_num:
       if stock_percentage &gt; context.percentage:  #设置单支股票最大买入仓位
          stock_percentage = context.percentage   #更换买入仓位
       order_percent(stock, stock_percentage)     #买入股票

#策略卖出信号函数
def sell_stock(context,stock_list,data_dict):
    for stock in list(context.portfolio.positions.keys()):
        if not (stock in stock_list):
           order_target_value(stock,0)  #如果不在股票列表中则全部卖出

#选股函数
def choose_stock_finance():
    dataframe = get_fundamentals(
     query(
         fundamentals.equity_valuation_indicator.pe_ratio_ttm, fundamentals.equity_valuation_indicator.pe_ratio_nobtest, fundamentals.equity_valuation_indicator.pe_ratio
     ).filter(
         fundamentals.equity_valuation_indicator.pe_ratio_ttm &gt; 10
     ).filter(
         fundamentals.equity_valuation_indicator.pe_ratio_ttm &lt; 100
     ).filter(
         fundamentals.equity_valuation_indicator.pe_ratio_nobtest &gt; 10
     ).filter(
         fundamentals.equity_valuation_indicator.pe_ratio_nobtest &lt; 100
     ).filter(
         fundamentals.equity_valuation_indicator.pe_ratio &gt; 10
     ).filter(
         fundamentals.equity_valuation_indicator.pe_ratio &lt; 100
     )
    )
    stock_list = dataframe.columns.values
    return stock_list
    
</textarea>
            <div id="j_sidebar" class="edit-left-sidebar"></div>
            <div class="state-wrap4" style="">
                <div class="state4"></div>
                <div class="state4-close"></div>
            </div>
            <p class="status-bar ui-draggable" draggable="true" data-enter="快捷键 ctrl + i / cmd + i 开启股票代码搜索功能" data-close="按 'esc' or 'return' 退出搜索模式" style="right: 25px; bottom: 35px;">快捷键 ctrl + i / cmd + i
                开启股票代码搜索功能</p>
        </div>
        <div style="height: 100%" class="edit-container-rightbar">
            <div class="edit-right-con clearfix">
                <div class="edi-wraps">
                <input id="startDate" name="startDate" class="date" style="font-size: 14px; width: 85px;" readonly="readOnly" type="text" value="2015-01-01">
                <span class="text">至</span>
                <input id="endDate" name="endDate" readonly="readOnly" class="zhi-dates" style="width: 85px;" type="text" value="2016-01-01">
                <div class="dollar" style="width: 100px;">
                    <span class="do-icon">￥</span>
                    <input name="principal" id="principal" type="number" step="1000" class="jine" style="height: 25px; width: 75px; top: -1px;" value="1000000.0000" maxlength="6">
                </div>
                <div class="second">
                    <span id="regressionType" name="regressionType" class="sec-text" data-value="day"> 每天 </span>
                    <ul style="display: none;" class="date-list">
                                                    <li data-value="minute" style="width: 76px;" onclick="strategy.selectRegressionType(this);">每分</li>
                                                    <li data-value="day" style="width: 76px;" onclick="strategy.selectRegressionType(this);">每天</li>
                                            </ul>
                </div>
                <input type="hidden" name="userPin" value="zg66888" id="userPin">
                <input type="hidden" name="strategyId" value="101397" id="strategyId">
                <input type="hidden" name="languageType" value="python" id="languageType">
                <input type="hidden" name="requestTime" value="" id="requestTime">
                <input type="hidden" name="simulationStatus" value="0" id="simulationStatus">
                <a href="javascript:void(0);" onclick="strategy.backTest()" class="renturn-back">运行回测</a>
                <div class="b-jin">
                    <span class="b-jin-text">编译中...</span>
                    <span class="b-du">
                        <span id="compileBar" class="b-j-du" style="width:0%"></span>
                    </span>
                    <span id="compileValue" class="num-bi">0%</span>
                    <a href="javascript:void(0);" onclick="strategy.cancelTest()" class="close-bian">取消编译</a>
                </div>
                </div>
            </div>
            <div class="bianji-con">
                <ul class="bili-list clearfix">
                    <li class="clearfix">
                        <p id="hcsy" class="bili-text">--</p>
                        <div class="bl-du">
                            <span>回测收益</span>
                        </div>
                    </li>
                    <li class="clearfix">
                        <p id="hcnhsy" class="bili-text">--</p>
                        <div class="bl-du">
                            <span>回测年化收益</span>
                        </div>
                    </li>
                    <li class="clearfix">
                        <p id="jzsy" class="bili-text">--</p>
                        <div class="bl-du">
                            <span>基准收益</span>
                        </div>
                    </li>
                    <li class="clearfix">
                        <p id="alpha" class="bili-text">--</p>
                        <div class="bl-du">
                            <span>Alpha</span>
                        </div>
                        <!--   <p class="bili-text">回测年化收益</p>
                           <div class="bl-du">
                               <span class="bl-num">63285%</span>
                               &lt;!&ndash;    <span class="jdu">
                                       <span class="go-jin" style="width:20%"></span>
                                   </span>&ndash;&gt;
                           </div>-->
                    </li>
                    <li class="clearfix">
                        <p id="sharpe" class="bili-text">--</p>
                        <div class="bl-du">
                            <span>Sharpe</span>
                        </div>
                    </li>
                    <li class="clearfix">
                        <p id="zdhc" class="bili-text">--</p>
                        <div class="bl-du">
                            <span>最大回撤</span>
                        </div>
                    </li>
                </ul>
                <div style="width: 100%; height: 280px" id="backTestChart">
                    <h2 style="height: 185px; line-height:185px; font-size: 20px; text-align: center;">请编译您的策略</h2>
                </div>
            </div>
            <div class="journal">
                <ul class="journal-list clearfix">
                    <li id="logTab" class=" add-border-li ">日志</li>
                    <li id="errorTab" class="">运行时错误</li>
                </ul>
                <div class="jour-down"></div>
                <div class="journal-detal">
                    <div id="logarea" style="overflow: auto" class="change-box  chang-show ">
                    </div>
                    <div id="errorarea" style="height: 370px" class="change-box ">
                                            </div>
                </div>
            </div>
            
            

        </div>
    </div>
</div>
    </div>
    </form>
</body>
</html>
