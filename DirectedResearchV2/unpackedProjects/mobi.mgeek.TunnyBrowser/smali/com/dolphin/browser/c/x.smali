.class Lcom/dolphin/browser/c/x;
.super Ljava/lang/Object;
.source "TabForwardCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/c/w;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/c/w;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/c/x;->a:Lcom/dolphin/browser/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->i()V

    .line 39
    return-void
.end method
