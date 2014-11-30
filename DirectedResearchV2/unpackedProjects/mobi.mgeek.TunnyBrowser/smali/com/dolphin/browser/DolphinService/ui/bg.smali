.class Lcom/dolphin/browser/DolphinService/ui/bg;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Lcom/dolphin/browser/q/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/q/c/b;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/bg;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Lcom/dolphin/browser/q/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/q/c/b;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    const-string v4, "121"

    new-instance v5, Lcom/dolphin/browser/DolphinService/ui/bh;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/DolphinService/ui/bh;-><init>(Lcom/dolphin/browser/DolphinService/ui/bg;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 194
    return-void
.end method
