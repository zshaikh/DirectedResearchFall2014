.class Lcom/dolphin/browser/push/e;
.super Ljava/lang/Object;
.source "DefaultPushDataProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/data/h;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/push/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/d;Lcom/dolphin/browser/push/data/h;Z)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/push/e;->c:Lcom/dolphin/browser/push/d;

    iput-object p2, p0, Lcom/dolphin/browser/push/e;->a:Lcom/dolphin/browser/push/data/h;

    iput-boolean p3, p0, Lcom/dolphin/browser/push/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/push/e;->c:Lcom/dolphin/browser/push/d;

    iget-object v1, p0, Lcom/dolphin/browser/push/e;->a:Lcom/dolphin/browser/push/data/h;

    iget-boolean v2, p0, Lcom/dolphin/browser/push/e;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/push/d;->a(Lcom/dolphin/browser/push/data/h;Z)Z

    .line 70
    return-void
.end method
