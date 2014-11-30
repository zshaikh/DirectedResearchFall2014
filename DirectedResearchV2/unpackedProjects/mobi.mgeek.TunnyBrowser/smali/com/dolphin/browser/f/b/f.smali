.class Lcom/dolphin/browser/f/b/f;
.super Lcom/dolphin/browser/util/f;
.source "NotificationsManager.java"


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
.field final synthetic a:Lcom/dolphin/browser/f/b/d;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/f/b/d;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/f/b/f;->a:Lcom/dolphin/browser/f/b/d;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/f/b/d;Lcom/dolphin/browser/f/b/e;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/f/b/f;-><init>(Lcom/dolphin/browser/f/b/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/f/b/f;->a:Lcom/dolphin/browser/f/b/d;

    invoke-static {v0}, Lcom/dolphin/browser/f/b/d;->a(Lcom/dolphin/browser/f/b/d;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/b/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/f/b/f;->a:Lcom/dolphin/browser/f/b/d;

    invoke-static {v0}, Lcom/dolphin/browser/f/b/d;->b(Lcom/dolphin/browser/f/b/d;)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/f/b/f;->a:Lcom/dolphin/browser/f/b/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/d;->notifyObservers()V

    .line 66
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/b/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
