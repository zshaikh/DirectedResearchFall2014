.class public final Lcom/dolphin/browser/util/bu;
.super Ljava/lang/Object;
.source "NightModeHelpUtil.java"


# static fields
.field public static final a:I

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lcom/dolphin/browser/util/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x60

    .line 18
    const-string v0, "javascript:(function (){if(window.dolphin_enable_night_mode) {window.dolphin_enable_night_mode(true); return;};if(document.getElementById(\'dolphin_night_mode_style\'))return;document.getElementsByTagName(\'html\')[0].setAttribute(\'mode\',\'nightmode\');css=document.createElement(\'link\');css.id=\'dolphin_night_mode_style\';css.rel=\'stylesheet\';css.href=\'data:text/css,*,:before,:after,html[mode=nightmode] *{color:#61615f!important;-webkit-border-image:none!important;border-image:none!important;background:none!important;background-image:none!important;box-shadow:none!important;text-shadow:none!important;border-color:#212a32!important}html[mode=nightmode] body{background-color:#0e1114!important}html[mode=nightmode] a,html[mode=nightmode] a *{text-decoration:none!important;color:#2c4261!important}html[mode=nightmode] a:hover,html[mode=nightmode] a:hover *{color:#2c4261!important;background:#1b1e23!important}html[mode=nightmode] a:visited,html[mode=nightmode] a:visited *,html[mode=nightmode] a:active,html[mode=nightmode] a:active *{color:#551b59!important}html[mode=nightmode] select,html[mode=nightmode] option,html[mode=nightmode] textarea,html[mode=nightmode] button{color:#aaa!important;border:1px solid #212a32!important;background:#0e1114!important;border-color:#212a32!important;border-style:solid}html[mode=nightmode] select:hover,html[mode=nightmode] option:hover,html[mode=nightmode] button:hover,html[mode=nightmode] textarea:hover,html[mode=nightmode] select:focus,html[mode=nightmode] option:focus,html[mode=nightmode] button:focus,html[mode=nightmode] textarea:focus{color:#bbb!important;background:#0e1114!important;border-color:#777 #999 #999 #777 !important}html[mode=nightmode] input,html[mode=nightmode] input[type=text],html[mode=nightmode] input[type=search],html[mode=nightmode] input[type=password]{color:#61615f!important;background-color:#0e1114!important;box-shadow:1px 0 4px rgba(16,18,23,.75) inset,0 1px 4px rgba(16,18,23,.75) inset!important;border-color:#1a1c27!important;border-style:solid!important}html[mode=nightmode] input:focus,html[mode=nightmode] input[type=text]:focus,html[mode=nightmode] input[type=search]:focus,html[mode=nightmode] input[type=password]:focus{color:#bbb!important;outline:none!important;background:#0e1114!important;border-color:#1a3973}html[mode=nightmode] input:hover,html[mode=nightmode] select:hover,html[mode=nightmode] option:hover,html[mode=nightmode] button:hover,html[mode=nightmode] textarea:hover,html[mode=nightmode] input:focus,html[mode=nightmode] select:focus,html[mode=nightmode] option:focus,html[mode=nightmode] button:focus,html[mode=nightmode] textarea:focus{color:#bbb!important;background:#093681!important;opacity:0.4!important;border-color:#777 #999 #999 #777 !important}html[mode=nightmode] input[type=button],html[mode=nightmode] input[type=submit],html[mode=nightmode] input[type=reset],html[mode=nightmode] input[type=image]{color:#61615f!important;border-color:#888 #666 #666 #888 !important}html[mode=nightmode] input[type=button],html[mode=nightmode] input[type=submit],html[mode=nightmode] input[type=reset]{border:1px solid #212a32!important;background-image:0 color-stop(1,#181a23))!important}html[mode=nightmode] input[type=button]:hover,html[mode=nightmode] input[type=submit]:hover,html[mode=nightmode] input[type=reset]:hover,html[mode=nightmode] input[type=image]:hover{border-color:#777 #999 #999 #777 !important}html[mode=nightmode] input[type=button]:hover,html[mode=nightmode] input[type=submit]:hover,html[mode=nightmode] input[type=reset]:hover{border:1px solid #666!important;background-image:0 color-stop(1,#262939))!important}html[mode=nightmode] img,html[mode=nightmode] svg{opacity:.5!important;border-color:#111!important}html[mode=nightmode] ::-webkit-input-placeholder{color:#61615f!important}\';document.getElementsByTagName(\'head\')[0].appendChild(css);})();"

    sput-object v0, Lcom/dolphin/browser/util/bu;->b:Ljava/lang/String;

    .line 29
    const-string v0, "javascript:(function (){if(window.dolphin_enable_night_mode){window.dolphin_enable_night_mode(false); return;};var css=document.getElementById(\'dolphin_night_mode_style\');if(css){css.parentNode.removeChild(css);}})();"

    sput-object v0, Lcom/dolphin/browser/util/bu;->c:Ljava/lang/String;

    .line 35
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/dolphin/browser/util/bu;->a:I

    .line 36
    return-void
.end method

.method public static a(Lcom/dolphin/browser/util/bv;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/dolphin/browser/util/bu;->d:Lcom/dolphin/browser/util/bv;

    .line 50
    return-void
.end method
