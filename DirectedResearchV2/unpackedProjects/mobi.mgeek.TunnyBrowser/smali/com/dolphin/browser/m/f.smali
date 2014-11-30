.class public Lcom/dolphin/browser/m/f;
.super Lcom/dolphin/browser/m/a;
.source "RatingPopup.java"


# static fields
.field private static d:Lcom/dolphin/browser/m/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/m/c;

.field private c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/m/a;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/m/f;->a:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/dolphin/browser/m/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dolphin/browser/m/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/m/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/m/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/m/f;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/dolphin/browser/m/f;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/dolphin/browser/m/f;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/dolphin/browser/m/f;->d:Lcom/dolphin/browser/m/f;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/dolphin/browser/m/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/m/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/m/f;->d:Lcom/dolphin/browser/m/f;

    .line 48
    :cond_0
    sget-object v0, Lcom/dolphin/browser/m/f;->d:Lcom/dolphin/browser/m/f;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->h()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-static {p1, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0507

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "rating"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "promotion dialog"

    const-string v1, "rate_dialog"

    const-string v2, "showdialog"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0509

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0508

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0506

    new-instance v2, Lcom/dolphin/browser/m/i;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/m/i;-><init>(Lcom/dolphin/browser/m/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03b4

    new-instance v2, Lcom/dolphin/browser/m/h;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/m/h;-><init>(Lcom/dolphin/browser/m/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0505

    new-instance v2, Lcom/dolphin/browser/m/g;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/m/g;-><init>(Lcom/dolphin/browser/m/f;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/f;->c:Landroid/app/AlertDialog;

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->c:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->b(Ljava/lang/String;)V

    .line 158
    const-string v0, "RatingPopup"

    const-string v1, "showPopup"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    const-string v0, "promotion dialog"

    const-string v1, "rate_dialog"

    const-string v2, "ok"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/m/f;->e(Landroid/content/Context;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/f;->a(Z)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "promotion dialog"

    const-string v1, "rate_dialog"

    const-string v2, "later"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/dolphin/browser/m/f;->e()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/m/c;->a(Z)V

    .line 87
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/m/c;->a(J)V

    .line 198
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v1, "updateCleanRatingConfirm"

    invoke-virtual {v0, v1, v3}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->a(I)V

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/m/c;->a(Z)V

    .line 203
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/m/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/m/c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/m/c;->c()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v3}, Lcom/dolphin/browser/m/c;->e()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/m/f;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/m/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->h()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/m/c;->a(J)V

    .line 64
    return-void
.end method

.method protected d(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 162
    invoke-static {}, Lcom/dolphin/browser/feedback/g;->a()Lcom/dolphin/browser/feedback/g;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/feedback/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->f()V

    .line 91
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v1, "updateCleanRatingConfirm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "RatingPopup"

    const-string v1, "Prevent reminding until next update."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/m/f;->b:Lcom/dolphin/browser/m/c;

    const-wide v1, 0x7ffffffffad9a3ffL

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/m/c;->a(J)V

    .line 96
    :cond_0
    return-void
.end method
