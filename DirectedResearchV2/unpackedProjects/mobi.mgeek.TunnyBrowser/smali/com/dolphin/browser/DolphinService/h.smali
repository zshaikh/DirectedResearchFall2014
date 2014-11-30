.class public Lcom/dolphin/browser/DolphinService/h;
.super Lcom/dolphin/browser/DolphinService/a;
.source "GoogleAccountTokenRequester.java"


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/dolphin/browser/DolphinService/b;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/DolphinService/a;-><init>(Landroid/accounts/Account;Lcom/dolphin/browser/DolphinService/b;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "oauth2:profile email"

    return-object v0
.end method
