.class abstract Lcom/dolphin/browser/push/ar;
.super Ljava/lang/Object;
.source "PushProcessor.java"

# interfaces
.implements Lorg/b/a/a/e;


# instance fields
.field final synthetic b:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/dolphin/browser/push/ar;->b:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    .locals 5

    .prologue
    .line 307
    const-string v0, "PushProcessor"

    const-string v1, "%s: onMessage(..., %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/b/a/a/c;->a()Lorg/b/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lorg/b/a/c;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 308
    return-void
.end method
