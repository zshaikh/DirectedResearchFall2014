.class public Lcom/dolphin/browser/q/d/g;
.super Ljava/lang/Object;
.source "SessionEvents.java"


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/dolphin/browser/q/d/h;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/dolphin/browser/q/d/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/d/g;->a:Ljava/util/LinkedList;

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/d/g;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/q/d/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/d/h;

    .line 28
    invoke-interface {v0}, Lcom/dolphin/browser/q/d/h;->a()V

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static a(Lcom/dolphin/browser/q/d/h;)V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/dolphin/browser/q/d/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public static a(Lcom/dolphin/browser/q/d/i;)V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dolphin/browser/q/d/g;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/q/d/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/d/h;

    .line 34
    invoke-interface {v0, p0}, Lcom/dolphin/browser/q/d/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/dolphin/browser/q/d/g;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/d/i;

    .line 40
    invoke-interface {v0}, Lcom/dolphin/browser/q/d/i;->b()V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/dolphin/browser/q/d/g;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/d/i;

    .line 46
    invoke-interface {v0}, Lcom/dolphin/browser/q/d/i;->c()V

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
