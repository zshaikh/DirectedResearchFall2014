.class Lcom/dolphin/browser/feedback/l;
.super Ljava/lang/Object;
.source "SendCriticalBugsActivity.java"

# interfaces
.implements Lcom/dolphin/browser/feedback/c;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/dolphin/browser/feedback/l;->b:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    iput-object p2, p0, Lcom/dolphin/browser/feedback/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/feedback/l;->b:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Z)V

    .line 209
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 190
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/feedback/g;->a()Lcom/dolphin/browser/feedback/g;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/dolphin/browser/feedback/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/feedback/l;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0567

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/feedback/l;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/feedback/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/feedback/l;->b:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Z)V

    .line 204
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
