.class final Lcom/dolphin/browser/util/af;
.super Ljava/lang/Object;
.source "BelugaTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dolphin/browser/util/af;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/util/af;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/ae;->a(Lcom/dolphin/browser/util/ae;Landroid/content/Context;)V

    .line 179
    return-void
.end method
