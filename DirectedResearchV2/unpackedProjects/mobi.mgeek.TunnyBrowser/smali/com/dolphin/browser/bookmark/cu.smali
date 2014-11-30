.class Lcom/dolphin/browser/bookmark/cu;
.super Ljava/lang/Object;
.source "TabSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/ct;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/ct;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cu;->a:Lcom/dolphin/browser/bookmark/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cu;->a:Lcom/dolphin/browser/bookmark/ct;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    .line 313
    return-void
.end method
