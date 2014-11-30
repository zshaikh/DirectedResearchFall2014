.class Lcom/dolphin/browser/DolphinService/ui/ao;
.super Ljava/lang/Object;
.source "DolphinConnectActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 316
    const-string v0, "DBS Login"

    const-string v1, "dolphin Account"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 323
    const-string v0, "DBS Login"

    const-string v1, "dolphin Account"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 5

    .prologue
    const v4, 0x7f0e038c

    const/4 v3, 0x1

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->c(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->d(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    .line 290
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 295
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/f;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 297
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ao;->a(I)V

    .line 312
    :goto_0
    return-void

    .line 300
    :catch_1
    move-exception v0

    .line 301
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 302
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ao;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 304
    :catch_2
    move-exception v0

    .line 305
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 306
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/ao;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ao;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->e(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V

    goto :goto_0
.end method
