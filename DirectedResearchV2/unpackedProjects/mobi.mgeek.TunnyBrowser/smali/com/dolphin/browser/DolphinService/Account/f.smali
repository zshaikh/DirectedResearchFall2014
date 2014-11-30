.class Lcom/dolphin/browser/DolphinService/Account/f;
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
    .line 302
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/f;->c:Lcom/dolphin/browser/DolphinService/Account/b;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/Account/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/f;->c:Lcom/dolphin/browser/DolphinService/Account/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
