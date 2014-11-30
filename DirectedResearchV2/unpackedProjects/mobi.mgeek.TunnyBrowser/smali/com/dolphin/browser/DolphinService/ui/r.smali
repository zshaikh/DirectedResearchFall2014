.class Lcom/dolphin/browser/DolphinService/ui/r;
.super Ljava/lang/Object;
.source "CloudDataManageActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/r;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/r;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    .line 226
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/r;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/DolphinService/WebService/f;

    .line 231
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/r;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->d(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/r;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->e(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    goto :goto_0
.end method
