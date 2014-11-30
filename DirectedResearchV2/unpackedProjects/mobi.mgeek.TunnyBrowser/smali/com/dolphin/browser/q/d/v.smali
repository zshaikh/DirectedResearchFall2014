.class Lcom/dolphin/browser/q/d/v;
.super Lcom/dolphin/browser/util/f;
.source "TwitterAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/s;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/d/s;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/dolphin/browser/q/d/v;->a:Lcom/dolphin/browser/q/d/s;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/d/s;Lcom/dolphin/browser/q/d/t;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/v;-><init>(Lcom/dolphin/browser/q/d/s;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/q/d/v;->a:Lcom/dolphin/browser/q/d/s;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/s;->b(Lcom/dolphin/browser/q/d/s;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/d/v;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/q/d/v;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0, p1}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;Landroid/os/Bundle;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/v;->a:Lcom/dolphin/browser/q/d/s;

    new-instance v1, Lcom/dolphin/browser/q/d/y;

    const-string v2, "Login Failed"

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/d/v;->a(Landroid/os/Bundle;)V

    return-void
.end method
