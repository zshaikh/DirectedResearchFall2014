.class public abstract Lcom/dolphin/browser/share/b;
.super Ljava/lang/Object;
.source "EventListenerChain.java"

# interfaces
.implements Lcom/dolphin/browser/share/g;


# instance fields
.field protected a:Lcom/dolphin/browser/share/g;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/share/g;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/dolphin/browser/share/b;->a:Lcom/dolphin/browser/share/g;

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dolphin/browser/share/b;->a:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/dolphin/browser/share/b;->a:Lcom/dolphin/browser/share/g;

    invoke-interface {v0}, Lcom/dolphin/browser/share/g;->a()V

    .line 16
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/share/b;->a:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/share/b;->a:Lcom/dolphin/browser/share/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Throwable;)V

    .line 23
    :cond_0
    return-void
.end method
