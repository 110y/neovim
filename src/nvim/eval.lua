-- File containing table with all functions.
--
-- Keys:
--
-- args  Number of arguments, list with maximum and minimum number of arguments
--       or list with a minimum number of arguments only. Defaults to zero
--       arguments.
-- base  For methods: the argument to use as the base argument (1-indexed):
--       base->method()
--       Defaults to BASE_NONE (function cannot be used as a method).
-- func  Name of the C function which implements the VimL function. Defaults to
--       `f_{funcname}`.

local varargs = function(nr)
  return {nr}
end

-- Usable with the base key: use the last function argument as the method base.
-- Value is from funcs.h file. "BASE_" prefix is omitted.
-- local LAST = "BASE_LAST" (currently unused after port of v8.2.1168)

return {
  funcs={
    abs={args=1, base=1},
    acos={args=1, base=1, func="float_op_wrapper", data="&acos"},  -- WJMc
    add={args=2, base=1},
    ['and']={args=2, base=1},
    api_info={},
    append={args=2, base=2},
    appendbufline={args=3, base=3},
    argc={args={0, 1}},
    argidx={},
    arglistid={args={0, 2}},
    argv={args={0, 2}},
    asin={args=1, base=1, func="float_op_wrapper", data="&asin"},  -- WJMc
    assert_beeps={args=1, base=1},
    assert_equal={args={2, 3}, base=2},
    assert_equalfile={args={2, 3}, base=1},
    assert_exception={args={1, 2}},
    assert_fails={args={1, 3}, base=1},
    assert_false={args={1, 2}, base=1},
    assert_inrange={args={3, 4}, base=3},
    assert_match={args={2, 3}, base=2},
    assert_nobeep={args=1, base=1},
    assert_notequal={args={2, 3}, base=2},
    assert_notmatch={args={2, 3}, base=2},
    assert_report={args=1, base=1},
    assert_true={args={1, 2}, base=1},
    atan={args=1, base=1, func="float_op_wrapper", data="&atan"},
    atan2={args=2, base=1},
    browse={args=4},
    browsedir={args=2},
    bufadd={args=1, base=1},
    bufexists={args=1, base=1},
    buffer_exists={args=1, base=1, func='f_bufexists'},  -- obsolete
    buffer_name={args={0, 1}, base=1, func='f_bufname'},  -- obsolete
    buffer_number={args={0, 1}, base=1, func='f_bufnr'},  -- obsolete
    buflisted={args=1, base=1},
    bufload={args=1, base=1},
    bufloaded={args=1, base=1},
    bufname={args={0, 1}, base=1},
    bufnr={args={0, 2}, base=1},
    bufwinid={args=1, base=1},
    bufwinnr={args=1, base=1},
    byte2line={args=1, base=1},
    byteidx={args=2, base=1},
    byteidxcomp={args=2, base=1},
    call={args={2, 3}, base=1},
    ceil={args=1, base=1, func="float_op_wrapper", data="&ceil"},
    changenr={},
    chanclose={args={1, 2}},
    chansend={args=2},
    char2nr={args={1, 2}, base=1},
    charidx={args={2, 3}, base=1},
    chdir={args=1, base=1},
    cindent={args=1, base=1},
    clearmatches={args={0, 1}, base=1},
    col={args=1, base=1},
    complete={args=2, base=2},
    complete_add={args=1, base=1},
    complete_check={},
    complete_info={args={0, 1}, base=1},
    confirm={args={1, 4}, base=1},
    copy={args=1, base=1},
    cos={args=1, base=1, func="float_op_wrapper", data="&cos"},
    cosh={args=1, base=1, func="float_op_wrapper", data="&cosh"},
    count={args={2, 4}, base=1},
    cscope_connection={args={0, 3}},
    ctxget={args={0, 1}},
    ctxpop={},
    ctxpush={args={0, 1}},
    ctxset={args={1, 2}},
    ctxsize={},
    cursor={args={1, 3}, base=1},
    debugbreak={args={1, 1}, base=1},
    deepcopy={args={1, 2}, base=1},
    delete={args={1,2}, base=1},
    deletebufline={args={2,3}, base=1},
    dictwatcheradd={args=3},
    dictwatcherdel={args=3},
    did_filetype={},
    diff_filler={args=1, base=1},
    diff_hlID={args=2, base=1},
    empty={args=1, base=1},
    environ={},
    escape={args=2, base=1},
    eval={args=1, base=1},
    eventhandler={},
    executable={args=1, base=1},
    execute={args={1, 2}, base=1},
    exepath={args=1, base=1},
    exists={args=1, base=1},
    exp={args=1, base=1, func="float_op_wrapper", data="&exp"},
    expand={args={1, 3}, base=1},
    expandcmd={args=1, base=1},
    extend={args={2, 3}, base=1},
    feedkeys={args={1, 2}, base=1},
    file_readable={args=1, base=1, func='f_filereadable'},  -- obsolete
    filereadable={args=1, base=1},
    filewritable={args=1, base=1},
    filter={args=2, base=1},
    finddir={args={1, 3}, base=1},
    findfile={args={1, 3}, base=1},
    flatten={args={1, 2}, base=1},
    float2nr={args=1, base=1},
    floor={args=1, base=1, func="float_op_wrapper", data="&floor"},
    fmod={args=2, base=1},
    fnameescape={args=1, base=1},
    fnamemodify={args=2, base=1},
    foldclosed={args=1, base=1},
    foldclosedend={args=1, base=1},
    foldlevel={args=1, base=1},
    foldtext={},
    foldtextresult={args=1, base=1},
    foreground={},
    fullcommand={args=1, base=1},
    funcref={args={1, 3}, base=1},
    ['function']={args={1, 3}, base=1},
    garbagecollect={args={0, 1}},
    get={args={2, 3}, base=1},
    getbufinfo={args={0, 1}, base=1},
    getbufline={args={2, 3}, base=1},
    getbufvar={args={2, 3}, base=1},
    getchangelist={args={0, 1}, base=1},
    getchar={args={0, 1}},
    getcharmod={},
    getcharsearch={},
    getcharstr={args={0, 1}},
    getcmdline={},
    getcmdpos={},
    getcmdtype={},
    getcmdwintype={},
    getcompletion={args={2, 3}, base=1},
    getcurpos={},
    getcwd={args={0, 2}, base=1},
    getenv={args=1, base=1},
    getfontname={args={0, 1}},
    getfperm={args=1, base=1},
    getfsize={args=1, base=1},
    getftime={args=1, base=1},
    getftype={args=1, base=1},
    getjumplist={args={0, 2}, base=1},
    getline={args={1, 2}, base=1},
    getloclist={args={1, 2}},
    getmarklist={args={0, 1}, base=1},
    getmatches={args={0, 1}},
    getmousepos={},
    getpid={},
    getpos={args=1, base=1},
    getqflist={args={0, 1}},
    getreg={args={0, 3}, base=1},
    getreginfo={args={0, 1}, base=1},
    getregtype={args={0, 1}, base=1},
    gettabinfo={args={0, 1}, base=1},
    gettabvar={args={2, 3}, base=1},
    gettabwinvar={args={3, 4}, base=1},
    gettagstack={args={0, 1}, base=1},
    getwininfo={args={0, 1}, base=1},
    getwinpos={args={0, 1}, base=1},
    getwinposx={},
    getwinposy={},
    getwinvar={args={2, 3}, base=1},
    glob={args={1, 4}, base=1},
    glob2regpat={args=1, base=1},
    globpath={args={2, 5}, base=2},
    has={args=1},
    has_key={args=2, base=1},
    haslocaldir={args={0, 2}, base=1},
    hasmapto={args={1, 3}, base=1},
    highlightID={args=1, base=1, func='f_hlID'},  -- obsolete
    highlight_exists={args=1, base=1, func='f_hlexists'},  -- obsolete
    histadd={args=2, base=2},
    histdel={args={1, 2}, base=1},
    histget={args={1, 2}, base=1},
    histnr={args=1, base=1},
    hlID={args=1, base=1},
    hlexists={args=1, base=1},
    hostname={},
    iconv={args=3, base=1},
    indent={args=1, base=1},
    index={args={2, 4}, base=1},
    input={args={1, 3}, base=1},
    inputdialog={args={1, 3}, base=1},
    inputlist={args=1, base=1},
    inputrestore={},
    inputsave={},
    inputsecret={args={1, 2}, base=1},
    insert={args={2, 3}, base=1},
    interrupt={args=0},
    invert={args=1, base=1},
    isdirectory={args=1, base=1},
    isinf={args=1, base=1},
    islocked={args=1, base=1},
    isnan={args=1, base=1},
    id={args=1},
    items={args=1, base=1},
    jobclose={args={1, 2}, func="f_chanclose"},
    jobpid={args=1},
    jobresize={args=3},
    jobsend={args=2, func="f_chansend"},
    jobstart={args={1, 2}},
    jobstop={args=1},
    jobwait={args={1, 2}},
    join={args={1, 2}, base=1},
    json_decode={args=1, base=1},
    json_encode={args=1, base=1},
    keys={args=1, base=1},
    last_buffer_nr={},  -- obsolete
    len={args=1, base=1},
    libcall={args=3, base=3},
    libcallnr={args=3, base=3},
    line={args={1, 2}, base=1},
    line2byte={args=1, base=1},
    lispindent={args=1, base=1},
    list2str={args={1, 2}, base=1},
    localtime={},
    log={args=1, base=1, func="float_op_wrapper", data="&log"},
    log10={args=1, base=1, func="float_op_wrapper", data="&log10"},
    luaeval={args={1, 2}, base=1},
    map={args=2, base=1},
    maparg={args={1, 4}, base=1},
    mapcheck={args={1, 3}, base=1},
    match={args={2, 4}, base=1},
    matchadd={args={2, 5}, base=1},
    matchaddpos={args={2, 5}, base=1},
    matcharg={args=1, base=1},
    matchdelete={args={1, 2}, base=1},
    matchend={args={2, 4}, base=1},
    matchlist={args={2, 4}, base=1},
    matchstr={args={2, 4}, base=1},
    matchstrpos={args={2,4}, base=1},
    max={args=1, base=1},
    menu_get={args={1, 2}},
    min={args=1, base=1},
    mkdir={args={1, 3}, base=1},
    mode={args={0, 1}, base=1},
    msgpackdump={args={1, 2}},
    msgpackparse={args=1},
    nextnonblank={args=1, base=1},
    nr2char={args={1, 2}, base=1},
    ['or']={args=2, base=1},
    pathshorten={args=1, base=1},
    pow={args=2, base=1},
    prevnonblank={args=1, base=1},
    printf={args=varargs(1), base=2},
    prompt_getprompt={args=1, base=1},
    prompt_setcallback={args={2, 2}, base=1},
    prompt_setinterrupt={args={2, 2}, base=1},
    prompt_setprompt={args={2, 2}, base=1},
    pum_getpos={},
    pumvisible={},
    py3eval={args=1, base=1},
    pyeval={args=1, base=1, func="f_py3eval"},
    pyxeval={args=1, base=1, func="f_py3eval"},
    perleval={args=1, base=1},
    rand={args={0, 1}, base=1},
    range={args={1, 3}, base=1},
    readdir={args={1, 2}, base=1},
    readfile={args={1, 3}, base=1},
    reg_executing={},
    reg_recording={},
    reg_recorded={},
    reltime={args={0, 2}, base=1},
    reltimefloat={args=1, base=1},
    reltimestr={args=1, base=1},
    remove={args={2, 3}, base=1},
    rename={args=2, base=1},
    ['repeat']={args=2, base=1},
    resolve={args=1, base=1},
    reverse={args=1, base=1},
    round={args=1, base=1, func="float_op_wrapper", data="&round"},
    rpcnotify={args=varargs(2)},
    rpcrequest={args=varargs(2)},
    rpcstart={args={1, 2}},
    rpcstop={args=1},
    rubyeval={args=1, base=1},
    screenattr={args=2, base=1},
    screenchar={args=2, base=1},
    screenchars={args=2, base=1},
    screencol={},
    screenpos={args=3, base=1},
    screenrow={},
    screenstring={args=2, base=1},
    search={args={1, 4}, base=1},
    searchcount={args={0, 1}, base=1},
    searchdecl={args={1, 3}, base=1},
    searchpair={args={3, 7}},
    searchpairpos={args={3, 7}},
    searchpos={args={1, 4}, base=1},
    serverlist={},
    serverstart={args={0, 1}},
    serverstop={args=1},
    setbufline={args=3, base=3},
    setbufvar={args=3, base=3},
    setcharsearch={args=1, base=1},
    setcmdpos={args=1, base=1},
    setenv={args=2, base=2},
    setfperm={args=2, base=1},
    setline={args=2, base=2},
    setloclist={args={2, 4}, base=2},
    setmatches={args={1, 2}, base=1},
    setpos={args=2, base=2},
    setqflist={args={1, 3}, base=1},
    setreg={args={2, 3}, base=2},
    settabvar={args=3, base=3},
    settabwinvar={args=4, base=4},
    settagstack={args={2, 3}, base=2},
    setwinvar={args=3, base=3},
    sha256={args=1, base=1},
    shellescape={args={1, 2}, base=1},
    shiftwidth={args={0, 1}, base=1},
    sign_define={args={1, 2}, base=1},
    sign_getdefined={args={0, 1}, base=1},
    sign_getplaced={args={0, 2}, base=1},
    sign_jump={args=3, base=1},
    sign_place={args={4, 5}, base=1},
    sign_placelist={args=1, base=1},
    sign_undefine={args={0, 1}, base=1},
    sign_unplace={args={1, 2}, base=1},
    sign_unplacelist={args=1, base=1},
    simplify={args=1, base=1},
    sin={args=1, base=1, func="float_op_wrapper", data="&sin"},
    sinh={args=1, base=1, func="float_op_wrapper", data="&sinh"},
    sockconnect={args={2,3}},
    sort={args={1, 3}, base=1},
    soundfold={args=1, base=1},
    stdioopen={args=1},
    spellbadword={args={0, 1}, base=1},
    spellsuggest={args={1, 3}, base=1},
    split={args={1, 3}, base=1},
    sqrt={args=1, base=1, func="float_op_wrapper", data="&sqrt"},
    srand={args={0, 1}, base=1},
    stdpath={args=1},
    str2float={args=1, base=1},
    str2list={args={1, 2}, base=1},
    str2nr={args={1, 3}, base=1},
    strcharpart={args={2, 3}, base=1},
    strchars={args={1, 2}, base=1},
    strdisplaywidth={args={1, 2}, base=1},
    strftime={args={1, 2}, base=1},
    strgetchar={args=2, base=1},
    stridx={args={2, 3}, base=1},
    string={args=1, base=1},
    strlen={args=1, base=1},
    strpart={args={2, 4}, base=1},
    strptime={args=2, base=1},
    strridx={args={2, 3}, base=1},
    strtrans={args=1, base=1},
    strwidth={args=1, base=1},
    submatch={args={1, 2}, base=1},
    substitute={args=4, base=1},
    swapinfo={args=1, base=1},
    swapname={args=1, base=1},
    synID={args=3},
    synIDattr={args={2, 3}, base=1},
    synIDtrans={args=1, base=1},
    synconcealed={args=2},
    synstack={args=2},
    system={args={1, 2}, base=1},
    systemlist={args={1, 3}, base=1},
    tabpagebuflist={args={0, 1}, base=1},
    tabpagenr={args={0, 1}},
    tabpagewinnr={args={1, 2}, base=1},
    tagfiles={},
    taglist={args={1, 2}, base=1},
    tan={args=1, base=1, func="float_op_wrapper", data="&tan"},
    tanh={args=1, base=1, func="float_op_wrapper", data="&tanh"},
    tempname={},
    termopen={args={1, 2}},
    test_garbagecollect_now={},
    test_write_list_log={args=1},
    timer_info={args={0, 1}, base=1},
    timer_pause={args=2, base=1},
    timer_start={args={2, 3}, base=1},
    timer_stop={args=1, base=1},
    timer_stopall={args=0},
    tolower={args=1, base=1},
    toupper={args=1, base=1},
    tr={args=3, base=1},
    trim={args={1, 3}, base=1},
    trunc={args=1, base=1, func="float_op_wrapper", data="&trunc"},
    type={args=1, base=1},
    undofile={args=1, base=1},
    undotree={},
    uniq={args={1, 3}, base=1},
    values={args=1, base=1},
    virtcol={args=1, base=1},
    visualmode={args={0, 1}},
    wait={args={2,3}},
    wildmenumode={},
    win_execute={args={2, 3}, base=2},
    win_findbuf={args=1, base=1},
    win_getid={args={0, 2}, base=1},
    win_gettype={args={0, 1}, base=1},
    win_gotoid={args=1, base=1},
    win_id2tabwin={args=1, base=1},
    win_id2win={args=1, base=1},
    win_move_separator={args=2, base=1},
    win_move_statusline={args=2, base=1},
    win_screenpos={args=1, base=1},
    win_splitmove={args={2, 3}, base=1},
    winbufnr={args=1, base=1},
    wincol={},
    windowsversion={},
    winheight={args=1, base=1},
    winlayout={args={0, 1}, base=1},
    winline={},
    winnr={args={0, 1}, base=1},
    winrestcmd={},
    winrestview={args=1, base=1},
    winsaveview={},
    winwidth={args=1, base=1},
    wordcount={},
    writefile={args={2, 3}, base=1},
    xor={args=2, base=1},
  },
}
