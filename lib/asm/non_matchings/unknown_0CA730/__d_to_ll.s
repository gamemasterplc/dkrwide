glabel __d_to_ll
/* 0CA730 800C9B30 46206109 */  trunc.l.d $f4, $f12
/* 0CA734 800C9B34 44222000 */  dmfc1 $v0, $f4
/* 0CA738 800C9B38 00000000 */  nop   
/* 0CA73C 800C9B3C 0002183C */  dsll32 $v1, $v0, 0
/* 0CA740 800C9B40 0003183F */  dsra32 $v1, $v1, 0
/* 0CA744 800C9B44 03E00008 */  jr    $ra
/* 0CA748 800C9B48 0002103F */   dsra32 $v0, $v0, 0
