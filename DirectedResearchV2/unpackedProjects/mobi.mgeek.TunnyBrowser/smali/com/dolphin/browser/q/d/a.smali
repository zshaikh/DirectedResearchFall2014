.class public Lcom/dolphin/browser/q/d/a;
.super Ljava/lang/Object;
.source "AsyncTwitterRunner.java"


# instance fields
.field a:Lcom/dolphin/browser/q/d/k;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/d/k;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dolphin/browser/q/d/a;->a:Lcom/dolphin/browser/q/d/k;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/d/c;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/dolphin/browser/q/d/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/q/d/b;-><init>(Lcom/dolphin/browser/q/d/a;Lcom/dolphin/browser/q/d/c;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/b;->start()V

    .line 84
    return-void
.end method
