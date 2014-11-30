.class public Lcom/dolphin/browser/m/e;
.super Lcom/dolphin/browser/m/a;
.source "PromotedAppPopup.java"


# static fields
.field private static e:Lcom/dolphin/browser/m/e;


# instance fields
.field private a:Lcom/dolphin/browser/promoted/f;

.field private b:Lcom/dolphin/browser/m/c;

.field private c:Lcom/dolphin/browser/m/a/d;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/m/a;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/m/e;->d:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/dolphin/browser/m/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dolphin/browser/m/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/m/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/m/e;->b:Lcom/dolphin/browser/m/c;

    .line 46
    invoke-static {}, Lcom/dolphin/browser/promoted/f;->a()Lcom/dolphin/browser/promoted/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/e;->a:Lcom/dolphin/browser/promoted/f;

    .line 47
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/dolphin/browser/m/e;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/m/e;->e:Lcom/dolphin/browser/m/e;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/m/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/m/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/m/e;->e:Lcom/dolphin/browser/m/e;

    .line 40
    :cond_0
    sget-object v0, Lcom/dolphin/browser/m/e;->e:Lcom/dolphin/browser/m/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "promoted_app"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "promotion dialog"

    const-string v1, "promoteapp_dialog"

    const-string v2, "showdialog"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->a:Lcom/dolphin/browser/promoted/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->g()Ljava/lang/String;

    move-result-object v4

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->a:Lcom/dolphin/browser/promoted/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->h()Ljava/lang/String;

    move-result-object v5

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->a:Lcom/dolphin/browser/promoted/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->i()Ljava/lang/String;

    move-result-object v6

    .line 83
    new-instance v0, Lcom/dolphin/browser/m/a/d;

    new-instance v3, Lcom/dolphin/browser/m/a/f;

    invoke-direct {v3, p1}, Lcom/dolphin/browser/m/a/f;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/m/a/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/m/a;Lcom/dolphin/browser/m/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/m/e;->c:Lcom/dolphin/browser/m/a/d;

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->c:Lcom/dolphin/browser/m/a/d;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->b(Ljava/lang/String;)V

    .line 87
    const-string v0, "PromotedAppPopup"

    const-string v1, "showPopup"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/high16 v3, 0x10000000

    const/4 v4, 0x1

    .line 92
    check-cast p1, Lcom/dolphin/browser/promoted/e;

    .line 93
    const-string v0, "promotion dialog"

    const-string v1, "promoteapp_dialog"

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v0, "new_tab"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/m/c;->a(Z)V

    .line 113
    return-void

    .line 104
    :cond_1
    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/m/e;->d:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/m/c;->a(Z)V

    .line 70
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/dolphin/browser/m/e;->d()V

    .line 130
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/m/e;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/dolphin/browser/promoted/f;->a()Lcom/dolphin/browser/promoted/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->e()Ljava/util/List;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->c:Lcom/dolphin/browser/m/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/m/e;->c:Lcom/dolphin/browser/m/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/m/e;->c:Lcom/dolphin/browser/m/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/a/d;->a()V

    .line 125
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
