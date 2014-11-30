.class Lcom/dolphin/browser/DolphinService/ui/bp;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Lcom/dolphin/browser/DolphinService/ui/bc;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bp;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 3

    .prologue
    const v2, 0x7f0e038c

    .line 400
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 406
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 409
    :catch_1
    move-exception v0

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :catch_2
    move-exception v0

    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bp;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->e(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    goto :goto_0
.end method
