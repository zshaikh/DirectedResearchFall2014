.class Lcom/dolphin/browser/pagedrop/a/b;
.super Ljava/lang/Object;
.source "PageDropChatListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/a/a;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/a/b;->a:Lcom/dolphin/browser/pagedrop/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/b;->a:Lcom/dolphin/browser/pagedrop/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/a/a;->notifyDataSetChanged()V

    .line 303
    return-void
.end method
