.class Lcom/dolphin/browser/DolphinService/ui/av;
.super Ljava/lang/Object;
.source "DolphinSignUpActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 4

    .prologue
    const v3, 0x7f0e038c

    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->c(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    .line 293
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 295
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 298
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->d(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    .line 316
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 309
    :catch_2
    move-exception v0

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/av;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->e(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V

    goto :goto_0
.end method
