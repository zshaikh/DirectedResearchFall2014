.class Lcom/dolphin/browser/DolphinService/ui/cm;
.super Ljava/lang/Object;
.source "PasswordResetActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cm;->a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cm;->a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->b(Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;)V

    .line 133
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 135
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cm;->a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01f4

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cm;->a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e038c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :catch_2
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cm;->a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e041a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cm;->a:Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/PasswordResetActivity;->finish()V

    goto :goto_0
.end method
