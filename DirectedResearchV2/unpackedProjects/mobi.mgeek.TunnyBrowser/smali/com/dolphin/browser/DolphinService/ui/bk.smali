.class Lcom/dolphin/browser/DolphinService/ui/bk;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/ui/e;


# instance fields
.field final synthetic a:[Landroid/accounts/Account;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/b;

.field final synthetic c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;[Landroid/accounts/Account;Lcom/dolphin/browser/DolphinService/b;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->a:[Landroid/accounts/Account;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->b:Lcom/dolphin/browser/DolphinService/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->a:[Landroid/accounts/Account;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->d(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->a:[Landroid/accounts/Account;

    aget-object v0, v0, p1

    .line 354
    new-instance v1, Lcom/dolphin/browser/DolphinService/h;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->b:Lcom/dolphin/browser/DolphinService/b;

    invoke-direct {v1, v0, v2}, Lcom/dolphin/browser/DolphinService/h;-><init>(Landroid/accounts/Account;Lcom/dolphin/browser/DolphinService/b;)V

    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bk;->c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/h;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
