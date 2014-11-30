.class Lcom/dolphin/browser/DolphinService/d;
.super Lcom/dolphin/browser/util/f;
.source "AvatarDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/c;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/d;->a:Lcom/dolphin/browser/DolphinService/c;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/d;->a:Lcom/dolphin/browser/DolphinService/c;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/c;->a(Lcom/dolphin/browser/DolphinService/c;)Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->c(Lcom/dolphin/browser/DolphinService/Account/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/d;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/d;->a:Lcom/dolphin/browser/DolphinService/c;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/c;->b(Lcom/dolphin/browser/DolphinService/c;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
