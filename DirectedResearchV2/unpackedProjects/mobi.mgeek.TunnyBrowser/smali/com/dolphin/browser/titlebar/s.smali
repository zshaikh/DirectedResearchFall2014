.class Lcom/dolphin/browser/titlebar/s;
.super Ljava/lang/Object;
.source "TitleBarManager.java"

# interfaces
.implements Lcom/dolphin/browser/titlebar/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/q;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/q;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/s;->a:Lcom/dolphin/browser/titlebar/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/s;->a:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->b()V

    .line 107
    return-void
.end method
