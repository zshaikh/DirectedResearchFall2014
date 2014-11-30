.class Lcom/dolphin/browser/account/ui/e;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ax;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/account/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/account/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/dolphin/browser/account/ui/e;->a:Lcom/dolphin/browser/account/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/e;->a:Lcom/dolphin/browser/account/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/account/ui/LoginActivity;->a(Lcom/dolphin/browser/account/ui/LoginActivity;)V

    .line 208
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/e;->a:Lcom/dolphin/browser/account/ui/LoginActivity;

    iget-object v1, p0, Lcom/dolphin/browser/account/ui/e;->a:Lcom/dolphin/browser/account/ui/LoginActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e058f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/account/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/account/ui/LoginActivity;->a(Lcom/dolphin/browser/account/ui/LoginActivity;Ljava/lang/String;)V

    .line 213
    return-void
.end method
