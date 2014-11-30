.class Lcom/dolphin/browser/DolphinService/Account/e;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/DolphinService/Account/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/e;->c:Lcom/dolphin/browser/DolphinService/Account/b;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/Account/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/e;->c:Lcom/dolphin/browser/DolphinService/Account/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    return-object v0
.end method
