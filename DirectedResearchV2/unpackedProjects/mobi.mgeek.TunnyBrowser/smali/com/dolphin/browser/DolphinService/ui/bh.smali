.class Lcom/dolphin/browser/DolphinService/ui/bh;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/bg;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/bg;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 3

    .prologue
    const v2, 0x7f0e038c

    .line 167
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;I)V

    .line 174
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 178
    :catch_1
    move-exception v0

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v0, v0, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :catch_2
    move-exception v0

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v0, v0, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bh;->a:Lcom/dolphin/browser/DolphinService/ui/bg;

    iget-object v0, v0, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    goto :goto_0
.end method
