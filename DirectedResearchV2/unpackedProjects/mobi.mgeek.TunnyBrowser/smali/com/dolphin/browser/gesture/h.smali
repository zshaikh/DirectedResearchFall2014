.class public abstract Lcom/dolphin/browser/gesture/h;
.super Ljava/lang/Object;
.source "GestureLibrary.java"


# instance fields
.field protected final a:Lcom/dolphin/browser/gesture/s;


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/dolphin/browser/gesture/s;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/gesture/s;-><init>(Z)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/s;->a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/s;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/gesture/s;->a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)V

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/gesture/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public abstract a()Z
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/s;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Z
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/gesture/h;->a:Lcom/dolphin/browser/gesture/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/s;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
