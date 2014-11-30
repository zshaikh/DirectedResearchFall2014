.class Lcom/dolphin/browser/DolphinService/Account/k;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/dolphin/browser/DolphinService/Account/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/k;->e:Lcom/dolphin/browser/DolphinService/Account/b;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/Account/k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/DolphinService/Account/k;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/DolphinService/Account/k;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/k;->e:Lcom/dolphin/browser/DolphinService/Account/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/k;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/Account/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    return-object v0
.end method
