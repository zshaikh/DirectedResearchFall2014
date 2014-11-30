.class Lcom/dolphin/browser/DolphinService/Account/c;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/dolphin/browser/DolphinService/Account/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/c;->e:Lcom/dolphin/browser/DolphinService/Account/b;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/Account/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/DolphinService/Account/c;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/dolphin/browser/DolphinService/Account/c;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/c;->e:Lcom/dolphin/browser/DolphinService/Account/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/c;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dolphin/browser/DolphinService/Account/c;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method
