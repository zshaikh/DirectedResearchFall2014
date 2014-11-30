.class Lcom/dolphin/browser/share/tabpush/f;
.super Ljava/lang/Object;
.source "TabPushShareContentActivity.java"

# interfaces
.implements Lcom/dolphin/browser/push/as;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/tabpush/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/tabpush/e;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/f;->a:Lcom/dolphin/browser/share/tabpush/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/dolphin/browser/share/tabpush/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/tabpush/g;-><init>(Lcom/dolphin/browser/share/tabpush/f;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/dolphin/browser/share/tabpush/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/tabpush/h;-><init>(Lcom/dolphin/browser/share/tabpush/f;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/dolphin/browser/share/tabpush/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/tabpush/i;-><init>(Lcom/dolphin/browser/share/tabpush/f;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method
