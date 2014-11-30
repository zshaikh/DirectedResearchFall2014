.class Lcom/dolphin/browser/c/v;
.super Ljava/lang/Object;
.source "TabBackCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/c/u;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/c/u;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/c/v;->a:Lcom/dolphin/browser/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->i()V

    .line 44
    return-void
.end method
