.class Lcom/dolphin/browser/DolphinService/ui/s;
.super Ljava/lang/Object;
.source "CloudDataManageActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/s;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    .line 251
    const/4 v0, 0x0

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->g(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method
