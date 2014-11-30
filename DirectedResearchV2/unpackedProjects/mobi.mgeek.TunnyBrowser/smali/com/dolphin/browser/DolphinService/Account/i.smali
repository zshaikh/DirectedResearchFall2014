.class Lcom/dolphin/browser/DolphinService/Account/i;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/Account/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/Account/b;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/i;->a:Lcom/dolphin/browser/DolphinService/Account/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 366
    const-string v0, "AccountManager"

    const-string v1, "upgradeOldAccountInfo failed, logout account"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/i;->a:Lcom/dolphin/browser/DolphinService/Account/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 369
    :cond_0
    return-void
.end method
