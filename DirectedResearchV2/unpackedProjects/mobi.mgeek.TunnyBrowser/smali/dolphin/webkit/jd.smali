.class Ldolphin/webkit/jd;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewClassic;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Message;

.field private e:Z

.field private f:Z

.field private g:Ldolphin/webkit/WebSettingsClassic;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .locals 1

    .prologue
    .line 5720
    iput-object p1, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5721
    iput-object p2, p0, Ldolphin/webkit/jd;->b:Ljava/lang/String;

    .line 5722
    invoke-static {p3}, Ldolphin/webkit/hy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/jd;->c:Ljava/lang/String;

    .line 5723
    iput-object p4, p0, Ldolphin/webkit/jd;->d:Landroid/os/Message;

    .line 5724
    iput-boolean p5, p0, Ldolphin/webkit/jd;->e:Z

    .line 5725
    iput-boolean p6, p0, Ldolphin/webkit/jd;->f:Z

    .line 5726
    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/jd;->g:Ldolphin/webkit/WebSettingsClassic;

    .line 5727
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5733
    iget-boolean v1, p0, Ldolphin/webkit/jd;->e:Z

    if-eqz v1, :cond_0

    .line 5737
    iget-object v1, p0, Ldolphin/webkit/jd;->g:Ldolphin/webkit/WebSettingsClassic;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ldolphin/webkit/jd;->g:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getAutoFillProfile()Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldolphin/webkit/R$string;->autofill_this_form:I

    invoke-static {v2}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->q(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/jn;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/jn;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5742
    iget-object v1, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ldolphin/webkit/d;->a(Z)V

    .line 5752
    :cond_0
    :goto_0
    iget-boolean v1, p0, Ldolphin/webkit/jd;->f:Z

    if-eqz v1, :cond_1

    .line 5753
    iget-object v1, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->r(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kf;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/jd;->c:Ljava/lang/String;

    iget-object v3, p0, Ldolphin/webkit/jd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldolphin/webkit/kf;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5756
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 5757
    iget-object v1, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5759
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 5760
    iget-object v1, p0, Ldolphin/webkit/jd;->d:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5761
    iget-object v0, p0, Ldolphin/webkit/jd;->d:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5763
    :cond_3
    return-void

    .line 5746
    :cond_4
    sget v1, Ldolphin/webkit/R$string;->setup_autofill:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5748
    iget-object v1, p0, Ldolphin/webkit/jd;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldolphin/webkit/d;->a(Z)V

    goto :goto_0
.end method
