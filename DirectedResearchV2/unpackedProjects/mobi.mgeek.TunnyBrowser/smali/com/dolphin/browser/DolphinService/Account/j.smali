.class Lcom/dolphin/browser/DolphinService/Account/j;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/Account/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/j;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/j;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->d(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method
