.class Lcom/dolphin/browser/DolphinService/Account/g;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/Account/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/g;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/g;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/g;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/g;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/io/File;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
