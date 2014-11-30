.class Lcom/dolphin/browser/push/j;
.super Ljava/lang/Object;
.source "LogoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/i;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/push/j;->a:Lcom/dolphin/browser/push/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/push/j;->a:Lcom/dolphin/browser/push/i;

    invoke-static {v0}, Lcom/dolphin/browser/push/i;->a(Lcom/dolphin/browser/push/i;)V

    .line 129
    return-void
.end method
