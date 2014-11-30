.class Lcom/dolphin/browser/share/tabpush/b;
.super Ljava/lang/Object;
.source "TabPushShareContentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/b;->a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/b;->a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->finish()V

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/b;->a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->a(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V

    goto :goto_0
.end method
