.class Ldolphin/webkit/gs;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/gr;


# direct methods
.method constructor <init>(Ldolphin/webkit/gr;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 52
    sget v1, Ldolphin/webkit/R$id;->btnDone:I

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-virtual {v0}, Ldolphin/webkit/gr;->a()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget v1, Ldolphin/webkit/R$id;->btnCopy:I

    if-ne v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v0}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->copySelection()Z

    .line 56
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-virtual {v0}, Ldolphin/webkit/gr;->a()V

    goto :goto_0

    .line 57
    :cond_2
    sget v1, Ldolphin/webkit/R$id;->btnShare:I

    if-ne v0, v1, :cond_3

    .line 58
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v0}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Q()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v1}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-virtual {v0}, Ldolphin/webkit/gr;->a()V

    goto :goto_0

    .line 61
    :cond_3
    sget v1, Ldolphin/webkit/R$id;->btnSelectAll:I

    if-ne v0, v1, :cond_4

    .line 62
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v0}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->M()V

    goto :goto_0

    .line 63
    :cond_4
    sget v1, Ldolphin/webkit/R$id;->btnWebSearch:I

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-virtual {v0}, Ldolphin/webkit/gr;->a()V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "new_search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v1, "query"

    iget-object v2, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v2}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v1}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 69
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    :cond_5
    iget-object v1, p0, Ldolphin/webkit/gs;->a:Ldolphin/webkit/gr;

    invoke-static {v1}, Ldolphin/webkit/gr;->a(Ldolphin/webkit/gr;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
