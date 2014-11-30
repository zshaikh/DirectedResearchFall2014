.class Lcom/dolphin/browser/DolphinService/ui/j;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 4

    .prologue
    const v3, 0x7f0e038c

    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V

    .line 195
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 197
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 200
    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->b(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V

    .line 221
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :catch_2
    move-exception v0

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->c(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V

    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/j;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->finish()V

    goto :goto_0
.end method
