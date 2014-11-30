.class Lcom/dolphin/browser/DolphinService/ui/bl;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bl;->c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/bl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/ui/bl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 382
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bl;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/bl;->b:Ljava/lang/String;

    const-string v3, "US"

    const-string v4, "121"

    new-instance v5, Lcom/dolphin/browser/DolphinService/ui/bp;

    iget-object v6, p0, Lcom/dolphin/browser/DolphinService/ui/bl;->c:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/dolphin/browser/DolphinService/ui/bp;-><init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Lcom/dolphin/browser/DolphinService/ui/bc;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 384
    return-void
.end method
