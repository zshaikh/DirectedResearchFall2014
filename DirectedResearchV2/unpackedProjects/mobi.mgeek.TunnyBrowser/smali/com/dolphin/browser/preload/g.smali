.class Lcom/dolphin/browser/preload/g;
.super Ljava/lang/Object;
.source "DataConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/a/c;

.field final synthetic b:Lcom/dolphin/browser/preload/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/preload/f;Lcom/dolphin/browser/preload/a/c;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/dolphin/browser/preload/g;->b:Lcom/dolphin/browser/preload/f;

    iput-object p2, p0, Lcom/dolphin/browser/preload/g;->a:Lcom/dolphin/browser/preload/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/preload/g;->b:Lcom/dolphin/browser/preload/f;

    iget-object v1, p0, Lcom/dolphin/browser/preload/g;->a:Lcom/dolphin/browser/preload/a/c;

    invoke-static {v0, v1}, Lcom/dolphin/browser/preload/f;->a(Lcom/dolphin/browser/preload/f;Lcom/dolphin/browser/preload/a/c;)V

    .line 336
    return-void
.end method
